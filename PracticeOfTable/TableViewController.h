//
//  TableViewController.h
//  PracticeOfTable
//
//  Created by 李政恩 on 08/09/2018.
//  Copyright © 2018 李政恩. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"
// Without this import, I could not customize my tableViewCell.

@interface TableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property NSArray *nameOfUser;
@property NSString *nameOfUserShownInLabel;
@property (strong, nonatomic) NSArray *detailsOfUser;
@property (strong, nonatomic) NSArray *URLOfProfilePhoto;

@end
