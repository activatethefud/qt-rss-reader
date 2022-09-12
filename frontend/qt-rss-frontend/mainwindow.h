#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QString>
#include <QModelIndex>
#include <QTimer>
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

    void error(const QString &errorMessage);

private:
    QString mNewFeed;
    RSSHelper rssHelper;
    QString mSelectedRssFeed = "";

public slots:
    void test();
    void newFeedPopup();
    void sendNewRssUrl();
    void setNewFeed(const QString &url);
    void populateModels();
    void populateFeedView();
    void openFeedIteminBrowser(const QModelIndex &index);

private:
    Ui::MainWindow *ui;
};
#endif // MAINWINDOW_H
