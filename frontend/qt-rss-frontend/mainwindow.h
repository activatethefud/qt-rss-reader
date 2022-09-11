#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QString>
#include "rsshelper.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
private:
    QString mNewFeed;
    RSSHelper rssHelper;

public slots:
    void test();
    void newFeedPopup();
    void sendNewRssUrl();
    void setNewFeed(const QString &url);

private:
    Ui::MainWindow *ui;
};
#endif // MAINWINDOW_H
