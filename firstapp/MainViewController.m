//
//  MainViewController.m
//  firstapp
//
//  Created by HOCVIEN on 4/18/14.
//  Copyright (c) 2014 HOCVIEN. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController () <UITextFieldDelegate> {
    
}

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.winTitle.text = @"Thong Tin Phim";
    
    self.myTextField.text = @"Tim kiem...";
    self.myTextField.layer.borderColor = [[UIColor lightGrayColor] CGColor];
    self.myTextField.layer.borderWidth = 1.0f;
    self.myTextField.delegate = self;
    
    NSURL *url = [NSURL URLWithString:@"https://d13yacurqjgara.cloudfront.net/users/52758/screenshots/1513803/khi-khi_milk_co_jay_fletcher_1x.jpg"];
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    UIImage *image = [UIImage imageWithData:data];
    [self.myImage setImage:image];
    
//    CGRect frame = CGRectMake(0, 0, 100, 200);
//    UILabel *lbl = [[UILabel alloc] initWithFrame:frame];
//    lbl.text = @"bbbbbb";
//    [self.view addSubview:lbl];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
//    NSLog(@"textFieldShouldBeginEditing");
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField {
//    NSLog(@"textFieldDidBeginEditing");
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
//    NSLog(@"textFieldShouldEndEditing");
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
//    NSLog(@"textFieldDidEndEditing");
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSLog(@"%@ - %@", textField.text, string);
    return YES;
}
- (BOOL)textFieldShouldClear:(UITextField *)textField {
//    NSLog(@"textFieldShouldClear");
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
//    NSLog(@"textFieldShouldReturn");
    [textField resignFirstResponder];
    return YES;
}

@end