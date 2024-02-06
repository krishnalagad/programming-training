#include <iostream>

class Employee {
    private:
        int _eId;
        std::string _eName;
    public:
        Employee() = delete;
        Employee(int id, std::string name): _eId(id), _eName(name) {}
        Employee(const Employee&) {
            std::cout << "copy constructor called!!" << std::endl;
        }
        Employee(Employee&&) {
            std::cout << "move constructor called!!" << std::endl;
        }
        Employee& operator=(const Employee&) {
            std::cout << "copy assignment called!!" << std::endl;
            return *this;
        }
        Employee& operator=(Employee&&) {
            std::cout << "move assignment called!!" << std::endl;
            return *this;
        }
        ~Employee() = default;

        friend std::ostream &operator<<(std::ostream &os, const Employee &rhs) {
            os << "_eId: " << rhs._eId
            << " _eName: " << rhs._eName;
            return os;
        }
};

Employee magic(int id, std::string name) {
    std::cout << "Middle man fuction called!!" << std::endl;
    Employee e(id, name);
    return e;
}

/*
    g++ copy_ellision.cpp -g -o app && ./app && rm app
    g++ copy_ellision.cpp -fno-elide-constructors -g -o app && ./app && rm app    // to turn off the optimization
*/
int main() {
    Employee e1 = magic(101, "Krishna");    // Employee e1 is assigned a rvalue

    /*
        We are constructing a new object with identifier name e2 from already existing object e1,
        Right now, e2 uses the memory location that was previously attached to identifier e1.
        move constuctor will get called for this statement, now accessing e1 would be illigal
    */
    Employee e2 = std::move(e1);
    // Employee e2 = e1;   // copy constructor will get called

    e2 = Employee(111, "Lagad");    // move assignment will get called here
    e2 = e1;    // copy assignment will get called here

    return 0;
}
