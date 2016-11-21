//
//  UIButton+SKImageTitleStyle.h
//  PicturesStretching
//
//  Created by songke on 2016/11/18.
//  Copyright © 2016年 songke. All rights reserved.
//

#import <UIKit/UIKit.h>
/*
 针对同时设置了Image和Title的场景时UIButton中的图片和文字的关系
 */
typedef NS_ENUM(NSInteger, SKButtonImageTitleStyle ) {
    SKButtonImageTitleStyleLeft,         //图片在左，文字在右，整体居中。
    SKButtonImageTitleStyleRight,        //图片在右，文字在左，整体居中。
    SKButtonImageTitleStyleTop,          //图片在上，文字在下，整体居中。
    SKButtonImageTitleStyleBottom        //图片在下，文字在上，整体居中。
};

@interface UIButton (SKImageTitleStyle)

/**
 * 调整按钮的文本和image的布局，前提是title和image同时存在才会调整,按钮的大小确定之后再去调用
 *
 * @param style ButtonImageTitleStyle 图片位置
 *
 * @param padding CGFloat 文本与图片的间距
 */
-(void)setButtonImageTitleStyle:(SKButtonImageTitleStyle)style padding:(CGFloat)padding;

@end
