//
//  MapViewController.m
//  interactiondemo
//
//  Created by Siri Tembunkiart on 9/10/14.
//  Copyright (c) 2014 Bo Assignment. All rights reserved.
//

#import "MapViewController.h"
#import "ViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"labelString %@",_labelString);
    
    self.helloLabel.text = _labelString;
    
}

@end
