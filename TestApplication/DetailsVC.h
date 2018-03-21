//
//  DetailsVC.h
//  TestApplication
//
//  Created by Administrator on 21/03/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsVC : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *versionTF;
@property (weak, nonatomic) IBOutlet UITextField *companyTF;


- (IBAction)CancelButtonClicked:(id)sender;
- (IBAction)SaveButtonClicked:(id)sender;


@end
