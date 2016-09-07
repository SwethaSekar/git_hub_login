//
//  secondViewController.m
//  login_github
//
//  Created by Candidate on 9/7/16.
//  Copyright © 2016 Candidate. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController
@synthesize img,stt,stt1,stt2;
- (void)viewDidLoad {
   NSLog(@"hello %@",img);
    lab1.text = stt;
    lab2.text = stt1;
    NSURL *url = [NSURL URLWithString:img];
    NSData *data = [NSData dataWithContentsOfURL:url];
    image1.image = [[UIImage alloc] initWithData:data];
    image1.layer.cornerRadius = 60;
    image1.clipsToBounds = YES;
   
    
    //NSMutableDictionary *dict1 = fir.dict;
    //image1.image = [UIImage imageNamed:img];
    
//NSLog(@"%@",dict1);
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)logclick:(id)sender
{
    fir = [self.storyboard instantiateViewControllerWithIdentifier:@"first"];
    [[self navigationController]pushViewController:fir animated:YES];
    UIAlertController * alert1=   [UIAlertController
                                  alertControllerWithTitle:@"Logged Out"
                                  message:@"Succesfully"
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                               handler:nil];
    
    [alert1 addAction:ok];
    [self presentViewController:alert1 animated:YES completion:nil];
}
-(IBAction)git:(id)sender
{
    
    NSString *myurl= stt2;
    NSURL *url = [NSURL URLWithString:myurl];
    [[UIApplication sharedApplication] openURL:url];
    
    
    
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
