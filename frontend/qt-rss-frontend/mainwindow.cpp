#include "mainwindow.h"
#include "./ui_mainwindow.h"
#include "feeditem.h"

#include <iostream>

#include <QObject>
#include <QPushButton>
#include <QAbstractButton>
#include <QWidget>
#include <QLabel>
#include <QVBoxLayout>
#include <QLineEdit>
#include <QString>
#include <QStringListModel>
#include <QStringList>
#include <QJsonValue>
#include <QComboBox>
#include <QStandardItemModel>
#include <QStandardItem>
#include <QDomDocument>
#include <QDomNodeList>
#include <QDomElement>
#include <QList>
#include <QHeaderView>
#include <QTreeView>
#include <QDesktopServices>
#include <QUrl>
#include <QRegularExpression>
#include <QRegularExpressionMatch>
#include <QtNetwork/QNetworkReply>
#include <QtNetwork/QNetworkAccessManager>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    mNewFeed = "";
    ui->setupUi(this);
    ui->lblError->hide();
    connect(ui->btnTest, SIGNAL(pressed()), this, SLOT(test()));
    connect(ui->btnNewFeed, SIGNAL(pressed()), this, SLOT(newFeedPopup()));
    connect(ui->btnQuit, SIGNAL(pressed()), this, SLOT(close()));
    connect(&rssHelper, SIGNAL(loadedRssFeeds()), this, SLOT(populateModels()));
    connect(ui->tableView, &QTreeView::clicked, this, &MainWindow::openFeedIteminBrowser);

}

void MainWindow::openFeedIteminBrowser(const QModelIndex &index)
{
    int rowIdx = index.row();
    QDesktopServices::openUrl(QUrl(rssHelper.feedItems[rowIdx]->getLink()));
}

void MainWindow::error(const QString &errorMessage)
{
    ui->lblError->setText(errorMessage);
    ui->lblError->show();

    QTimer *timer = new QTimer(this);
    connect(timer, &QTimer::timeout, [this]() {
        ui->lblError->hide();
    });
    timer->start(10000);
}


void MainWindow::populateFeedView()
{
    QStandardItemModel *model = new QStandardItemModel();

    //model->setHeaderData(0, Qt::Horizontal, "Date", Qt::DisplayRole);
    //model->setHeaderData(1, Qt::Horizontal, "Title", Qt::DisplayRole);
    //model->setHeaderData(2, Qt::Horizontal, "Description", Qt::DisplayRole);

    for(int i=0;i<rssHelper.feedItems.size();++i) {
        FeedItem *item = rssHelper.feedItems[i];
        QString itemContent = item->getContent();
        QDomDocument itemDom;
        itemDom.setContent(itemContent);

        QDomNodeList links = itemDom.elementsByTagName("link");
        QString link = links.at(0).toElement().text();

        QDomNodeList titles = itemDom.elementsByTagName("title");
        QString title = titles.at(0).toElement().text();

        QDomNodeList descriptions = itemDom.elementsByTagName("description");
        QString description = descriptions.at(0).toElement().text();

        QDateTime date = item->getDate();

        QStandardItem *standardItem = new QStandardItem();
        standardItem->setEditable(false);

        model->appendRow(QList<QStandardItem*>(
                                       {
                                         new QStandardItem(date.toString("ddd MMMM d yyyy")),
                                         new QStandardItem(title),
                                         new QStandardItem(description)
                                       }
                                       ));


    }

    QHeaderView *header = new QHeaderView(Qt::Horizontal, ui->tableView);
    header->setSectionResizeMode(QHeaderView::ResizeToContents);

    ui->tableView->setHorizontalHeader(header);
    ui->tableView->setModel(model);
}

void MainWindow::populateModels()
{
    // Initial data setup
    QStringListModel *model = new QStringListModel();
    QStringList list;

    if(rssHelper.rssFeeds.size() == 0) return;

    for(int i=0;i<rssHelper.rssFeeds.size(); ++i) {
        QJsonValue val = rssHelper.rssFeeds.at(i);
        list << val.toString();
    }

    model->setStringList(list);
    ui->comboBoxFeeds->setModel(model);

    mSelectedRssFeed = rssHelper.rssFeeds[0];
    rssHelper.loadRssFeed(mSelectedRssFeed);

    connect(&rssHelper, &RSSHelper::loadedRssFeed, this, &MainWindow::populateFeedView);
    connect(ui->comboBoxFeeds, &QComboBox::currentTextChanged, [this]() {
        QString newText = ui->comboBoxFeeds->currentText();
        rssHelper.loadRssFeed(newText);
    });
}

void MainWindow::sendNewRssUrl()
{
    QRegularExpression rxUrl(R"(https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*))");
    QRegularExpressionMatch urlMatch = rxUrl.match(mNewFeed);

    if(urlMatch.hasMatch()) {
        QNetworkReply *resp = rssHelper.get(rssHelper.addFeedEndpoint, {
                          {"url", mNewFeed}
                              });

        connect(resp, &QNetworkReply::finished, [this]() {
            rssHelper.resetCollector();
        });
    }
    else {
        error("ERROR: Url is not valid!");
    }
}

void MainWindow::setNewFeed(const QString &newUrl)
{
    mNewFeed = newUrl;
}

void MainWindow::newFeedPopup()
{
    QWidget *window = new QWidget;
    window->setWindowTitle("New RSS Feed");

    QVBoxLayout *vbox = new QVBoxLayout(window);

    QLabel *lblNewRssFeed = new QLabel("Enter new RSS feed url");
    QLineEdit *txtFeedUrl = new QLineEdit();
    QPushButton *btnSubmitFeedUrl = new QPushButton();
    btnSubmitFeedUrl->setText("Submit");

    vbox->addWidget(lblNewRssFeed);
    vbox->addWidget(txtFeedUrl);
    vbox->addWidget(btnSubmitFeedUrl);

    connect(txtFeedUrl, SIGNAL(textChanged(QString)), this, SLOT(setNewFeed(QString)));
    connect(btnSubmitFeedUrl, SIGNAL(pressed()), window, SLOT(close()));
    connect(btnSubmitFeedUrl, SIGNAL(pressed()), this, SLOT(sendNewRssUrl()));

    window->show();
}

void MainWindow::test()
{
    std::cout << "Hello, world!" << std::endl;
}

MainWindow::~MainWindow()
{
    delete ui;
}

