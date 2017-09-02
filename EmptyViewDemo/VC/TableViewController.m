//
//  TableViewController.m
//  EmptyViewDemo
//
//  Created by myios on 2017/9/2.
//  Copyright © 2017年 郑惠珠. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self getDataWithOp_type:0];
    
}
- (void)getDataWithOp_type:(NSInteger)op_type {
    [self hideEmptyView:self.view];
    
    if (_showRefreshButton) {
        [self showEmptyView:self.view emptyStyle:EMPTY_SHOW_BUTTON];
    } else {
        
        [self showEmptyView:self.view emptyStyle:EMPTY_NORMAL];
    }
    
    
}
- (void)reloadEmptyViewData {
    NSLog(@"重新请求数据，并刷新列表");
    [self getDataWithOp_type:0];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
