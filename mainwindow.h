#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QtGui/QMainWindow>
#include <QSystemTrayIcon>
#include <QList>
#include <QShortcut>
#include "qutenote.h"
#include <QMenu>
#include <QMessageBox>

namespace Ui
{
    class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void showHide();
    void iconActivated(QSystemTrayIcon::ActivationReason reason);

private:
    void createActions();
    void createTrayIcon();

    Ui::MainWindow *ui;
    QList<QuteNote*> notes;

    QSystemTrayIcon *trayIcon;
    QMenu *trayIconMenu;

    QAction *minimizeAction;
    QAction *maximizeAction;
    QAction *restoreAction;
    QAction *quitAction;
};

#endif // MAINWINDOW_H
