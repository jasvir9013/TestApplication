//
//  CategoryVC.m
//  TestApplication
//
//  Created by Administrator on 13/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "CategoryVC.h"
#import "Person.h"
#import "Person+Relations.h"

@interface CategoryVC ()

@end

@implementation CategoryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *khem = [[Person alloc]init];
    khem.name = @"khem Thakur";
    Person *deep = [[Person alloc]init];
    deep.name = @"Deep";
    Person *jassi = [[Person alloc]init];
    jassi.name = @"Jassi Singh";
    
    [khem sayHello];
    [khem addFriend:deep];
    [khem addFriend:jassi];
    [khem sayHelloToFriend];
    [khem removeFriend:deep];
    [khem sayHelloToFriend];
    
    
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
