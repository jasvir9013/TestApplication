//
//  ScanReceiptModel.m
//  TestApplication
//
//  Created by Administrator on 16/01/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "ScanReceiptModel.h"

@implementation ScanReceiptModel

-(ScanReceiptModel*)setModel: (NSArray*)dataArray
{
    _shopName = @"";
    _address = @"";
    _tel = @"";
    _date = @"";
    _total = @"";
    _cash = @"";
    _change = @"";
    _rateA = @"";
    _rateB = @"";
    _products = [NSMutableArray new];
    
    for (NSString *str in dataArray)
    {
        if ([str isEqualToString:[dataArray objectAtIndex:0]])
        {
            _shopName = str;
        }
        else if ([str containsString:@"Adress"])
        {
            _address = [self getAddress:str];
        }
        else if ([str containsString:@"Tel"])
        {
            _tel = [self getTel:str];
        }
        else if ([str containsString:@"Date"])
        {
            _date = [self getDate:str];
        }
        else if ([str containsString:@"Total"])
        {
            _total = [self getTotal:str];
        }
        else if ([str containsString:@"Cash"])
        {
            _cash = [self getCash:str];
        }
        else if ([str containsString:@"CHANGE"])
        {
            _change = [self getChange:str];
        }
        else if ([str containsString:@"RATE A"])
        {
            _rateA = str;
        }
        else if ([str containsString:@"RATE B"])
        {
            _rateB = str;
        }
        else if (str.length >8)
        {
            if (![str containsString:@"VAT/TAX"]){
            [_products addObject:str];
            }
            
        }
    }
    return self;
    
}


-(NSString*)getAddress :(NSString*)str
{
    str = [str stringByReplacingOccurrencesOfString:@"Adress:" withString:@""];
    return str;
}

-(NSString*)getTel :(NSString*)str
{
    str = [str stringByReplacingOccurrencesOfString:@"Tel:" withString:@""];
    return str;
}

-(NSString*)getDate :(NSString*)str
{
    str = [str stringByReplacingOccurrencesOfString:@"Date:" withString:@""];
    return str;
}

-(NSString*)getTotal :(NSString*)str
{
    str = [str stringByReplacingOccurrencesOfString:@"Total:" withString:@""];
    return str;
}

-(NSString*)getCash :(NSString*)str
{
    str = [str stringByReplacingOccurrencesOfString:@"Cash:" withString:@""];
    return str;
}

-(NSString*)getChange :(NSString*)str
{
    str = [str stringByReplacingOccurrencesOfString:@"CHANGE:" withString:@""];
    return str;
}

@end
