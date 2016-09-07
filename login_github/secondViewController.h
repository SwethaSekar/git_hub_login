//
//  secondViewController.h
//  login_github
//
//  Created by Candidate on 9/7/16.
//  Copyright © 2016 Candidate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
@class ViewController;

@interface secondViewController : UIViewController
{
    
    IBOutlet UIImageView *image1;
    IBOutlet UILabel *lab1;
    
    IBOutlet UILabel *lab2;
    IBOutlet UIView *navlabel;
    ViewController *fir;
    IBOutlet UIButton *navbut;
   }

@property(nonatomic,retain)UIImage *img;
@property(nonatomic,retain)NSString *stt;
@property(nonatomic,retain)NSString *stt1;
@property(nonatomic,retain)NSString *stt2;

-(IBAction)logclick:(id)sender;
-(IBAction)git:(id)sender;
@end
