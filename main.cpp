#include <QtGui/QApplication>
#include "mainwindow.h"

int main(int argc, char *argv[])
{
    /*if (!QSystemTrayIcon::isSystemTrayAvailable()) {
        QMessageBox::critical(0, QObject::tr("Systray"),
                              QObject::tr("I couldn't detect any system tray "
                                          "on this system."));
        return 1;
    }*/

    QApplication a(argc, argv);
    //QApplication::setQuitOnLastWindowClosed(false);

    MainWindow w;
    //Qt::WindowFlags flags = Qt::Sheet;
    //w.setWindowFlags( flags );
    //w.show();
    w.showNormal();
    return a.exec();
}
