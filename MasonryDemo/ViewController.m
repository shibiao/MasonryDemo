//
//  ViewController.m
//  MasonryDemo
//
//  Created by sycf_ios on 16/7/12.
//  Copyright © 2016年 sycf_ios. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
#import <Masonry.h>
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *myTableView;//自定义TableView
@property (nonatomic,strong) NSArray *dataArr;//数据
@end

@implementation ViewController
-(UITableView *)myTableView
{
    if (!_myTableView) {
        _myTableView=[[UITableView alloc]init];
        _myTableView.delegate=self;
        _myTableView.dataSource=self;
    }
    return _myTableView;
}
-(NSArray *)dataArr
{
    if (!_dataArr) {
        _dataArr=@[@"",@"jadoisfqoiwejfogqji",@"ajsgrqgwegrewgsdfgsfgsdgsdgfsdgsdfgsdgsgdfoiqjoirwgjioqjrigjopwrpqijgknoifjsklfdjakasljfakj",@"",@"qwssgrqgwegrewgsdfgsfgsdgsdgfsdgsdfgsdgsgdfoiqjoirwgjioqjrigjopwrpqijgknoifjsklfdjakasljfakjgrqgwegrewgsdfgsfgsdgsdgfsdgsdfgsdgsgdfoiqjoirwgjioqjrigjopwrpqijgknoifjsklfdjakasljfakjrwetgpltl;wtgrtwekgpkjowkegtrew",@"ajsdfoiqjsgrqgwegrewgsdfgsfgsdgsdgfsdgsdfgsdgsgdfoiqjoirwgjioqjrigjopwrpqijgknoifjsklfdjakasljfakjsgrqgwegrewgsdfgsfgsdgsdgfsdgsdfgsdgsgdfoiqjoirwgjioqjrigjopwrpqijgknoifjsklfdjakasljfakjsgrqgwegrewgsdfgsfgsdgsdgfsdgsdfgsdgsgdfoiqjoirwgjioqjrigjopwrpqijgknoifjsklfdjakasljfakjoirwgjioqjrigjopwrpqijgknoifjsklfdjakasljfakj",@"",@"jadoisfqoiwejfogqji",@"ajsdfoiqjoirwgjioqjrigjopwrpqijgknoifjsklfdjasgrqgwegrewgsdfgsfgsdgsdgfsdgsdfgsdgsgdfoiqjoirwgjioqjrigjopwrpqijgknoifjsklfdjakasljfakjsgrqgwegrewgsdfgsfgsdgsdgfsdgsdfgsdgsgdfoiqjoirwgjioqjrigjopwrpqijgknoifjsklfdjakasljfakjsgrqgwegrewgsdfgsfgsdgsdgfsdgsdfgsdgsgdfoiqjoirwgjioqjrigjopwrpqijgknoifjsklfdjakasljfakjkasljfakj",@"aadsfqwrjsdfoiqjoirwgjioqjrigjopwrpqijgknoifjsklfdjakasljfakj"];
    }
    return _dataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.myTableView];
    [self.myTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).insets(UIEdgeInsetsMake(20, 0, 0, 0));
    }];
    [self.myTableView registerClass:[CustomCell class] forCellReuseIdentifier:@"cell"];
    self.myTableView.estimatedRowHeight=100;
}
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell=[[CustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.titleLabel.text=self.dataArr[indexPath.row];
    cell.contentImageView.image=[UIImage imageNamed:@"1"];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
