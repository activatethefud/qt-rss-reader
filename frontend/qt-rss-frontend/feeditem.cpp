#include "feeditem.h"

#include <QString>
#include <QDomDocument>
#include <QDomNodeList>

FeedItem::FeedItem()
{
}

QString FeedItem::getLink()
{
     QString itemContent = Content;
     QDomDocument itemDom;
     itemDom.setContent(itemContent);

     QDomNodeList links = itemDom.elementsByTagName("link");
     QString link = links.at(0).toElement().text();

     return link;
}

FeedItem::FeedItem(QString Id, QString Url, QString Content, QDateTime Date)
    : Id(Id), Url(Url), Content(Content), Date(Date)
{
}

QString FeedItem::toString()
{
    return Id + ", " + Url + ", " + Content.mid(0,200) + ", " + Date.toString();
}
