#include <iostream>
#include "factory.h"

int main() {
    Factory f1;
    f1->show();

    Factory f2(45045.78, "Jack Sparrow");
    f2->show();

    Factory f3(120000.456, "Tom Hank");
    f3->show();
    return 0;
}