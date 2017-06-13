//
//  TeacherEvent.h
//  SchoolManagement
//
//  Created by asc3 on 22/03/17.
//  Copyright © 2017 asc6. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TeacherEvent : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    BOOL *flag;
}

@property (strong, nonatomic) IBOutlet UILabel *standardlb;
@property (strong, nonatomic) IBOutlet UILabel *divisionlb;

- (IBAction)stdbtn:(id)sender;
- (IBAction)divbtn:(id)sender;

@property NSArray *stdarray;
@property NSArray *divarray;

@property (strong, nonatomic) IBOutlet UITableView *stdview;
@property (strong, nonatomic) IBOutlet UITableView *divview;

@property NSInteger *rows;

@end
