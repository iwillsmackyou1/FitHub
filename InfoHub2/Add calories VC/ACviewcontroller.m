//
//  ACviewcontroller.m
//  InfoHub2
//
//  Created by Low Bing Xuan on 5/8/18.
//  Copyright © 2018 BR. All rights reserved.
//

#import "ACviewcontroller.h"

@interface ACviewcontroller ()

@end

@implementation ACviewcontroller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     self.navigationController.navigationBarHidden = YES;
   
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backBtn:(id)sender {
     [self.navigationController popViewControllerAnimated: YES];
}

- (IBAction)addCaloriesBtn:(id)sender {
    
    NSString *mealTxtBoxInput = [self.mealTxtBox titleForSegmentAtIndex:self.mealTxtBox.selectedSegmentIndex];

    if([self.nameTxtBox.text  isEqualToString: @""] || [self.amtTxtBox.text isEqualToString:@""] ){
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Add not successful"
                                                        message:@"All fields must be filled."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        
    }else{
        
        
        [self.navigationController popViewControllerAnimated:YES];
        
        
        self.macros[0] = self.nameTxtBox.text;
        self.macros[1]= self.amtTxtBox.text;
        self.macros[2] = mealTxtBoxInput;
        
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults setObject:self.macros forKey:@"savedMacros"];
        [userDefaults synchronize];
        
       
        
        
    }
    
}





@end
