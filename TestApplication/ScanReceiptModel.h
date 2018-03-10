//
//  ScanReceiptModel.h
//  TestApplication
//
//  Created by Administrator on 16/01/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScanReceiptModel : NSObject




@property(strong, nonatomic) NSString *shopName;
@property(strong, nonatomic) NSString *address;
@property(strong, nonatomic) NSString *tel;
@property(strong, nonatomic) NSString *date;
@property(strong, nonatomic) NSString *total;
@property(strong, nonatomic) NSString *cash;
@property(strong, nonatomic) NSString *change;
@property(strong, nonatomic) NSString *rateA;
@property(strong, nonatomic) NSString *rateB;
@property(strong, nonatomic) NSMutableArray *products;

//@property(strong, nonatomic) NSString *shopName;

-(ScanReceiptModel*)setModel: (NSArray*)dataArray;

@end
