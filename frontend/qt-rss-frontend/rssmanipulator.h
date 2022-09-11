#ifndef RSSMANIPULATOR_H
#define RSSMANIPULATOR_H

#include <QObject>

class RSSManipulator : public QObject
{
    Q_OBJECT
public:
    RSSManipulator();
public slots:
    static void Test();
};

#endif // RSSMANIPULATOR_H
