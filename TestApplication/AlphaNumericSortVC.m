//
//  AlphaNumericSortVC.m
//  TestApplication
//
//  Created by Administrator on 28/12/17.
//  Copyright © 2017 Administrator. All rights reserved.
//

#import "AlphaNumericSortVC.h"

@interface AlphaNumericSortVC ()

@end

@implementation AlphaNumericSortVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _itemsArray = [NSMutableArray new];
    _sortedArray = [NSMutableArray new];
    
    // Do any additional setup after loading the view.
}

-(void)updateView
{
    _unsortedItems.text = [self ArrayToString:_itemsArray];
    _addItemTF.text = @"";
}

-(IBAction)AddItems:(id)sender
{
    if (_addItemTF.text.length)
    {
       [_itemsArray addObject:_addItemTF.text];
       [self updateView];
    }
}

- (IBAction)SortItems:(id)sender
{
    NSArray *sortedArray =  [self SortDataWithTask:_itemsArray];
    _sortedItems.text = [self ArrayToString:_itemsArray];
    NSLog(@"sorted array : %@",sortedArray);
}

-(NSString*)ArrayToString :(NSArray*)array
{
    NSString *string = @"";
    for (int i = 0; i < array.count; i++)
    {
        NSString *item = [array objectAtIndex:i];
        if (string.length)
        {string = [NSString stringWithFormat:@"%@ %@",string,item];}
        else
        {string = [NSString stringWithFormat:@"%@",item];}
    }
    return string;
}

-(NSArray*)SortDataWithTask :(NSMutableArray *)totalTask
{
    NSSortDescriptor *sd = [NSSortDescriptor sortDescriptorWithKey:@"" ascending:YES comparator:^(NSString *obj1, NSString *obj2)
    {
        return [obj1 compare:obj2 options:NSNumericSearch | NSCaseInsensitiveSearch];
    }];
    [totalTask sortUsingDescriptors:@[sd]];
    return totalTask;
}

- (void)didReceiveMemoryWarning
{
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
