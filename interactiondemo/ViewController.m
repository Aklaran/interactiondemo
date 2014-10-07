//
//  ViewController.m
//  interactiondemo
//
//  Created by Siri Tembunkiart on 9/9/14.
//  Copyright (c) 2014 Bo Assignment. All rights reserved.
//

#import "ViewController.h"
#import "MapViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//-(id)initWithCoder:(NSCoder *)aDecoder
//{
//    if (self = [super initWithCoder:aDecoder]) {
//        _testArray = [[NSArray alloc]init];
//    }
//    return self;
//}

-(void)viewDidAppear:(BOOL)animated
{ [super viewDidAppear:animated];
    _testArray = @[_customTextField, _customTextField2, _customTextField3];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// [NSArray arraywitharray:MyArray]; class method - lives in auto-release memory pool
// [[NSArray alloc] initwithArray:MyArray]; instance method - destroyed when the call is finished (almost) ALWAYS USE
//- (NSArray)initWithObjects:(id)firstObj,secondObj, thirdObj, nil
//

- (IBAction)changeTextClick:(id)sender
{
    NSString *customText = self.customTextField.text;
    for (__weak UITextField* weakTextField in _customTextFields) {
        NSLog(@"customTextFields text: %@ tag: %li", weakTextField.text, (long)weakTextField.tag);
        if (weakTextField.tag == 1) {
            NSLog(@"our tag is 1");
            customText = weakTextField.text;
        }
        
    }
    NSLog(@"customText %@",customText);
    MapViewController* MapVC=[self.storyboard instantiateViewControllerWithIdentifier:@"MapViewController"];
    MapVC.labelString = customText;
    [self.customTextField resignFirstResponder];
    [self.navigationController pushViewController:MapVC animated:YES];
    
    
    
    
    
    
    
    
    
    
//    NSArray *MyArray = @[ @1, @5, @7, @21];
//    for (NSInteger i = 0; i<MyArray.count; i++) {
//        NSLog(@"Subscript: %@",MyArray[i]);
//    }
}
- (IBAction)changeTextClick2:(id)sender
{
//    NSString *customText2 = self.customTextField2.text;
//    for (__weak UITextField* weakTextField2 in _customTextFields) {
//        NSLog (@"customTextFields text: %@ tag: %li", weakTextField2.text, (long)weakTextField2.tag);
//        if (weakTextField2.tag == 2) {
//            NSLog (@"our tag is 2");
//            customText2 = weakTextField2.text;
//        }
//        NSLog(@"customText %@",customText2);
        MapViewController* MapVC=[self.storyboard instantiateViewControllerWithIdentifier:@"MapViewController"];
//        MapVC.labelString = customText2;
        [self.customTextField resignFirstResponder];
        [self.navigationController pushViewController:MapVC animated:YES];
    }
//}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
{
    [self.customTextField resignFirstResponder];
}



@end
