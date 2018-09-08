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

@end

@implementation ViewController
{
    UILabel *labelWithCodes;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _name.text = @"I add this label with Storyboard!";
    _name.font = [UIFont boldSystemFontOfSize: 15];
    _name.textColor = [UIColor orangeColor];
    
    labelWithCodes = [[UILabel alloc] initWithFrame:CGRectMake(self.view.center.x - 100, self.view.center.y - 25, 200, 50)];
    labelWithCodes.text = @"I add this label with codes!";
    labelWithCodes.font = [UIFont boldSystemFontOfSize: 15];
    [self.view addSubview: labelWithCodes];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)SetButtom {
    
}

@end
