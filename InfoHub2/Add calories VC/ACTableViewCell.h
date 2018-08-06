//
//  ACTableViewCell.h
//  InfoHub2
//
//  Created by Low Bing Xuan on 5/8/18.
//  Copyright © 2018 BR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ACTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *foodtitleLB;
@property (weak, nonatomic) IBOutlet UILabel *amtLB;

-(void)updateCells :(NSString*)foodTitle andAmt: (NSString*) amt;

@end
