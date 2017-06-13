//
//  ViewController.h
//  SchoolManagement
//
//  Created by asc6 on 3/8/17.
//  Copyright © 2017 asc6. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController
{ bool *flag; }
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) IBOutlet UIButton *drop;

- (IBAction)login:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *selectlb;

@property (strong, nonatomic) IBOutlet UIButton *Tbtn;
@property (strong, nonatomic) IBOutlet UIButton *Pbtn;
- (IBAction)view1SelectionMade:(UIButton *)sender;

- (IBAction)t_click:(id)sender;

- (IBAction)p_click:(id)sender;

@end

