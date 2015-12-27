//
//  ViewControllerSecond.m
//  兔狗面试题
//
//  Created by Lemon on 15/12/27.
//  Copyright © 2015年 LemonXia. All rights reserved.
//

#import "ViewControllerSecond.h"
#import "TableViewCell.h"

@interface ViewControllerSecond ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *top_button;
@property (weak, nonatomic) IBOutlet UITableView *tabelView;

@end

@implementation ViewControllerSecond
{
    CGFloat oldOffset;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"看家装";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * cellID = @"cellID";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if(!cell){
        cell = [[[NSBundle mainBundle]loadNibNamed:@"TableViewCell" owner:nil options:nil]firstObject];
        
    }
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 257;
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    [self setNeedsStatusBarAppearanceUpdate];
    if (scrollView.contentOffset.y > oldOffset ) {
        self.top_button.hidden = YES;
    } else {
        self.top_button.hidden = NO;
        
    }
    oldOffset = scrollView.contentOffset.y;
}

- (IBAction)buttonClick:(id)sender {
    [self.tabelView setContentOffset:CGPointMake(0, 0) animated:YES];
}

- (BOOL)prefersStatusBarHidden {
    if (self.tabelView.contentOffset.y > oldOffset) {
        return YES;
    }else {
    return NO;
    }
}
@end
