//
//  TeacherMain.m
//  SchoolManagement
//
//  Created by asc3 on 20/03/17.
//  Copyright © 2017 asc6. All rights reserved.
//

#import "TeacherMain.h"

@interface TeacherMain ()

@end

@implementation TeacherMain

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)Tlogout:(id)sender
{
    NSString * storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vc= [storyboard instantiateViewControllerWithIdentifier:@"Loginview"];
    [self presentViewController:vc animated:NO completion:nil];
}
@end
