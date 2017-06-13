//
//  TeacherNotice.h
//  SchoolManagement
//
//  Created by asc3 on 17/03/17.
//  Copyright © 2017 asc6. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TeacherNotice : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    BOOL flag;
}

@property NSArray *stdarray;
@property NSArray *divarray;

@property (strong, nonatomic) IBOutlet UILabel *standardlb;
@property (strong, nonatomic) IBOutlet UILabel *divisionlb;

- (IBAction)stdbtn:(id)sender;
- (IBAction)divbtn:(id)sender;

@property (strong, nonatomic) IBOutlet UITableView *stdview;
@property (strong, nonatomic) IBOutlet UITableView *divview;

@property NSInteger *rows;



@end
