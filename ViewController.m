//
//  ViewController.m
//  NSPredicate谓词逻辑比较算法
//
//  Created by Mr.C on 16/8/10.
//  Copyright © 2016年 Mr.C. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self collectForTwoNums];
}

- (void)collectForTwoNums {
    NSArray *array1 = [NSArray arrayWithObjects:@0, @1, @2, @3, @4, @5, @6, @8, @9, nil];
    NSArray *array2 = [NSArray arrayWithObjects:@1, @3, @4, @2, @5, @0, nil];
    NSPredicate *predicate1 = [NSPredicate predicateWithFormat:@"SELF  in %@", array2];
    
    NSArray *collect = [array1 filteredArrayUsingPredicate:predicate1];
    
    NSLog(@"collect = %@", collect);
    
    [collect enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"collect = %@", obj);
    }];
    
    
}

@end
