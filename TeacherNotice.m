//
//  TeacherNotice.m
//  SchoolManagement
//
//  Created by asc3 on 17/03/17.
//  Copyright © 2017 asc6. All rights reserved.
//

#import "TeacherNotice.h"

@interface TeacherNotice ()

@end

@implementation TeacherNotice


- (void)viewDidLoad
{
    [super viewDidLoad];
    
  //  _stdview = [[UITableView alloc] initWithFrame:CGRectMake(17, 158, 343, 128) style:UITableViewStylePlain];
    
    self.stdview.dataSource=self;
    self.stdview.delegate=self;
    
    self.divview.dataSource=self;
    self.divview.delegate=self;
    
    
    _stdarray = [[NSArray alloc]initWithObjects:@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", nil];
    _divarray = [[NSArray alloc]initWithObjects:@"A", @"B", @"C", @"D", @"E", nil];
    
   
};

- (IBAction)stdbtn:(id)sender
{
    if(flag == 1)
    {
        flag=0;
        _stdview.hidden=NO;
        [sender setTitle:@"▲" forState:UIControlStateNormal];
    }
    else
    {
        flag=1;
        _stdview.hidden=YES;
        [sender setTitle:@"▼" forState:UIControlStateNormal];
    }
}

- (IBAction)divbtn:(id)sender
{
    if(flag == 1)
    {
        flag=0;
        _divview.hidden=NO;
        [sender setTitle:@"▲" forState:UIControlStateNormal];
    }
    else
    {
        flag=1;
        _divview.hidden=YES;
        [sender setTitle:@"▼" forState:UIControlStateNormal];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    if(tableView == self.stdview)
    {
        _rows = [_stdarray count];
    }
    if(tableView == self.divview)
    {
        _rows = [_divarray count];
    }
    return _rows;
    
     
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(tableView == self.stdview)
    {
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        cell.textLabel.text =self.stdarray[indexPath.row];
    }
    if(tableView == self.divview)
    {
        if (cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        cell.textLabel.text = self.divarray[indexPath.row];
    }
    return cell;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    if(tableView == self.stdview)
    {
        [self.standardlb setText:[self.stdarray objectAtIndex:indexPath.row]];
    }
    if(tableView == self.divview)
    {
        [self.divisionlb setText:[self.divarray objectAtIndex:indexPath.row]];
    }
    
   
}




@end




