//
//  ParentAttendance.m
//  SchoolManagement
//
//  Created by asc3 on 25/03/17.
//  Copyright © 2017 asc6. All rights reserved.
//

#import "ParentAttendance.h"

@interface ParentAttendance ()

@end

@implementation ParentAttendance

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.Monthview
    .dataSource=self;
    self.Monthview.delegate=self;
    
    
    _Montharray = [[NSArray alloc]initWithObjects:@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", nil];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)Monthbtn:(id)sender
{
    if(flag == 1)
    {
        flag=0;
        _Monthview.hidden=NO;
        [sender setTitle:@"▲" forState:UIControlStateNormal];
    }
    else
    {
        flag=1;
        _Monthview.hidden=YES;
        [sender setTitle:@"▼" forState:UIControlStateNormal];
    }
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_Montharray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text =self.Montharray[indexPath.row];
    return cell;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
     [self.Monthlb setText:[self.Montharray objectAtIndex:indexPath.row]];
}
    
@end
