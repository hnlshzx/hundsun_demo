//
//  HsGridScorllViewController.m
//  HsDefindViewDemo
//
//  Created by 123 on 14-7-3.
//  Copyright (c) 2014年 123. All rights reserved.
//

#import "HsGridScorllViewController.h"
#import "HsUIGridView.h"

@interface HsGridScorllViewController ()

@property (nonatomic,strong) HsUIGridView *gridView;

@end

@implementation HsGridScorllViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.gridView = (HsUIGridView *)self.view;
    self.gridView.scrollEnabled = YES;
    self.gridView.dataSource = self;
    // Do any additional setup after loading the view from its nib.
}

- (NSInteger)numberOfRowsInGridView:(HsUIGridView *)gridview{
    return 20;
}

- (HsUIGridViewCell*)gridView:(HsUIGridView*)gridview cellAtInSection:(NSIndexPath*)indepath{
    HsUIGridViewCell *cell = [[HsUIGridViewCell alloc] initWithStyle:GridViewCellStyleWithImage];
    cell.imageView.image = [UIImage imageNamed:@"0.jpg"];
    cell.imageMargin = HsUIGridViewPadingMake(10, 20, 5, 20);
    cell.content.text = @"哈哈哈哈";
    return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
