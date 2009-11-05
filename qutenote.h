#ifndef QUTENOTE_H
#define QUTENOTE_H

#include <QList>
#include <QString>
#include <QXmlSimpleReader>

class QuteNote
{
public:
    QuteNote();
    void Init(QXmlSimpleReader InitXml);

    QString tabName;
    QList<QuteNote*> childs;

    ~QuteNote();
};

#endif // QUTENOTE_H
