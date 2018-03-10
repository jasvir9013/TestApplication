//
//  SortVC.m
//  TestApplication
//
//  Created by Administrator on 21/12/17.
//  Copyright © 2017 Administrator. All rights reserved.
//

#import "SortVC.h"

@interface SortVC ()

@end

@implementation SortVC

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

- (IBAction)AddItems:(id)sender
{
    if (_addItemTF.text.length)
    {
        [_itemsArray addObject:_addItemTF.text];
        [self updateView];
    }
}

- (IBAction)SortItems:(id)sender
{
   NSArray *sortedArray =  [self bubbleSort:_itemsArray];
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

-(NSArray *)bubbleSort:(NSMutableArray *)unsortedDataArray
{
    long count = unsortedDataArray.count;
    int i;
    bool swapped = TRUE;
    while (swapped){
        swapped = FALSE;
        for (i=1; i<count;i++)
        {
            if ([unsortedDataArray objectAtIndex:(i-1)] > [unsortedDataArray objectAtIndex:i])
            {
                [unsortedDataArray exchangeObjectAtIndex:(i-1) withObjectAtIndex:i];
                swapped = TRUE;
            }
            NSLog(@"unsortedDataArray : %@",unsortedDataArray);

            //bubbleSortCount ++; //Increment the count everytime a switch is done, this line is not required in the production implementation.
        }
    }
    return unsortedDataArray;
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
