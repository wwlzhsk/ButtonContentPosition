//
//  ViewController.m
//  ButtonContentPosition
//
//  Created by pactera on 2016/11/21.
//  Copyright © 2016年 宋可. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+SKImageTitleStyle.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *defaultBtn;//默认按钮
@property (weak, nonatomic) IBOutlet UIButton *picLeft;//图片在左，文本在右
@property (weak, nonatomic) IBOutlet UIButton *picRight;//图片在右，文本在左
@property (weak, nonatomic) IBOutlet UIButton *picTop;//图片在上，文本在下
@property (weak, nonatomic) IBOutlet UIButton *picBottom;//图片在下，文本在上
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];CGFloat padding = 10.0;
    
    [self.picLeft setButtonImageTitleStyle:SKButtonImageTitleStyleLeft padding:padding];
    [self.picRight setButtonImageTitleStyle:SKButtonImageTitleStyleRight padding:padding];
    [self.picTop setButtonImageTitleStyle:SKButtonImageTitleStyleTop padding:padding];
    [self.picBottom setButtonImageTitleStyle:SKButtonImageTitleStyleBottom padding:padding];
}


@end
