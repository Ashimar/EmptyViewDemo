//
//  ViewController.m
//  EmptyViewDemo
//
//  Created by myios on 2017/9/2.
//  Copyright © 2017年 郑惠珠. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
#import "BaseView.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UISwitch *mySwitch;
@property (strong, nonatomic) IBOutlet BaseView *aView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_aView showEmptyView:self.aView emptyStyle:VIEW_EMPTY_NORMAL];
}

- (IBAction)switchChangedValueAction:(UISwitch *)sender {
    
    
    
}
- (IBAction)pushTableVC:(UIButton *)sender {
    
    TableViewController *tableVC = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"TableViewController"];
    tableVC.showRefreshButton = _mySwitch.on;
    
    [self.navigationController pushViewController:tableVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
