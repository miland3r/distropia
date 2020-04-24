#include "distropia.h"
#include "ui_distropia.h"

distropia::distropia(QWidget *parent) :
    QMainWindow(parent),
    m_ui(new Ui::distropia)
{
    m_ui->setupUi(this);
}

distropia::~distropia() = default;
