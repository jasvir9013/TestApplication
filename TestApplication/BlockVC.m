//
//  BlockVC.m
//  TestApplication
//
//  Created by Administrator on 12/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "BlockVC.h"

@interface BlockVC ()

@end

@implementation BlockVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SampleClass *sample = [[SampleClass alloc]init];
    [sample performActionWithCompletion:^{
        NSLog(@"Completion is called to intimate action is performed.");
    }];
    
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
