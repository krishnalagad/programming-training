#include <iostream>
#include "Car.h"
#include "CarType.h"
#include <algorithm>
#include <vector>
#include "Functionalities.h"

void magic(Car& car) {
    std::cout<<car.price();
}

int main() {

    // Car c1("car000", 98000.0f, VehicleType::HATCHBACK);
    // magic(c1);

    // std::string str = "idcode";
    // magic(str);

    std::vector<Car*> v = { new Car("car001", 23000.3, VehicleType::HATCHBACK), 
                            new Car("car002", 32000.3, VehicleType::SEDAN),
                            new Car("car003", 56000.3, VehicleType::SUV) };

    std::cout<<"Average price of 3 Cars is: "<<getAvg(v)<<std::endl;

    std::string id = "car001";
    Car resultCar = getCarById(v, id);
    std::cout<<"Price: "<<resultCar.price()<<std::endl;

    for(Car* c: v)
        delete c;

    container data;    // empty container

    createObjects(data);

    averagePrice(data);

    getPriceById(data, id);

    return 0;
}   