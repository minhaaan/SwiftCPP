//
//  HelloWorld.cpp
//  SwiftCpp
//
//  Created by 최민한 on 2022/10/22.
//

#include "HelloWorld.hpp"

std::string HelloWorld::sayHello() {
  return "Hello from CPP World!";
}

std::int64_t HelloWorld::getRandomNumber(){
  return rand();
};
