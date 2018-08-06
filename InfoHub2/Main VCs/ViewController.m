//
//  ViewController.m
//  InfoHub2
//
//  Created by Student1 on 17/7/18.
//  Copyright © 2018 BR. All rights reserved.
//

#import "ViewController.h"
#import "BIviewcontroller.h"

@interface ViewController ()


    


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.navigationController.navigationBar setValue:@(YES) forKeyPath:@"hidesShadow"];
    
   
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *savedBIarray = [userDefaults objectForKey:@"savedBI"];
    
    NSMutableArray *savedBIarrayMutable = [[NSMutableArray alloc] initWithArray:savedBIarray];
    
    if(savedBIarray == nil){
        
        savedBIarray = [NSMutableArray new];
        
    }else{
    


        
        
                _MHfullname.text = [savedBIarrayMutable objectAtIndex:0];
                
                _MHage.text = [[savedBIarrayMutable objectAtIndex:7] stringByAppendingString:@" Years Old"];
                
                _MHheartrate.text = [[savedBIarrayMutable objectAtIndex:4] stringByAppendingString:@" bpm"];
                
                _MHbloodpressure.text = [[savedBIarrayMutable objectAtIndex:5] stringByAppendingString:@" mmHg"];
                
                _MHheight.text = [[savedBIarrayMutable objectAtIndex:2] stringByAppendingString:@" cm"];
                
                _MHweight.text = [[savedBIarrayMutable objectAtIndex:3] stringByAppendingString:@" kg"];
                
                _MHpulserate.text = [[savedBIarrayMutable objectAtIndex:6] stringByAppendingString:@" bpm"];
                
                _MHcalories.text = @"2341 kcal";
                
                
                _MHgender.text =  [savedBIarrayMutable objectAtIndex:8];
                
        


                
                
        
    }
    
   
    
}


    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue destinationViewController] isKindOfClass: [BIviewcontroller class]]) {
        BIviewcontroller* vc = [segue destinationViewController];
        
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        NSArray *savedBIarray = [userDefaults objectForKey:@"savedBI"];
        
        NSMutableArray *savedBIarrayMutable = [[NSMutableArray alloc] initWithArray:savedBIarray];
        vc.credentials = savedBIarrayMutable;
    }
}




- (IBAction)btnSetup:(id)sender {
    
}
- (IBAction)BIsaveprofile:(id)sender {
    
 //   [self.credentials addObject:_BIrealname.text];
    
    
    
    
    
}
@end
