//
//  JSQMessagesTopBannerView.m
//  Dollarama
//
//  Created by besat@morgiij.com on 2017-03-10.
//  Copyright © 2017 binnj. All rights reserved.
//

#import "JSQMessagesTopBannerView.h"

#import "NSBundle+JSQMessages.h"


const CGFloat kJSQMessagesTopBannerViewHeight = 50.0f;


@interface JSQMessagesTopBannerView ()

@property (weak, nonatomic) IBOutlet UILabel *topBannerLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topBannerViewTopConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topBannerViewHeightConstraint;

@end


@implementation JSQMessagesTopBannerView

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
    [super setBackgroundColor:backgroundColor];
    self.topBannerLabel.backgroundColor = backgroundColor;
}

- (void)setTopBannerViewHeight:(CGFloat)topBannerViewHeight
{
    _topBannerViewHeight = topBannerViewHeight;
    self.topBannerViewHeightConstraint.constant = topBannerViewHeight;
    [self setNeedsUpdateConstraints];
}

-(void)setTopBannerViewTop:(CGFloat)topBannerViewTop
{
    _topBannerViewTop = topBannerViewTop;
    self.topBannerViewTopConstraint.constant = topBannerViewTop;
    [self setNeedsUpdateConstraints];
}

@end
