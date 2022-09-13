#include "rsshelper.h"

#include <QDateTime>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>
#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkReply>
#include <QtNetwork/QNetworkRequest>
#include <iostream>

RSSHelper::RSSHelper()
{
    loadRssFeeds();
}

void
RSSHelper::resetCollector()
{
    QNetworkReply *resp = get(resetEndpoint, {});

    connect(resp, &QNetworkReply::finished, [this]() { loadRssFeeds(); });
}

void
RSSHelper::loadRssFeed(const QString &feedUrl)
{
    feedItems = {};
    QNetworkReply *resp = get(feedEndpoint, {{"url", feedUrl}});

    connect(resp, &QNetworkReply::finished, [resp, this]() {
        QJsonDocument jsonDoc = QJsonDocument::fromJson(resp->readAll());
        QJsonArray jsonArray = jsonDoc.array();

        for (int i = 0; i < jsonArray.size(); ++i) {
            QJsonValue val = jsonArray.at(i);

            feedItems.push_back(new FeedItem(val["Id"].toString(), val["Url"].toString(), val["Content"].toString(),
                QDateTime::fromTime_t(val["Date"].toString().toUInt())));
        }

        emit loadedRssFeed();
    });
}

void
RSSHelper::loadRssFeeds()
{
    response = get(allFeedsEndpoint, {});
    connect(response, SIGNAL(finished()), this, SLOT(setRssFeeds()));
}

void
RSSHelper::setRssFeeds()
{
    QJsonDocument jsonDoc = QJsonDocument::fromJson(response->readAll());
    QJsonArray respJsonArray = jsonDoc.array();

    rssFeeds = {};

    for (int i = 0; i < respJsonArray.size(); ++i) {
        QJsonValue val = respJsonArray.at(i);
        rssFeeds.push_back(val.toString());
    }

    for (QString &feed : rssFeeds) { std::cout << feed.toStdString() << std::endl; }

    emit loadedRssFeeds();
}
