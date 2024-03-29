#include <iostream>
#include <array>
#include <vector>
#include <functional>

// void operation (std::array<int, 5>& data, enum class Logic op) {
//     if (op == Logic::SQUARE) {
//         for(int val: data) {
//             std::cout << val * val << "\n";
//         }
//     } else if (op == Logic::CUBE) {
//         for(int val: data) {
//             std::cout << val * val * val << "\n";
//         }
//     } else {
//         // something else..
//     }
// }

using FnType = std::function<int(int)>;
using FnContainer = std::array<FnType, 2>;

// benefit of using lamdba function
void operation (const std::vector<int>& data, FnType fn) {
    for (int val: data) {
        std::cout << fn(val) << std::endl;
    }
}

/* 
    Capture clause ([]) in lambda allows me to access data which is outside the lmbda 
    & inside the inclosing function without introducing its state to lambda.
*/

// FnContainer stores function wrapper and function wrapper stores address of function
void operation (const std::vector<int>& data, FnContainer& fns) {
    for (auto& fn: fns) {
        for (int val: data) {
            std::cout << fn(val) << std::endl;
        }
    }
}

// g++ -o app &&./app && rm app
int main() {
    operation(std::vector<int> {12, 13, 14, 15}, [](int num) -> int { return num * num; });

    /*
        In capture clause
        [&] means all variables in enclosing function are captured by reference       
        [=] means all variables in enclosing function are captured by value 
        [&n1] means only n1 variable is captured by reference       
        [n1] means only nl is captured by value       
        [n1, &a] : n1 by value and a by reference
    */
    auto square = [](int num) -> int { return num * num; };
    auto cube = [](int num) -> int { return num * num * num; };
    FnContainer fns = {square, cube};

    /*
        If we accept var by value in capture clause of lambda We cant change the value of 
        var in the lambda body, because it becomes const in lambda body to achieve functional
        programming.

        If we still want to make changes then we can make laambda function as mutable
    */

    int n1 = 10;
    auto raw = [n1](int num) mutable{ 
        n1 = 100;    
    };

    operation(std::vector<int> {12, 13, 14, 15}, fns);

    return 0;
}