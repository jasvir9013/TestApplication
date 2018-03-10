//
//  AlphaNumericSortVC.h
//  TestApplication
//
//  Created by Administrator on 28/12/17.
//  Copyright © 2017 Administrator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlphaNumericSortVC : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *addItemTF;
@property (weak, nonatomic) IBOutlet UILabel *unsortedItems;
@property (weak, nonatomic) IBOutlet UILabel *sortedItems;

@property (nonatomic,strong) NSMutableArray *itemsArray;
@property (nonatomic,strong) NSMutableArray *sortedArray;


@end
