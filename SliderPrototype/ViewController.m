//
//  ViewController.m
//  SliderPrototype
//
//  Created by Weinstein, Randy - Nick.com on 4/10/14.
//  Copyright (c) 2014 Viacom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *playheadPosition;
- (IBAction)playheadUpdate:(id)sender;
@property (weak, nonatomic) IBOutlet UISlider *theSlider;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.theSlider.value = 1800.0;
    [self playheadUpdate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playheadUpdate:(id)sender {
    int sliderIntValue = (int)floor(self.theSlider.value);
    self.playheadPosition.text = [NSString stringWithFormat:@"%d",sliderIntValue];
}
@end
