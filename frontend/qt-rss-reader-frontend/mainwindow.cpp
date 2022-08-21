#include "mainwindow.h"
#include "./ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    connect(ui->btnQuit, &QPushButton::clicked, this, &MainWindow::on_btn_quit_pressed);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_btn_quit_pressed()
{
    close();
}
