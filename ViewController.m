//
//  ViewController.m
//  SchoolManagement
//
//  Created by asc6 on 3/8/17.
//  Copyright © 2017 asc6. All rights reserved.
//

#import "ViewController.h"
#import "ParentTeacherEvaluation.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize drop,view1,selectlb;
- (void)viewDidLoad
{
    [super viewDidLoad];

   // _cardview.layer.shadowRadius = 6;
 //   _cardview.layer.shadowOpacity = 5;
  /*  [self addSubview:cp_mask];
    [self addSubview:pp_circle];
    [self addSubview:pp_mask];

    self.rateView.notSelectedImage = [UIImage imageNamed:@"empty-star.jpg"];
    self.rateView.halfSelectedImage = [UIImage imageNamed:@"half-star.jpg"];
    self.rateView.fullSelectedImage = [UIImage imageNamed:@"fill-star.jpg"];
    self.rateView.rating = 0;
    self.rateView.editable = YES;
    self.rateView.maxRating = 5;
    self.rateView.delegate = self;
    
    */
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)drop:(id)sender
{
    if (flag == 0) {
        flag = 1;
        self.view1.hidden = NO;
        [sender setTitle:@"▲" forState:UIControlStateNormal];
    } else {
        flag = 0;
        self.view1.hidden = YES;
        [sender setTitle:@"▼" forState:UIControlStateNormal];
    }
}

- (IBAction)view1SelectionMade:(UIButton *)sender
{
   self.selectlb.text = sender.titleLabel.text;
  //  [self.drop setTitle:@"▼" forState:UIControlStateNormal];
    self.drop.tag = 0;
    self.view1.hidden = YES;
    
   
}
- (IBAction)t_click:(id)sender
{
    self.selectlb.text  = self.Tbtn.titleLabel.text;
    self.view1.hidden = YES;
    [self.drop setTitle:@"▼" forState:UIControlStateNormal];

}

- (IBAction)p_click:(id)sender
{
    self.selectlb.text  = self.Pbtn.titleLabel.text;
    self.view1.hidden = YES;
    [self.drop setTitle:@"▼" forState:UIControlStateNormal];
}





- (IBAction)login:(id)sender
{
    NSString * storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vc;
   if([selectlb.text isEqualToString:@"Teacher"] )
   {
       vc= [storyboard instantiateViewControllerWithIdentifier:@"techernav"];
    [self presentViewController:vc animated:NO completion:nil];
   }
    else if([selectlb.text isEqualToString:@"Parent"])
    {
        vc= [storyboard instantiateViewControllerWithIdentifier:@"parentnav"];
        [self presentViewController:vc animated:NO completion:nil];
    }
}
@end
