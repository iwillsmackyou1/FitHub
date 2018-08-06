//
//  Hviewcontroller.m
//  InfoHub2
//
//  Created by Low Bing Xuan on 4/8/18.
//  Copyright © 2018 BR. All rights reserved.
//

#import "Hviewcontroller.h"

@interface Hviewcontroller ()

@end

@implementation Hviewcontroller

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

-(void)viewWillAppear:(BOOL)animated{
   // [self.navigationController setNavigationBarHidden:YES];
    
}
- (IBAction)setupProfileBtn:(id)sender {
    
    
    
    
    
}
@end
