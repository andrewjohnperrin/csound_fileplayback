//
//  ViewController.m
//  sampler
//
//  Created by Andrew Perrin on 12/9/15.
//  Copyright (c) 2015 Andrew.Perrin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *audioOnSwitch;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.csound = [[CsoundObj alloc] init];
    [self.csound addListener:self];
    [self.csound addBinding:self];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)audioOn:(UISwitch *)sender {
    if (sender.on) {
        NSString *tempFile = [[NSBundle mainBundle] pathForResource:@"diskin" ofType:@"csd"];
        
        [self.csound play:tempFile];
        [self.csound stop];
    }
    else {
        [self.csound stop];
    }

}


- (IBAction)audioButton:(UIButton *)sender {

    self.audioOnSwitch.on = NO;
    [self.csound stop];

}


-(IBAction)sendScoreTest:(id)sender{
    NSString *india = [NSString stringWithFormat:@"i1 0 15\n"];
    [self.csound sendScore: india];
    
}


- (IBAction)generateDataNote2:(id)sender {
    

    NSString *london = [NSString stringWithFormat:@"i2 0 15\n"];
    [self.csound sendScore:london];
}





-(void)setup:(CsoundObj *)csoundObj{
    
}


@end
