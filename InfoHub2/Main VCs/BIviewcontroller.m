//
//  BIviewcontroller.m
//  InfoHub2
//
//  Created by Student1 on 31/7/18.
//  Copyright © 2018 BR. All rights reserved.
//

#import "BIviewcontroller.h"
#import "ViewController.h"

@interface BIviewcontroller ()

@end

@implementation BIviewcontroller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *savedBIarray = [userDefaults objectForKey:@"savedBI"];
    
    NSMutableArray *savedBIarrayMutable = [[NSMutableArray alloc] initWithArray:savedBIarray];
    
    //check if savedarray is empty or not, if not, fill in textboxes with their respective values.
    
    
    if(savedBIarrayMutable == nil){
        savedBIarrayMutable = [NSMutableArray new];
    }else{
        
        //not empty
        
        self.RealNameTxtBox.text = savedBIarrayMutable[0];
        self.usernameTxtBox.text = savedBIarrayMutable[1];
        self.heightTxtBox.text = savedBIarrayMutable[2];
        self.weightTxtBox.text = savedBIarrayMutable[3];
         self.heartrateTxtBox.text = savedBIarrayMutable[4];
         self.bloodpressureTxtBox.text = savedBIarrayMutable[5];
         self.pulserateTxtBox.text = savedBIarrayMutable[6];
         self.ageTxtBox.text = savedBIarrayMutable[7];
         self.genderTxtBox.text = savedBIarrayMutable[8];
        
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)SaveClick:(id)sender {
    [self.navigationController popViewControllerAnimated: YES];
    ViewController* vc = (ViewController*)self.navigationController.topViewController;
    
    self.credentials[0] = self.RealNameTxtBox.text;
    self.credentials[1] = self.usernameTxtBox.text;
    self.credentials[2] = self.heightTxtBox.text;
    self.credentials[3] = self.weightTxtBox.text;
    self.credentials[4] = self.heartrateTxtBox.text;
    self.credentials[5] = self.bloodpressureTxtBox.text;
    self.credentials[6] = self.pulserateTxtBox.text;
    self.credentials[7] = self.ageTxtBox.text;
    self.credentials[8] = self.genderTxtBox.text;
    
    //save to userdefaults
    // Get the standardUserDefaults object, store your UITableView data array against a key, synchronize the defaults
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:self.credentials forKey:@"savedBI"];
    [userDefaults synchronize];
    
    //load userdefault settings
    NSArray *savedBIarray = [userDefaults objectForKey:@"savedBI"];
    NSMutableArray *savedBIarrayMutable = [[NSMutableArray alloc] initWithArray:savedBIarray];
    
    [vc viewDidLoad];
    [vc viewWillAppear:YES];
    vc.credentials = savedBIarrayMutable;
}
@end
