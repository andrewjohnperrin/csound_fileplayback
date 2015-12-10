//
//  ViewController.h
//  sampler
//
//  Created by Andrew Perrin on 12/9/15.
//  Copyright (c) 2015 Andrew.Perrin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CsoundObj.h"

@interface ViewController : UIViewController <CsoundObjListener, CsoundBinding>

@property (nonatomic, strong) CsoundObj *csound;

- (IBAction)audioOn:(UISwitch *)sender;


@end

