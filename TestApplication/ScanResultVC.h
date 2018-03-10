//
//  ScanResultVC.h
//  TestApplication
//
//  Created by Administrator on 15/01/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScanReceiptModel.h"
@interface ScanResultVC : UIViewController <UITableViewDelegate, UITableViewDataSource>

{
    __weak IBOutlet UITextField *mShopNameTF;
    __weak IBOutlet UITextField *mAddressTF;
    __weak IBOutlet UITextField *mDateTF;
    __weak IBOutlet UITextField *mTelephoneTF;
    __weak IBOutlet UITextField *mTotalTF;
    __weak IBOutlet UITextField *mCashTF;
    __weak IBOutlet UITextField *mChangeTF;
    __weak IBOutlet UITextField *mRateATF;
    __weak IBOutlet UITextField *mRateBTF;

    __weak IBOutlet UITableView *mTableView;
    
    NSMutableArray *products;
}

@property (weak, nonatomic) ScanReceiptModel *result;
@end
