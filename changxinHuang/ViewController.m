//
//  ViewController.m
//  changxinHuang
//
//  Created by yang liu on 07/06/2017.
//  Copyright © 2017 yang liu. All rights reserved.
//

#import "ViewController.h"
#import "detailViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *array;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"查询";
    self.array = @[@"基础信息查询",@"动态管理查询",@"扶贫资金查询",@"项目信息查询",@"异地搬迁查询",@"结对关系查询",@"证件号码重复查询",@"户主异常查询"];
    [self.tableView registerClass: [UITableViewCell class] forCellReuseIdentifier: @"Cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"Cell"];
    cell.textLabel.text = self.array[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath: indexPath animated: YES];
    detailViewController *vc = [[detailViewController alloc] init];
    vc.navigationItem.title = self.array[indexPath.row];
    [self.navigationController pushViewController: vc animated: YES];
}


@end
