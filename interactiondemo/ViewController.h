//
//  ViewController.h
//  interactiondemo
//
//  Created by Siri Tembunkiart on 9/9/14.
//  Copyright (c) 2014 Bo Assignment. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *changeTextButton;
@property (weak, nonatomic) IBOutlet UIButton *changeTextButton2;
@property (weak, nonatomic) IBOutlet UIButton *changeTextButton3;


@property (weak, nonatomic) IBOutlet UITextField *customTextField;
@property (weak, nonatomic) IBOutlet UITextField *customTextField2;
@property (weak, nonatomic) IBOutlet UITextField *customTextField3;
@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray* customTextFields;



@end
