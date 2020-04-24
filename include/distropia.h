#ifndef DISTROPIA_H
#define DISTROPIA_H

#include <QMainWindow>
#include <QScopedPointer>

namespace Ui {
class distropia;
}

class distropia : public QMainWindow
{
    Q_OBJECT

public:
    explicit distropia(QWidget *parent = nullptr);
    ~distropia() override;

private:
    QScopedPointer<Ui::distropia> m_ui;
};

#endif // DISTROPIA_H
