#ifndef RSSHELPER_H
#define RSSHELPER_H

#include <QVector>
#include <QString>
#include <QObject>
#include <QMap>
#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkReply>
#include <QUrlQuery>
#include <QMapIterator>

class RSSHelper : public QObject
{
    Q_OBJECT
private:
    QNetworkReply *response;
    QNetworkAccessManager networkManager;
public:
    const QString apiUrl = "http://localhost:5000";
    const QString allFeedsEndpoint = apiUrl + "/all_feeds";
    const QString addFeedEndpoint = apiUrl + "/new_feed?";
    RSSHelper();
    QVector<QString> rssFeeds;

    QNetworkReply* get(const QString &url, const QMap<QString,QString> &params)
    {
        QUrlQuery urlWithParams(url);
        QMapIterator<QString, QString> it(params);

        while(it.hasNext()) {
            it.next();
            urlWithParams.addQueryItem(it.key(), it.value());
        }

        QNetworkRequest request(urlWithParams.toString());
        QNetworkReply *reply = networkManager.get(request);
        return reply;
    }

    void loadRssFeeds();

public slots:
    void setRssFeeds();

signals:
    void loadedRssFeeds();
};

#endif // RSSHELPER_H
