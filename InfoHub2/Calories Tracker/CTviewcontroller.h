//
//  CTviewcontroller.h
//  InfoHub2
//
//  Created by Low Bing Xuan on 4/8/18.
//  Copyright © 2018 BR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CTviewcontroller : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray * savedMacrosarrayMutable;
}

- (IBAction)backBtn:(id)sender;


@end
