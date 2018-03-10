//
//  ViewController.m
//  TestApplication
//
//  Created by Administrator on 14/06/17.
//  Copyright © 2017 Administrator. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *string;
@property (weak, nonatomic) IBOutlet UITextField *reverseString;

@end

@implementation ViewController

- (void)viewDidLoad
{
   
    [super viewDidLoad];
    
   // self.arr_test = [[NSMutableArray alloc]initWithObjects:@"105",@"104",@"105",@"120",@"125",@"114",@"155",@"106",@"20",@"50",@"80",@"60",@"58",@"45",nil];
   
   // BOOL ArrayCheck =  [self CheckIfAnySameObjectIsPresent];
    
//    if (ArrayCheck == YES) {
//        NSLog(@"Value are same");
//    }
//    else
//    {
//        NSLog(@"Value are not same");
//    }


}

- (IBAction)ReverseString:(id)sender
{
    NSString *str = _string.text;
    NSString *revesrStr = @"";
    
    for (NSInteger i = [str length]-1 ; i >= 0 ; i --)
    {
        NSString *s = [str substringWithRange:NSMakeRange(i, 1)];
        revesrStr = [NSString stringWithFormat:@"%@%@",revesrStr,s];
        _reverseString.text = revesrStr;
    }
    
}

/*
-(BOOL) CheckIfAnySameObjectIsPresent
{
    for (int i = 0; i<[self.arr_test count]-1; i++)
    {
        
        
        if (![[self.arr_test objectAtIndex:i]isEqualToString:[self.arr_test objectAtIndex:i+1]])
        {
            
        
        }
        else
        {
            return YES;
            
        }
    }
    
     return NO;
}
*/

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
