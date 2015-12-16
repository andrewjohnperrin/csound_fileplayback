//
//  ViewController.h
//  sampler
//
//  Created by Andrew Perrin on 12/9/15.
//  Copyright (c) 2015 Andrew.Perrin. All rights reserved.
//

//import uikit which allows you to access ios UI widgets
#import <UIKit/UIKit.h>
//import csound obj, the guts of csound API
#import "CsoundObj.h"
#import "CsoundUI.h"

//next is the class definition, every ios class definition starts with @interface
//@interface *name of class* and the colon implies that the class will inherit functionality of UIViewController
//protocol definitions placed in <>




@interface ViewController : UIViewController <CsoundObjListener, CsoundBinding>
//declare a csound object
@property (nonatomic, strong) CsoundObj *csound;
//allows ui interactions to communicate with .m file

@property (nonatomic, retain) IBOutlet UIButton *toggleButton;

- (IBAction)buttonTap:(UIButton *)sender;


- (IBAction)londonButton:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIButton *londonToggle;


@end

