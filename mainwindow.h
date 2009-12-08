#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "qutenote.h"
#include <QtGui/QMainWindow>
#include <QSystemTrayIcon>
#include <QList>
#include <QMenu>
#include <QxtGlobalShortcut>

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
    void initGlobaShortcut();
    void uninitGlobalShortcut();

    void setTreeNode();

    Ui::MainWindow *ui;
    QList<QuteNote*> notes;

    QSystemTrayIcon *trayIcon;
    QMenu *trayIconMenu;

    QAction *minimizeAction;
    QAction *maximizeAction;
    QAction *restoreAction;
    QAction *quitAction;

    QString _shortcutDef;
    QxtGlobalShortcut _hotkeyHandle;

    int _KeyCode;
};

#endif // MAINWINDOW_H
