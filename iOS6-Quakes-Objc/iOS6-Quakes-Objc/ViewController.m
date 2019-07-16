//
//  ViewController.m
//  iOS6-Quakes-Objc
//
//  Created by Paul Solt on 7/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
//    NSString *place, address;
    
//    double *number1, number2;
    
    // double *number1;
    // double number2;
    
    // Primative Data Types
    double pi = 3.14;
    int age = 33;
    long int numberOfSeconds = 300000000;
    char letter = 'a';
    
    // Object Types (pointer types)
    // We're storing the address to another location in memory
    
    NSString *name = @"Paul";
    NSNumber *number = @3.14;
    NSNumber *number2 = @47;
    
    // c string (c-string) c programming language
    char *lastName = "Solt";
    
    int result = 4500 / 1000;  // 4.5 -> truncate the decimal -> 4
    double result2 = 4500 / 1000; // 4.0 because of integer division
    
  // Casting: (Type)name
    // Swift: Double(3)
    double result3 = 4500.0 / (NSTimeInterval)1000;
    
    NSLog(@"result: %d result2: %f result3: %f", result, result2, result3);
    
}


@end
