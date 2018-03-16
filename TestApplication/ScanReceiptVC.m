//
//  ScanReceiptVC.m
//  TestApplication
//
//  Created by Administrator on 11/01/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

#import "ScanReceiptVC.h"
#import "ScanResultVC.h"

@interface ScanReceiptVC ()

@end

@implementation ScanReceiptVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
   result = [[ScanReceiptModel alloc]init];

   // UIImage *imageWithBlocks = [tesseract imageWithBlocks:characterBoxes drawText:YES thresholded:NO];

    // Do any additional setup after loading the view.
}

-(void)recognizeImageWithTesseract:(UIImage *)image
{
    G8Tesseract *tesseract = [[G8Tesseract alloc] initWithLanguage:@"eng"];
    tesseract.delegate = self;
    tesseract.charWhitelist = @"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ:/-.%";
   // tesseract.charBlacklist = @"**";
    tesseract.pageSegmentationMode = G8PageSegmentationModeAuto ;
    tesseract.image = image.g8_blackAndWhite;
    [tesseract analyseLayout];
    [tesseract recognize];
 
    NSString *recognizedText = [tesseract recognizedText];
    NSLog(@"%@",recognizedText);
   
    NSArray *lines = [recognizedText componentsSeparatedByString:@"\n"];
    NSLog(@"%@", lines);

    if (lines.count > 4) {
        [result setModel:lines];
        [self performSegueWithIdentifier:@"showResult" sender:self];
    }
    
    /*
    self.tesseract.image = UIImage(data: imageData)!
    self.tesseract.rect = CGRectMake(24, 72, 100, 40)
    self.tesseract.recognize()
    let elapsed = self.tesseract.recognizedText
    self.tesseract.rect = CGRectMake(630, 72, 100, 40)
    self.tesseract.recognize()
    let remaining = self.tesseract.recognizedText
    self.tesseract.rect = CGRectMake(0, 112, 750, 50)
    self.tesseract.recognize()
    let title = self.tesseract.recognizedText
    self.tesseract.rect = CGRectMake(0, 160, 750, 40)
    self.tesseract.recognize()
    let name = self.tesseract.recognizedText
    let alertVC = UIAlertController(title: "Tesseract", message: "Podcast: \(name)\nEpisode: \(title)\nElapsed: \(elapsed)\nRemaining: \(remaining)", preferredStyle: .Alert)
    let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
    alertVC.addAction(cancelAction)
    self.presentViewController(alertVC, animated: true, completion: nil)*/
    
    
    /*
    NSArray *characterBoxes = [tesseract recognizedBlocksByIteratorLevel:G8PageIteratorrecognizedText    NSString *    0x16d49d368    0x000000016d49d368LevelSymbol];
    
    NSLog(@"%@", characterBoxes);

    NSArray *paragraphs = [tesseract recognizedBlocksByIteratorLevel:G8PageIteratorLevelParagraph];
    NSLog(@"%@", paragraphs);

    NSArray *characterChoices = tesseract.characterChoices;
    NSLog(@"%@", characterChoices);
*/
    
}


- (void)progressImageRecognitionForTesseract:(G8Tesseract *)tesseract
{
    NSLog(@"progress: %lu", (unsigned long)tesseract.progress);
}
    
- (BOOL)shouldCancelImageRecognitionForTesseract:(G8Tesseract *)tesseract
{
    return NO;  // return YES, if you need to interrupt tesseract before it finishes
}


#pragma mark Action Methods

- (IBAction)openCamera:(id)sender
{
        UIImagePickerController *imgPicker = [UIImagePickerController new];
        imgPicker.delegate = self;
        
        if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
        {
            imgPicker.sourceType = UIImagePickerControllerSourceTypeCamera;
          //imgPicker.cameraFlashMode = UIImagePickerControllerCameraFlashModeOn;
            
         overlayView = [[UIView alloc]initWithFrame:CGRectMake(10, 50, imgPicker.view.frame.size.width-20, 480)];
            overlayView.backgroundColor = [UIColor lightGrayColor];
            overlayView.alpha = 0.4;
         //   [imgPicker setCameraOverlayView:overlayView];
            
            [self presentViewController:imgPicker animated:YES completion:nil];
        }
}
    
- (IBAction)recognizeSampleImage:(id)sender
{
   // [self recognizeImageWithTesseract:[UIImage imageNamed:@"image_sample.jpg"]];
}

- (IBAction)clearCache:(id)sender
{
    [G8Tesseract clearCache];
}
   
#pragma mark - UIImagePickerController Delegate

- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
        UIImage *image = info[UIImagePickerControllerOriginalImage];
          //  UIImage *image = info[UIImagePickerControllerEditedImage];
        [picker dismissViewControllerAnimated:YES completion:nil];
    // Give Tesseract the filtered image
    
        [self recognizeImageWithTesseract:image];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    ScanResultVC *destinationVC = [segue destinationViewController];
    destinationVC.result = result;
}


@end
