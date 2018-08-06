//
//  ViewController.h
//  InfoHub2
//
//  Created by Student1 on 17/7/18.
//  Copyright © 2018 BR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController 

@property(nonatomic, strong)NSMutableArray *credentials;


- (IBAction)btnSetup:(id)sender;


//MY HEALTH VC
@property (weak, nonatomic) IBOutlet UILabel *MHfullname;

@property (weak, nonatomic) IBOutlet UILabel *MHage;

@property (weak, nonatomic) IBOutlet UILabel *MHheartrate;
@property (weak, nonatomic) IBOutlet UILabel *MHbloodpressure;

@property (weak, nonatomic) IBOutlet UILabel *MHheight;

@property (weak, nonatomic) IBOutlet UILabel *MHweight;

@property (weak, nonatomic) IBOutlet UILabel *MHpulserate;
@property (weak, nonatomic) IBOutlet UILabel *MHcalories;

@property (weak, nonatomic) IBOutlet UILabel *MHgender;

@property (nonatomic) NSString * gender;


//BASIC INFO VC

@property (weak, nonatomic) IBOutlet UITextField *BIrealname;

@property (weak, nonatomic) IBOutlet UITextField *BIusername;

@property (weak, nonatomic) IBOutlet UITextField *BIheight;

@property (weak, nonatomic) IBOutlet UITextField *BIweight;

@property (weak, nonatomic) IBOutlet UITextField *BIheartrate;

@property (weak, nonatomic) IBOutlet UITextField *BIbloodpressure;

@property (weak, nonatomic) IBOutlet UITextField *BIage;

@property (weak, nonatomic) IBOutlet UITextField *BIpulserate;

@property (weak, nonatomic) IBOutlet UITextField *BIgender;

- (IBAction)BIsaveprofile:(id)sender;




@end

