//
//  SingletonVC.m
//  TestApplication
//
//  Created by Administrator on 16/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "SingletonVC.h"

@interface SingletonVC ()

@end

@implementation SingletonVC

- (void)viewDidLoad {
    [super viewDidLoad];
    MyManager *sharedManager = [MyManager sharedManager];
    NSLog(@"%@",sharedManager.demoString);
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
