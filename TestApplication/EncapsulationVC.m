//
//  EncapsulationVC.m
//  TestApplication
//
//  Created by Administrator on 10/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "EncapsulationVC.h"
#import "adder.h"

@interface EncapsulationVC ()

@end

@implementation EncapsulationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    adder *add = [[adder alloc]initWithInitialNumber:10];
    [add addNumber:3];
    
    NSLog(@"total is = %ld", [add getTotal]);
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
