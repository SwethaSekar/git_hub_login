//
//  ViewController.h
//  login_github
//
//  Created by Candidate on 9/7/16.
//  Copyright © 2016 Candidate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "secondViewController.h"
@class secondViewController;

@interface ViewController : UIViewController
{
    
    IBOutlet UILabel *label1;
    IBOutlet UILabel *label2;
    IBOutlet UITextField *text1;
    IBOutlet UITextField *text2;
    IBOutlet UIButton *button;
    NSString *s;
    

    NSMutableData *receiveData;
    secondViewController *sec;
    
}
@property(nonatomic,retain)NSMutableDictionary *dict;

-(IBAction)click:(id)sender;

@end

