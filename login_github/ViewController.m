//
//  ViewController.m
//  login_github
//
//  Created by Candidate on 9/7/16.
//  Copyright © 2016 Candidate. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    text1.autocorrectionType = UITextAutocorrectionTypeNo;
    text2.autocorrectionType = UITextAutocorrectionTypeNo;
    label1.text = @"Enter your User Name";
   // label1.textAlignment = UITextAlignmentCenter;
    label2.text = @"Enter your Password";
    //label2.textAlignment = UITextAlignmentCenter;
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)click:(id)sender
{
    
    NSString *str = @"https://api.github.com/users/";
    NSString *str1 = [str stringByAppendingString:text1.text];
    NSURL *url = [NSURL URLWithString:str1];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLConnection *connection = [[NSURLConnection alloc]initWithRequest:request delegate:self];
    if(connection)
    {
        receiveData = [NSMutableData data];
    }
//    sec = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
//    [[self navigationController]pushViewController:sec animated:YES];
//    //sec.stt = [receiveData valueForKey:@"avatar_url"];
//
//    [self.navigationItem setTitle:@"User Profile"];
//   

    
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response;
{
    [receiveData setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;
{
    
    [receiveData appendData:data];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection;
{
    if ([text1 hasText])
    {
        NSLog(@"success");
        
    
    _dict = [NSJSONSerialization JSONObjectWithData:receiveData options:NSJSONReadingAllowFragments error:nil];
//    sec = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
//    [[self navigationController]pushViewController:sec animated:YES];
//    sec.img =[_dict valueForKey:@"avatar_url"];
//   sec.stt = [_dict valueForKey:@"login"];
//    sec.stt1 = [_dict valueForKey:@"updated_at"];
    
    //[self.navigationItem setTitle:@"User Profile"];
    
    NSLog(@"%@",_dict);
    
    
    if (_dict[@"message"])
    {
        UIAlertController * alert=   [UIAlertController
                                      alertControllerWithTitle:@"Error"
                                      message:[_dict valueForKey:@"message"]
                                      preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                   handler:nil];
        
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
        
        
    }
        sec = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
        [[self navigationController]pushViewController:sec animated:YES];
        sec.img =[_dict valueForKey:@"avatar_url"];
        sec.stt = [_dict valueForKey:@"login"];
        sec.stt1 = [_dict valueForKey:@"updated_at"];
        sec.stt2 = [_dict valueForKey:@"html_url"];
    }
    else
    {
        UIAlertController * alert=   [UIAlertController
                                      alertControllerWithTitle:@"Username is Empty"
                                      message:@"Please enter your username"
                                      preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                   handler:nil];
        
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error;
{
    NSLog(@"Sorry no internet");
}


   //-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    if([segue.identifier isEqualToString:@"second"])
//    {
//        
//    }
//}

    
    
    
    
    
    
    
    
    


@end
