//
//  ScanReceiptVC.h
//  TestApplication
//
//  Created by Administrator on 11/01/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScanReceiptModel.h"
#import <GPUImage.h>
#import <TesseractOCR/TesseractOCR.h>

@interface ScanReceiptVC : UIViewController <G8TesseractDelegate, UIImagePickerControllerDelegate,UINavigationControllerDelegate>

{
    ScanReceiptModel *result;
    UIView *overlayView;
}
@end
