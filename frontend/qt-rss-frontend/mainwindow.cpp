#include "mainwindow.h"
#include "./ui_mainwindow.h"

#include <iostream>

#include <QObject>
#include <QPushButton>
#include <QAbstractButton>
#include <QWidget>
#include <QLabel>
#include <QVBoxLayout>
#include <QLineEdit>
#include <QString>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    mNewFeed = "";
    ui->setupUi(this);
    connect(ui->btnTest, SIGNAL(pressed()), this, SLOT(test()));
    connect(ui->btnNewFeed, SIGNAL(pressed()), this, SLOT(newFeedPopup()));


    // Wait for RSS feeds to load
}


void MainWindow::sendNewRssUrl()
{
    rssHelper.get(rssHelper.addFeedEndpoint, {
                      {"url", mNewFeed}
                  });
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

