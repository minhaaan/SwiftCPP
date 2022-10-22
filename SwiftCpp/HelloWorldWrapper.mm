//
//  HelloWorldWrapper.m
//  SwiftCpp
//
//  Created by 최민한 on 2022/10/22.
//

/*
 확장자가 m이 아니라 mm인것은 Xcode와 컴파일러에게 이 Obc파일은 cpp을 사용한다고 알리는 용도
 */


#import <Foundation/Foundation.h>
#import "HelloWorldWrapper.h"
#import "HelloWorld.hpp"

@implementation HelloWorldWrapper

- (NSString *) sayHello {
  HelloWorld helloWorld;
  std::string helloWorldMessage = helloWorld.sayHello();
  return [NSString
          stringWithCString:helloWorldMessage.c_str()
          encoding:NSUTF8StringEncoding];
}

@end
