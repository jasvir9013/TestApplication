//
//  ScanResultVC.m
//  TestApplication
//
//  Created by Administrator on 15/01/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "ScanResultVC.h"

@interface ScanResultVC ()

@end

@implementation ScanResultVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setResultValue];
    // Do any additional setup after loading the view.
}

-(void)setResultValue
{
    mShopNameTF.text  = _result.shopName;
    mTelephoneTF.text = _result.tel;
    mAddressTF.text   = _result.address;
    mDateTF.text      = _result.date;
    mTotalTF.text     = _result.total;
    mCashTF.text      = _result.cash;
    mChangeTF.text    = _result.change;
    mRateATF.text     = _result.rateA;
    mRateBTF.text     = _result.rateB;
    products = _result.products.mutableCopy;
    [mTableView reloadData];
}

#pragma UITableView Datasource & Delegate

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return products.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Set up the text for your cell
    NSString *cellValue = [products objectAtIndex:indexPath.row];
    cell.textLabel.text = cellValue;
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  //  NSString *identifier = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    //[self performSegueWithIdentifier:identifier sender:self];
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
