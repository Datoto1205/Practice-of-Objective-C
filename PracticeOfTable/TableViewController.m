//
//  TableViewController.m
//  PracticeOfTable
//
//  Created by 李政恩 on 08/09/2018.
//  Copyright © 2018 李政恩. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

@synthesize nameOfUser;
@synthesize nameOfUserShownInLabel;
@synthesize detailsOfUser;
@synthesize URLOfProfilePhoto;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    nameOfUser = @[@"Alan", @"Betty", @"Cindy", @"Gates"];
    detailsOfUser = @[@"Professor", @"Student", @"Plumber", @"Teacher"];
    URLOfProfilePhoto = @[
                          @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1537174487&di=5ca3b13d9a7fa73fbe3a794711155c92&imgtype=jpg&er=1&src=http%3A%2F%2Fs3.sinaimg.cn%2Fmiddle%2F934e18c4gaf63d64d73d2%26amp%3B690%26amp%3B690",
                          @"https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=4180850729,644251773&fm=26&gp=0.jpg",
                          @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1537174733&di=898d75069e6dd33cb5a82bb044cb48e3&imgtype=jpg&er=1&src=http%3A%2F%2Fww2.sinaimg.cn%2Fbmiddle%2F6b28963bjw1eg15cpbmp8j20e80pa40o.jpg",
                          @"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2491447484,571109371&fm=26&gp=0.jpg"];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return nameOfUser.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Name" forIndexPath: indexPath];
    
    
    
    cell.titleLabel.text = nameOfUser[indexPath.row];
    cell.discriptionLabel.text = detailsOfUser[indexPath.row];
    //cell.onlyPhoto.image = [UIImage imageNamed:@"My graduated profile photo (2 inch) copy.png"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    [NSURLConnection sendAsynchronousRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:URLOfProfilePhoto[indexPath.row]]] queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        if (!connectionError) {
            UIImage *img = [[UIImage alloc] initWithData:data];
            cell.onlyPhoto.image = img;
        }else{
            NSLog(@"%@",connectionError);
        }
    }];
    /*//The codes below were found on https://stackoverflow.com/questions/3521310/how-to-increase-the-uitableview-separator-height
    CGRect sizeRect = [UIScreen mainScreen].applicationFrame;
    NSInteger separatorHeight = 10;
    UIView * additionalSeparator = [[UIView alloc] initWithFrame:CGRectMake(0,cell.frame.size.height-separatorHeight,sizeRect.size.width,separatorHeight)];
    additionalSeparator.backgroundColor = [UIColor colorWithRed:240/255.0 green:240/255.0 blue:240/255.0 alpha:1];
    [cell addSubview:additionalSeparator];
    // The codes above were found on stackoverflow.*/
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ViewController *vc = segue.destinationViewController;
    vc.result = nameOfUserShownInLabel;
}
    
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    nameOfUserShownInLabel = nameOfUser[indexPath.row];
    [self performSegueWithIdentifier:@"toDetails" sender:self];
    
}




/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

/
*/

@end
