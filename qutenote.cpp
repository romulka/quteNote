#include "qutenote.h"

QuteNote::QuteNote()
{}

QuteNote::~QuteNote()
{
    while(!this->childs.isEmpty())
        delete this->childs.takeFirst();
}

void QuteNote::Init(QXmlSimpleReader InitXml)
{

}
