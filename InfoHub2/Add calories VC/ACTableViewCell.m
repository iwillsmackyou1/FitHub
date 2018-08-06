//
//  ACTableViewCell.m
//  InfoHub2
//
//  Created by Low Bing Xuan on 5/8/18.
//  Copyright © 2018 BR. All rights reserved.
//

#import "ACTableViewCell.h"

@implementation ACTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)updateCells :(NSString*)foodTitle andAmt: (NSString*) amt{
    
    self.foodtitleLB.text = foodTitle;
    self.amtLB.text = [amt stringByAppendingString:@" kcal"];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
