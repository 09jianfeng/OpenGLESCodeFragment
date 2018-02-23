//
//  RootTableViewController.m
//  GLCodeFragment
//
//  Created by JFChen on 2018/2/13.
//  Copyright © 2018年 JFChen. All rights reserved.
//

#import "RootTableViewController.h"
#import "texture_01.h"
#import "Texture_02.h"

@interface RootTableViewController ()
@property(nonatomic, strong) NSArray *tableViewData;
@end

@implementation RootTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    _tableViewData = @[@"texture_01",@"Texture_02",@"Texture_03"];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"rootcell"];
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
    return _tableViewData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"rootcell" forIndexPath:indexPath];
    UILabel *label = [[UILabel alloc] initWithFrame:cell.bounds];
    label.text = _tableViewData[indexPath.row];
    [cell addSubview:label];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *classNameStr = _tableViewData[indexPath.row];
    Class className = NSClassFromString(classNameStr);
    id VC = [className new];
    [self.navigationController showViewController:VC sender:nil];
}

@end
