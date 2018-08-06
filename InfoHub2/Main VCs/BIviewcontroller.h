//
//  BIviewcontroller.h
//  InfoHub2
//
//  Created by Student1 on 31/7/18.
//  Copyright © 2018 BR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIviewcontroller : UIViewController

@property(nonatomic, strong) NSMutableArray *credentials;
@property (weak, nonatomic) IBOutlet UITextField *RealNameTxtBox;
@property (weak, nonatomic) IBOutlet UITextField *usernameTxtBox;
@property (weak, nonatomic) IBOutlet UITextField *heightTxtBox;
@property (weak, nonatomic) IBOutlet UITextField *weightTxtBox;
@property (weak, nonatomic) IBOutlet UITextField *heartrateTxtBox;
@property (weak, nonatomic) IBOutlet UITextField *bloodpressureTxtBox;

@property (weak, nonatomic) IBOutlet UITextField *pulserateTxtBox;


@property (weak, nonatomic) IBOutlet UITextField *ageTxtBox;
@property (weak, nonatomic) IBOutlet UITextField *genderTxtBox;



- (IBAction)SaveClick:(id)sender;

@end
