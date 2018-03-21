//
//  DetailsVC.m
//  TestApplication
//
//  Created by Administrator on 21/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "DetailsVC.h"

@interface DetailsVC ()

@end

@implementation DetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(NSManagedObjectContext*)managedObjectContext
{
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

- (IBAction)CancelButtonClicked:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)SaveButtonClicked:(id)sender
{
    NSManagedObjectContext *context = [self managedObjectContext];
    //NSManagedObjectModel *newmodel = []
    NSManagedObjectModel *newDevice = [kSecAttrDescription insertNewObjectForEntityForName:@"Device" inManagedObjectContext:context];

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

- (IBAction)CancelButtonClicked:(id)sender {
}

- (IBAction)SaveButtonClicked:(id)sender {
}
@end
