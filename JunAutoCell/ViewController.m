//
//  ViewController.m
//  JunAutoCell
//
//  Created by Aston K Mac on 15/7/20.
//  Copyright (c) 2015年 Aston K Mac. All rights reserved.
//

#import "ViewController.h"
#import "AKAutoLabelCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *mainTable;
@property (nonatomic, strong) NSMutableArray *muDatas;
@end

@implementation ViewController


- (NSMutableArray *)muDatas
{
    if (_muDatas == nil) {
        _muDatas = [@[
                      @"Autolayout规则：view的frame受约束的控制。约束可以直接影响自身的frame,也可以影响其他View的frame。Autolayout规则：view的frame受约束的控制。约束可以直接影响自身的frame,也可以影响其他View的frame。Autolayout规则：view的frame受约束的控制。约束可以直接影响自身的frame,也可以影响其他View的frame。",
                      @"Autolayout规则：view的frame受约束的控制。约束可以直接影响自身的frame,也可以影响其他View的frame。",@"Autolayout规则：view的frame受约束的控制。约束可以直接影响自身的frame,也可以影响其他View的frame。Autolayout规则：view的frame受约束的控制。约束可以直接影响自身的frame,也可以影响其他View的frame。",
                      @"Autolayout规则：view的frame受约束的控制。约束可以直接影响自身的frame,也可以影响其他View的frame。Autolayout规则：view的frame受约束的控制。约束可以直接影响自身的frame,也可以影响其他View的frame。Autolayout规则：view的frame受约束的控制。约束可以直接影响自身的frame,也可以影响其他View的frame。Autolayout规则：view的frame受约束的控制。约束可以直接影响自身的frame,也可以影响其他View的frame。Autolayout规则：view的frame受约束的控制。约束可以直接影响自身的frame,也可以影响其他View的frame。Autolayout规则：view的frame受约束的控制。约束可以直接影响自身的frame,也可以影响其他View的frame。"] mutableCopy];
    }
    return _muDatas;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.muDatas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"aksdfjakdjf";
    AKAutoLabelCell *cell = [tableView   dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"AKAutoLabelCell" owner:nil options:nil].firstObject;
    }
    
    cell.showLb.text = self.muDatas[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}




@end
