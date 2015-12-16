//
//  ViewController.m
//  sampler
//
//  Created by Andrew Perrin on 12/9/15.
//  Copyright (c) 2015 Andrew.Perrin. All rights reserved.
//

#import "ViewController.h"


@interface ViewController () {

    IBOutlet UISlider *uiSlider;
    IBOutlet UILabel  *uiLabel;
    
}

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.csound = [[CsoundObj alloc] init];
    [self.csound addListener:self];
   [self.csound addBinding:self];
    NSString *tempFile = [[NSBundle mainBundle] pathForResource:@"diskin" ofType:@"csd"];
    [self.csound play:tempFile];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setup:(CsoundObj *)csoundObj{
    
}

- (IBAction)buttonTap:(UIButton *)sender {

self.toggleButton.selected = !self.toggleButton.selected;
   
    if (self.toggleButton.selected == YES){
        
        NSString *india= [NSString stringWithFormat:@"i1 0 45\n"];
        [self.csound sendScore:india];
        NSLog(@"bitchON");
        CsoundUI *csoundUI = [[CsoundUI alloc] initWithCsoundObj:self.csound];
        [csoundUI addLabel:uiLabel forChannelName:@"slider"];
        [csoundUI addSlider:uiSlider forChannelName:@"slider"];
    
    }
    
    else{
        NSString *indiastop = [NSString stringWithFormat:@"i99 0 0.3 1\n"];
        [self.csound sendScore:indiastop];
        NSLog(@"bitchOFF");
        //this will stop the csound file and stop playback
        //       [self.csound stop];

    }
}

- (IBAction)londonButton:(UIButton *)sender {
    self.londonToggle.selected = !self.londonToggle.selected;
    
    if (self.londonToggle.selected == YES){
        NSString *london = [NSString stringWithFormat:@"i2 0 45\n"];
        [self.csound sendScore:london];
        }
    else {
        NSString *londonStop = [NSString stringWithFormat:@"i99 0 0.3 2"];
        [self.csound sendScore:londonStop];
        
    }

}








@end
