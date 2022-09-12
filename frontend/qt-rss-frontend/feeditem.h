#ifndef FEEDITEM_H
#define FEEDITEM_H

#include <QString>
#include <QDateTime>

class FeedItem
{
public:
    FeedItem();
    FeedItem(QString Id, QString Url, QString Content, QDateTime Date);
    QString toString();

    QString getContent() { return Content; }
    QDateTime getDate() { return Date; }
    QString getLink();

private:
    QString Id, Url, Content;
    QDateTime Date;
};

#endif // FEEDITEM_H
