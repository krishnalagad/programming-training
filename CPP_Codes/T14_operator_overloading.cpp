#include <iostream>

class Point{
    private:
        int x, y;
    public:
        Point() {x = y = 0;}
        Point(int x, int y) {this->x = x; this->y = y;}
        void display() {
            std::cout<<"\nx = "<<this->x<<"\ny = "<<this->y<<std::endl;
        }

        Point operator +(Point &point) {    // p2 reference come here in parameter
            Point ans;
            ans.x = this->x + point.x;      // p1 come here in this pointer.
            ans.y = this->y + point.y;
            return ans;
        }

        Point operator -(Point &point) {
            Point ans;
            ans.x = this->x - point.x;
            ans.y = this->y - point.y;
            return ans;
        }

        bool operator ==(Point &point) {
            bool xVal = this->x == point.x;
            bool yVal = this->y == point.y;
            if(xVal && yVal)
                return true;
            else
                return false;
        }
};

int main(void) {
    Point p1(3, 4), p2(3, 4);
    Point p3 = p1 + p2;
    p3.display();
    p3 = p1 - p2;
    p3.display();
    bool res = p1 == p2;
    if (res)
        std::cout<<"\nPoints are same"<<std::endl;
    else
        std::cout<<"\nPoints are not same"<<std::endl;
    
    return 0;
}