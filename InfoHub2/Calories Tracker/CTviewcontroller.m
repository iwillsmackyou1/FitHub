//
//  CTviewcontroller.m
//  InfoHub2
//
//  Created by Low Bing Xuan on 4/8/18.
//  Copyright © 2018 BR. All rights reserved.
//

#import "CTviewcontroller.h"
#import "Hviewcontroller.h"
#import "ACTableViewCell.h"

@interface CTviewcontroller ()

@end

@implementation CTviewcontroller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationController.navigationBarHidden = NO;
    
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *savedMacrosarray = [userDefaults objectForKey:@"savedMacros"];
    
    NSMutableArray *savedMacrosarrayMutable = [[NSMutableArray alloc] initWithArray:savedMacrosarray];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    
}

-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:YES];
    
}


- (IBAction)backBtn:(id)sender {
    [self.navigationController popViewControllerAnimated: YES];
}


- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return savedMacrosarrayMutable.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    ACTableViewCell *ac = [tableView dequeueReusableCellWithIdentifier:@"foodCell" forIndexPath:indexPath];
    [ac updateCells:[savedMacrosarrayMutable objectAtIndex:indexPath.row] andAmt:[savedMacrosarrayMutable objectAtIndex:indexPath.row]];
    ac.backgroundColor = [UIColor clearColor];
    
    return ac;
    
}



@end
