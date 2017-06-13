//
//  ParentAttendance.h
//  SchoolManagement
//
//  Created by asc3 on 25/03/17.
//  Copyright © 2017 asc6. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParentAttendance : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    BOOL flag;
}
@property (strong, nonatomic) IBOutlet UILabel *Monthlb;
- (IBAction)Monthbtn:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *Monthview;
@property NSArray *Montharray;
@end
