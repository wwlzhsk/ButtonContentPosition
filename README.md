# ButtonContentPosition
调整按钮中图片以及文本的位置

//
//  UIButton+SKImageTitleStyle.m
//  PicturesStretching
//
//  Created by songke on 2016/11/18.
//  Copyright © 2016年 songke. All rights reserved.
//

#import "UIButton+SKImageTitleStyle.h"

@implementation UIButton (SKImageTitleStyle)

/**
* 调整按钮的文本和image的布局，前提是title和image同时存在才会调整
*
* @param style ButtonImageTitleStyle 按钮类型
*
* @param padding CGFloat 文本与图片的间距
*/
-(void)setButtonImageTitleStyle:(SKButtonImageTitleStyle)style padding:(CGFloat)padding {
if (self.imageView.image != nil && self.titleLabel.text != nil)
{
//    获取按钮图片的宽高
CGFloat imageWidth = self.imageView.frame.size.width;
CGFloat imageHeight = self.imageView.frame.size.height;

//    获取文字的宽高
CGFloat labelWidth = self.titleLabel.frame.size.width;
CGFloat labelHeight = self.titleLabel.frame.size.height;

//文字偏移
CGFloat labelTop,labelLeft,labelBottom,labelRight;
//图片偏移
CGFloat imageTop,imageLeft,imageBottom,imageRight;
switch (style) {
//图片在左，文字在右，整体居中。
case SKButtonImageTitleStyleLeft: {
labelTop = 0;
labelLeft = padding / 2.0;
labelBottom = 0;
labelRight = -padding / 2.0;

imageTop = 0;
imageLeft = -padding / 2.0;
imageBottom = 0;
imageRight = padding / 2.0;
break;
}
//图片在右，文字在左，整体居中
case SKButtonImageTitleStyleRight: {

labelTop = 0;
labelLeft = -(imageWidth + padding / 2.0);
labelBottom = 0;
labelRight = imageWidth + padding / 2.0;

imageTop = 0;
imageLeft = labelWidth + padding / 2.0;
imageBottom = 0;
imageRight = -(labelWidth + padding / 2.0);
break;
}
//图片在上，文字在下，整体居中
case SKButtonImageTitleStyleTop: {

labelTop = (imageHeight + padding) / 2.0;
labelLeft = -imageWidth / 2.0;
labelBottom = -(imageHeight + padding) / 2.0;
labelRight = imageWidth / 2.0;

imageTop = -(labelHeight + padding) / 2.0;
imageLeft = labelWidth / 2.0;
imageBottom = (labelHeight + padding) / 2.0;
imageRight = -labelWidth / 2.0;
break;
}
//图片在下，文字在上，整体居中
case SKButtonImageTitleStyleBottom: {
labelTop = -(imageHeight + padding) / 2.0;
labelLeft = -imageWidth / 2.0;
labelBottom = (imageHeight + padding) / 2.0;
labelRight = imageWidth / 2.0;

imageTop = (labelHeight + padding) / 2.0;
imageLeft = labelWidth / 2.0;
imageBottom = -(labelHeight + padding) / 2.0;
imageRight = -labelWidth / 2.0;
break;
}
default:
break;
}
self.titleEdgeInsets = UIEdgeInsetsMake(labelTop, labelLeft, labelBottom, labelRight);
self.imageEdgeInsets = UIEdgeInsetsMake(imageTop, imageLeft, imageBottom, imageRight);
}
}

@end

