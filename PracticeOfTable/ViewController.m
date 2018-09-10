//
//  ViewController.m
//  PracticeOfTable
//
//  Created by 李政恩 on 08/09/2018.
//  Copyright © 2018 李政恩. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UIButton *anotherButtomOutlet;
@end

@implementation ViewController
{
    UILabel *labelWithCodes;
}

@synthesize result;

- (IBAction)anotherButtomAction:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:true];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _name.text = result;
    _name.font = [UIFont boldSystemFontOfSize: 15];
    _name.textColor = [UIColor orangeColor];
    NSLog(@"%@", result);
    
    labelWithCodes = [[UILabel alloc] initWithFrame:CGRectMake(self.view.center.x - 100, self.view.center.y - 25, 200, 50)];
    labelWithCodes.text = @"I add this label with codes!";
    labelWithCodes.font = [UIFont boldSystemFontOfSize: 15];
    [self.view addSubview: labelWithCodes];
    
    
    _anotherButtomOutlet.layer.borderWidth = 1;
    _anotherButtomOutlet.layer.borderColor = UIColor.grayColor.CGColor;
    _anotherButtomOutlet.layer.cornerRadius = 10;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
