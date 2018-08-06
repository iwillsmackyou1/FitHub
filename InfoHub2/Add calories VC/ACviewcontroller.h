//
//  ACviewcontroller.h
//  InfoHub2
//
//  Created by Low Bing Xuan on 5/8/18.
//  Copyright © 2018 BR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ACviewcontroller : UIViewController 
- (IBAction)backBtn:(id)sender;
- (IBAction)addCaloriesBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *nameTxtBox;

@property (weak, nonatomic) IBOutlet UITextField *amtTxtBox;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mealTxtBox;
@property(nonatomic, strong) NSMutableArray *macros;

@end
