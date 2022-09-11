#include "rsshelper.h"

#include <QtNetwork/QNetworkRequest>
#include <QtNetwork/QNetworkReply>
#include <QObject>
#include <QJsonArray>
#include <QJsonDocument>
#include <iostream>

RSSHelper::RSSHelper()
{
    loadRssFeeds();
}

void RSSHelper::loadRssFeeds()
{
    response = get(allFeedsEndpoint, {});
    connect(response, SIGNAL(finished()), this, SLOT(setRssFeeds()));
}

void RSSHelper::setRssFeeds()
{
    QJsonDocument jsonDoc = QJsonDocument::fromJson(response->readAll());
    QJsonArray respJsonArray = jsonDoc.array();

    rssFeeds = {};

    for(int i=0;i<respJsonArray.size(); ++i) {
        QJsonValue val = respJsonArray.at(i);
        rssFeeds.push_back(val.toString());
    }

    emit loadedRssFeeds();

    for(QString &feed : rssFeeds) {
        std::cout << feed.toStdString() << std::endl;
    }

}
