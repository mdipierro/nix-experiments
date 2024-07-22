#include <iostream>
#include <eigen3/Eigen/Dense>
 
using Eigen::MatrixXd;
 
int main()
{
    std::string cxx =
#ifdef __clang__
   "clang++";
#else
   "g++";
#endif
  std::cout << "The C++ compiler version is: " << cxx << std::endl;
  MatrixXd m(2,2);
  m(0,0) = 3;
  m(1,0) = 2.5;
  m(0,1) = -1;
  m(1,1) = m(1,0) + m(0,1);
  std::cout << m << std::endl;
}
