#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent), ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    trayIcon = new QSystemTrayIcon(this);

    createActions();
    createTrayIcon();

    connect(trayIcon, SIGNAL(activated(QSystemTrayIcon::ActivationReason)),
            this, SLOT(iconActivated(QSystemTrayIcon::ActivationReason)));

    QIcon icon = QIcon(":/images/icon.svg");

    (void) new QShortcut(Qt::ALT + Qt::Key_S, this, SLOT(showHide()));

    trayIcon->setIcon(icon);
    trayIcon->show();

    this->setWindowIcon(icon);
    setWindowTitle(trUtf8("quteNote"));
}

void MainWindow::showHide()
{
    if( this->isVisible() )
        this->hide();
     else
        this->show();
}

void MainWindow::iconActivated(QSystemTrayIcon::ActivationReason reason)
{
    switch (reason) {
    case QSystemTrayIcon::Trigger:
    case QSystemTrayIcon::DoubleClick:
        this->showHide();
        break;
    case QSystemTrayIcon::MiddleClick:
    default:
        ;
    }
}

void MainWindow::createActions()
{
    minimizeAction = new QAction(tr("Mi&nimize"), this);
    connect(minimizeAction, SIGNAL(triggered()), this, SLOT(hide()));

    maximizeAction = new QAction(tr("Ma&ximize"), this);
    connect(maximizeAction, SIGNAL(triggered()), this, SLOT(showMaximized()));

    restoreAction = new QAction(tr("&Restore"), this);
    connect(restoreAction, SIGNAL(triggered()), this, SLOT(showNormal()));

    quitAction = new QAction(tr("&Quit"), this);
    connect(quitAction, SIGNAL(triggered()), qApp, SLOT(quit()));
}

void MainWindow::createTrayIcon()
{
    trayIconMenu = new QMenu(this);
    trayIconMenu->addAction(minimizeAction);
    trayIconMenu->addAction(maximizeAction);
    trayIconMenu->addAction(restoreAction);
    trayIconMenu->addSeparator();
    trayIconMenu->addAction(quitAction);

    trayIcon = new QSystemTrayIcon(this);
    trayIcon->setContextMenu(trayIconMenu);
}

MainWindow::~MainWindow()
{
    delete this->trayIcon;
    delete this->ui;

    delete this->minimizeAction;
    delete this->maximizeAction;
    delete this->restoreAction;
    delete this->quitAction;

    delete this->trayIconMenu;
}
