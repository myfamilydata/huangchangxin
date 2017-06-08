//
//  detailViewController.m
//  changxinHuang
//
//  Created by yang liu on 07/06/2017.
//  Copyright © 2017 yang liu. All rights reserved.
//

#import "detailViewController.h"
#import "jqueryViewController.h"

@interface detailViewController ()

@end

@implementation detailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = self.detailTitle;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)queryButton:(UIButton *)sender
{
    jqueryViewController *vc = [[jqueryViewController alloc] init];
    [self.navigationController pushViewController: vc animated: YES];
}


@end
