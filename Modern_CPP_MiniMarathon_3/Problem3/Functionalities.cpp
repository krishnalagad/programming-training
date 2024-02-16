#include "Functionalities.hpp"

void createObjects(CarVariantContainer &data) {
    data.push_back(
        std::make_shared<EvCar>(
            101, ChassisType::LADDER, 33.0f));
    data.push_back(
        std::make_shared<ICECar>(
            102, FuelType::DIESEL, 19.0f));
    data.push_back(
        std::make_shared<EvCar>(
            103, ChassisType::TABULAR, 45.0f));
    data.push_back(
        std::make_shared<ICECar>(
            104, FuelType::PETROL, 21.0f));
    data.push_back(
        std::make_shared<EvCar>(
            105, ChassisType::LADDER, 21.0f));
    data.push_back(
        std::make_shared<ICECar>(
            105, FuelType::DIESEL, 22.0f));
}

bool isFuelTankCapacityAbove30(const CarVariantContainer &data){
    if (data.empty()) 
        throw CustomMessageException("Container is empty!!");
    
    bool flag = true;
    for (const CarVariant& v: data) {
        if (std::holds_alternative<ICECarPointer>(v)) {
            auto ptr = std::get<ICECarPointer>(v);
            if (ptr->fuelTankCapacity() >= 30) 
                flag = true;
            else 
                return false;
        }
    }
    return flag;
}

std::optional<CarVariantContainer> getFirstNCarsBasedOnType(const CarVariantContainer& data, CarType& type, int n) {
    if (data.empty()) 
        throw CustomMessageException("Container is empty!!");

    int val = static_cast<int>(type);
    CarVariantContainer res;
    for (const CarVariant& v: data) {
        if(val == 1) {
            if (std::holds_alternative<ICECarPointer>(v)) {
                res.push_back(std::get<ICECarPointer>(v));
            } 
        } else if (val == 2) {
            if (std::holds_alternative<EvCarPointer>(v)) {
                res.push_back(std::get<EvCarPointer>(v));
            }
        }
    }

    if (res.empty()) 
        return std::nullopt;
    return res;
}


void printCountOfEvCarInstances(const CarVariantContainer &data) {
    if (data.empty()) 
        throw CustomMessageException("Container is empty!!");

    int count = 0;
    for (const CarVariant& v: data) {
        if (std::holds_alternative<EvCarPointer>(v)) 
            count += 1;
    }

    std::cout << "The count of EvCar in the container is: " << count << std::endl;
}

std::string getChassisTypeById(const CarVariantContainer &data, int id) {
    if (data.empty()) 
        throw CustomMessageException("Container is empty!!");
    
    int chassisType = 0;;
    for (const CarVariant& v: data) {
        if (std::holds_alternative<EvCarPointer>(v)) {
            EvCarPointer e = std::get<EvCarPointer>(v);
            if (e->id() == id) {
                chassisType = static_cast<int>(e->chassisType());
            }
        }
    }
    
    if(chassisType)
        return "LADDER";
    else 
        return "TABULAR";
}

float getTotalBatteryCapacityOfEvCars(const CarVariantContainer &data){
    if (data.empty()) 
        throw CustomMessageException("Container is empty!!");
    
    float total = 0.0f;
    for (const CarVariant& v: data) {
        if (std::holds_alternative<EvCarPointer>(v)) {
            EvCarPointer e = std::get<EvCarPointer>(v);
            total += e->batteryCapacity();
        }
    }
    return total;
}

void printDataOfCarObject(const CarVariantContainer &data, int n) {
    if (data.empty()) 
        throw CustomMessageException("Container is empty!!");
    if (n > data.size())
        throw RecordNotFoundException("Container index is out of bounds!!");

    if (std::holds_alternative<EvCarPointer>(data.at(n))) {
        EvCarPointer ptr = std::get<EvCarPointer>(data.at(n));
        std::cout << *ptr;
    }
    if (std::holds_alternative<ICECarPointer>(data.at(n))) {
        ICECarPointer ptr = std::get<ICECarPointer>(data.at(n));
        std::cout << *ptr;
    }
}
