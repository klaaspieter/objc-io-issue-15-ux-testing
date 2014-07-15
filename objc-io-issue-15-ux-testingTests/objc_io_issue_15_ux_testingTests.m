//
//  objc_io_issue_15_ux_testingTests.m
//  objc-io-issue-15-ux-testingTests
//
//  Created by Klaas Pieter Annema on 15/07/14.
//  Copyright (c) 2014 Klaas Pieter Annema. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface objc_io_issue_15_ux_testingTests : XCTestCase

@end

@implementation objc_io_issue_15_ux_testingTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
