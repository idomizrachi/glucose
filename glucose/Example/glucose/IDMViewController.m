//
//  IDMViewController.m
//  glucose
//
//  Created by idomizrachi on 04/27/2017.
//  Copyright (c) 2017 idomizrachi. All rights reserved.
//

#import "IDMViewController.h"
#import <glucose/IDMGlucose.h>

@interface IDMViewController ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *footerLabel;

@property (nonatomic, strong) UILabel *leftLabel;
@property (nonatomic, strong) UILabel *rightLabel;

@end

@implementation IDMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview: self.titleLabel];
    [self.view addSubview: self.footerLabel];
    [self.view addSubview: self.leftLabel];
    [self.view addSubview: self.rightLabel];
    
    [self.titleLabel centerXInView: self.view];
    [self.titleLabel topToTopOfView:self.view offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    
    [self.footerLabel bottomToBottomOfView:self.view offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    [self.footerLabel widthToView:self.view];
    [self.footerLabel heightWithMin:44.0f priority:UILayoutPriorityRequired isActive:YES];
    
    [self.leftLabel topToBottomOfView:self.titleLabel offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    [self.rightLabel topToBottomOfView:self.titleLabel offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    
    [self.leftLabel widthToView:self.rightLabel multiplier:1.0f offset:0 relation:IDMConstraintRelationEqual priority:UILayoutPriorityRequired isActive:YES];
    
    [[self.leftLabel.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor] setActive:YES];
    [[self.rightLabel.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor] setActive:YES];
    [[self.leftLabel.trailingAnchor constraintEqualToAnchor:self.rightLabel.leadingAnchor constant:20.0f] setActive:YES];
}

-(UILabel *)titleLabel {
    if (! _titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = @"Title";
        _titleLabel.font = [UIFont preferredFontForTextStyle: UIFontTextStyleTitle1];
    }
    return _titleLabel;
}

-(UILabel *)footerLabel {
    if (! _footerLabel) {
        _footerLabel = [[UILabel alloc] init];
        _footerLabel.text = @"Start Footer Footer Footer Footer Footer Footer Footer Footer Footer Footer End";
        _footerLabel.font = [UIFont preferredFontForTextStyle: UIFontTextStyleTitle2];
        _footerLabel.textColor = [UIColor whiteColor];
        _footerLabel.backgroundColor = [UIColor lightGrayColor];
        _footerLabel.numberOfLines = 0;
    }
    return _footerLabel;
}

-(UILabel *)leftLabel {
    if (! _leftLabel) {
        _leftLabel = [[UILabel alloc] init];
        _leftLabel.text = @"Left";
        _leftLabel.font = [UIFont preferredFontForTextStyle: UIFontTextStyleBody];
        _leftLabel.backgroundColor = [UIColor colorWithWhite:0.3f alpha:1.0f];
        _leftLabel.textAlignment = NSTextAlignmentCenter;
        
    }
    return _leftLabel;
}

-(UILabel *)rightLabel {
    if (! _rightLabel) {
        _rightLabel = [[UILabel alloc] init];
        _rightLabel.text = @"Right";
        _rightLabel.font = [UIFont preferredFontForTextStyle: UIFontTextStyleBody];
        _rightLabel.backgroundColor = [UIColor colorWithWhite:0.7f alpha:1.0f];
        _rightLabel.textColor = [UIColor whiteColor];
        _rightLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _rightLabel;
}


@end
