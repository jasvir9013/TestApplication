//
//  PolymorphismVC.m
//  TestApplication
//
//  Created by Administrator on 10/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "PolymorphismVC.h"

@interface PolymorphismVC ()

@end

@implementation PolymorphismVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Square *square = [[Square alloc]initWithSide:10];
    [square calculateArea];
    [square printArea];
    
    Rectangle *rect = [[Rectangle alloc]initWithLenght:10 andBreadth:13];
    [rect calculateArea];
    [rect printArea];
    
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
