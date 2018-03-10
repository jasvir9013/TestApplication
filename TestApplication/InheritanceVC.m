//
//  InheritanceVC.m
//  TestApplication
//
//  Created by Administrator on 10/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "InheritanceVC.h"
#import "Person.h"
#import "Employee.h"
@interface InheritanceVC ()

@end

@implementation InheritanceVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *person = [[Person alloc]initWithName:@"john" andAge:@"20"];
    [person print];
    
    Employee *emp = [[Employee alloc]initWithName:@"jas" andAge:@"30" andEducation:@"MBA"];
    [emp print];
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
