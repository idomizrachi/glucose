//
//  UIView+Glucose.m
//  Pods
//
//  Created by Ido Mizrachi on 4/27/17.
//
//

#import "UIView+Glucose.h"
#import <UIKit/UIKit.h>

@implementation UIView (Glucose)


#pragma mark - Public

#pragma mark - Center

-(NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)view {
    return [self centerInView:view offset:CGPointZero];
}
-(NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)view offset:(CGPoint)offset {
    return [self centerInView:view offset:offset priority:UILayoutPriorityRequired];
}
-(NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)view offset:(CGPoint)offset priority:(UILayoutPriority)priority {
    return [self centerInView:view offset:offset priority:priority isActive:YES];
}
-(NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)view offset:(CGPoint)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    [constraints addObject: [self.centerXAnchor constraintEqualToAnchor:view.centerXAnchor constant:offset.x]];
    [constraints addObject: [self.centerYAnchor constraintEqualToAnchor:view.centerYAnchor constant:offset.y]];
    [self.class updateConstraints:constraints priority:priority isActive:isActive];
    return [constraints copy];
}
-(NSLayoutConstraint *)centerXInView:(UIView *)view {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = [self.centerXAnchor constraintEqualToAnchor:view.centerXAnchor];
    [self.class updateConstraint:constraint priority:UILayoutPriorityRequired isActive:YES];
    return constraint;
}
-(NSLayoutConstraint *)centerYInView:(UIView *)view {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = [self.centerYAnchor constraintEqualToAnchor:view.centerYAnchor];
    [self.class updateConstraint:constraint priority:UILayoutPriorityRequired isActive:YES];
    return constraint;
}

#pragma mark - Edges
-(NSArray<NSLayoutConstraint *> *)edgesToView:(UIView *)view {
    return [self edgesToView:view edgeInsets:UIEdgeInsetsZero];
}
-(NSArray<NSLayoutConstraint *> *)edgesToView:(UIView *)view edgeInsets:(UIEdgeInsets)edgeInsets {
    return [self edgesToView:view edgeInsets:edgeInsets priority:UILayoutPriorityRequired];
}
-(NSArray<NSLayoutConstraint *> *)edgesToView:(UIView *)view edgeInsets:(UIEdgeInsets)edgeInsets priority:(UILayoutPriority)priority {
    return [self edgesToView:view edgeInsets:edgeInsets priority:priority isActive:YES];
}
-(NSArray<NSLayoutConstraint *> *)edgesToView:(UIView *)view edgeInsets:(UIEdgeInsets)edgeInsets priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    [constraints addObject:[self.topAnchor constraintEqualToAnchor:view.topAnchor constant:edgeInsets.top]];
    [constraints addObject:[self.leadingAnchor constraintEqualToAnchor:view.leadingAnchor constant:edgeInsets.left]];
    [constraints addObject:[self.bottomAnchor constraintEqualToAnchor:view.bottomAnchor constant:edgeInsets.bottom]];
    [constraints addObject:[self.trailingAnchor constraintEqualToAnchor:view.trailingAnchor constant:edgeInsets.right]];
    [self.class updateConstraints:constraints priority:priority isActive:isActive];
    return [constraints copy];
}

#pragma mark - Size
-(NSArray<NSLayoutConstraint *> *)size:(CGSize)size {
    return [self size:size priority:UILayoutPriorityRequired];
}
-(NSArray<NSLayoutConstraint *> *)size:(CGSize)size priority:(UILayoutPriority)priority {
    return [self size:size priority:UILayoutPriorityRequired isActive:YES];
}
-(NSArray<NSLayoutConstraint *> *)size:(CGSize)size priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    [constraints addObject:[self.widthAnchor constraintEqualToConstant:size.width]];
    [constraints addObject:[self.heightAnchor constraintEqualToConstant:size.height]];
    [self.class updateConstraints:constraints priority:priority isActive:isActive];
    return [constraints copy];
}

#pragma mark - Origin
-(NSArray<NSLayoutConstraint *> *)originToView:(UIView *)view {
    return [self originToView:view insets:CGVectorMake(0.0f, 0.0f)];
}
-(NSArray<NSLayoutConstraint *> *)originToView:(UIView *)view insets:(CGVector)insets {
    return [self originToView:view insets:insets priority:UILayoutPriorityRequired];
}
-(NSArray<NSLayoutConstraint *> *)originToView:(UIView *)view insets:(CGVector)insets priority:(UILayoutPriority)priority {
    return [self originToView:view insets:insets priority:priority isActive:YES];
}
-(NSArray<NSLayoutConstraint *> *)originToView:(UIView *)view insets:(CGVector)insets priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    [constraints addObject:[self.leftAnchor constraintEqualToAnchor:view.leftAnchor constant:insets.dx]];
    [constraints addObject:[self.topAnchor constraintEqualToAnchor:view.topAnchor constant:insets.dy]];
    [self.class updateConstraints:constraints priority:priority isActive:isActive];
    return [constraints copy];
}

#pragma mark - Width - Specific
-(NSLayoutConstraint *)width:(CGFloat)width {
    return [self width:width relation:IDMConstraintRelationEqual];
}
-(NSLayoutConstraint *)width:(CGFloat)width relation:(IDMConstraintRelation)relation {
    return [self width:width relation:relation priority:UILayoutPriorityRequired];
}
-(NSLayoutConstraint *)width:(CGFloat)width relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority {
    return [self width:width relation:relation priority:priority isActive:YES];
}
-(NSLayoutConstraint *)width:(CGFloat)width relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint;
    switch (relation) {
        case IDMConstraintRelationEqual: {
            constraint = [self.widthAnchor constraintEqualToConstant:width];
            break;
        }
        case IDMConstraintRelationEqualOrLess: {
            constraint = [self.widthAnchor constraintLessThanOrEqualToConstant:width];
            break;
        }
        case IDMConstraintRelationEqualOrGreater: {
            constraint = [self.widthAnchor constraintGreaterThanOrEqualToConstant:width];
            break;
        }
    }
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}

#pragma mark - Width to view
-(NSLayoutConstraint *)widthEqualToView:(UIView *)view {
    return [self widthToView:view multiplier:1.0f offset:0.0f relation:IDMConstraintRelationEqual priority:UILayoutPriorityRequired isActive:YES];
}
-(NSLayoutConstraint *)widthToView:(UIView *)view multiplier:(CGFloat)multiplier offset:(CGFloat)offset relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint;
    switch (relation) {
        case IDMConstraintRelationEqual: {
            constraint = [self.widthAnchor constraintEqualToAnchor:view.widthAnchor multiplier:multiplier constant:offset];
            break;
        }
        case IDMConstraintRelationEqualOrLess: {
            constraint = [self.widthAnchor constraintLessThanOrEqualToAnchor:view.widthAnchor multiplier:multiplier constant:offset];
            break;
        }
        case IDMConstraintRelationEqualOrGreater: {
            constraint = [self.widthAnchor constraintGreaterThanOrEqualToAnchor:view.widthAnchor multiplier:multiplier constant:offset];
            break;
        }
        default:
            break;
    }
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}

-(NSLayoutConstraint *)widthWithMin:(CGFloat)min {
    return [self widthWithMin:min priority:UILayoutPriorityRequired];
}

-(NSLayoutConstraint *)widthWithMin:(CGFloat)min priority:(UILayoutPriority)priority {
    return [self widthWithMin:min priority:priority isActive:YES];
}

-(NSLayoutConstraint *)widthWithMin:(CGFloat)min priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = [self.widthAnchor constraintGreaterThanOrEqualToConstant:min];
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}
-(NSLayoutConstraint *)widthWithMax:(CGFloat)max priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = [self.widthAnchor constraintLessThanOrEqualToConstant:max];
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}
-(NSArray<NSLayoutConstraint *> *)widthBetweenMin:(CGFloat)min andMax:(CGFloat)max priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    [constraints addObject: [self widthWithMin:min priority:priority isActive:isActive]];
    [constraints addObject: [self widthWithMax:max priority:priority isActive:isActive]];
    [self.class updateConstraints:constraints priority:priority isActive:isActive];
    return [constraints copy];
}

#pragma mark - Height - Specific
-(NSLayoutConstraint *)height:(CGFloat)height {
    return [self height:height relation:IDMConstraintRelationEqual];
}
-(NSLayoutConstraint *)height:(CGFloat)height relation:(IDMConstraintRelation)relation {
    return [self height:height relation:relation priority:UILayoutPriorityRequired];
}
-(NSLayoutConstraint *)height:(CGFloat)height relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority {
    return [self height:height relation:relation priority:priority isActive:YES];
}
-(NSLayoutConstraint *)height:(CGFloat)height relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint;
    switch (relation) {
        case IDMConstraintRelationEqual: {
            constraint = [self.heightAnchor constraintEqualToConstant:height];
            break;
        }
        case IDMConstraintRelationEqualOrLess: {
            constraint = [self.heightAnchor constraintLessThanOrEqualToConstant:height];
            break;
        }
        case IDMConstraintRelationEqualOrGreater: {
            constraint = [self.heightAnchor constraintGreaterThanOrEqualToConstant:height];
            break;
        }
    }
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}

#pragma mark - Height to View
-(NSLayoutConstraint *)heightEqualToView:(UIView *)view {
    return [self heightToView:view multiplier:1.0f offset:0.0f relation:IDMConstraintRelationEqual priority:UILayoutPriorityRequired isActive:YES];
}
-(NSLayoutConstraint *)heightToView:(UIView *)view multiplier:(CGFloat)multiplier offset:(CGFloat)offset relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint;
    switch (relation) {
        case IDMConstraintRelationEqual: {
            constraint = [self.heightAnchor constraintEqualToAnchor:view.heightAnchor multiplier:multiplier constant:offset];
            break;
        }
        case IDMConstraintRelationEqualOrLess: {
            constraint = [self.heightAnchor constraintLessThanOrEqualToAnchor:view.heightAnchor multiplier:multiplier constant:offset];
            break;
        }
        case IDMConstraintRelationEqualOrGreater: {
            constraint = [self.heightAnchor constraintGreaterThanOrEqualToAnchor:view.heightAnchor multiplier:multiplier constant:offset];
            break;
        }
        default:
            break;
    }
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}
-(NSLayoutConstraint *)heightWithMin:(CGFloat)min {
    return [self heightWithMin:min priority:UILayoutPriorityRequired];
}
-(NSLayoutConstraint *)heightWithMin:(CGFloat)min priority:(UILayoutPriority)priority {
    return [self heightWithMin:min priority:priority isActive:YES];
}
-(NSLayoutConstraint *)heightWithMin:(CGFloat)min priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = [self.heightAnchor constraintGreaterThanOrEqualToConstant:min];
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}
-(NSLayoutConstraint *)heightWithMax:(CGFloat)max {
    return [self heightWithMax:max priority:UILayoutPriorityRequired];
}
-(NSLayoutConstraint *)heightWithMax:(CGFloat)max priority:(UILayoutPriority)priority {
    return [self heightWithMax:max priority:priority isActive:YES];
}
-(NSLayoutConstraint *)heightWithMax:(CGFloat)max priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = [self.heightAnchor constraintLessThanOrEqualToConstant:max];
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}
-(NSArray<NSLayoutConstraint *> *)heightBetweenMin:(CGFloat)min andMax:(CGFloat)max priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    [constraints addObject: [self heightWithMin:min priority:priority isActive:isActive]];
    [constraints addObject: [self heightWithMax:max priority:priority isActive:isActive]];
    [self.class updateConstraints:constraints priority:priority isActive:isActive];
    return [constraints copy];
}

#pragma mark - Leading to leading
-(NSLayoutConstraint *)leadingToLeadingOfView:(UIView *)view {
    return [self leadingToLeadingOfView:view offset:0.0f];
}
-(NSLayoutConstraint *)leadingToLeadingOfView:(UIView *)view offset:(CGFloat)offset {
    return [self leadingToLeadingOfView:view offset:offset priority:UILayoutPriorityRequired isActive:YES];
}
-(NSLayoutConstraint *)leadingToLeadingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = [self.leadingAnchor constraintEqualToAnchor:view.leadingAnchor constant:offset];
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}

#pragma mark - Leading to trailing
-(NSLayoutConstraint *)leadingToTrailingOfView:(UIView *)view {
    return [self leadingToTrailingOfView:view offset:0.0f];
}
-(NSLayoutConstraint *)leadingToTrailingOfView:(UIView *)view offset:(CGFloat)offset {
    return [self leadingToTrailingOfView:view offset:offset priority:UILayoutPriorityRequired isActive:YES];
}
-(NSLayoutConstraint *)leadingToTrailingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority {
    return [self leadingToTrailingOfView:view offset:offset priority:priority isActive:YES];
}
-(NSLayoutConstraint *)leadingToTrailingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = [self.leadingAnchor constraintEqualToAnchor:view.trailingAnchor constant:offset];
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}


#pragma mark - Trailing to trailing
-(NSLayoutConstraint *)trailingToTrailingOfView:(UIView *)view {
    return [self trailingToTrailingOfView:view offset:0.0f];
}
-(NSLayoutConstraint *)trailingToTrailingOfView:(UIView *)view offset:(CGFloat)offset {
    return [self trailingToTrailingOfView:view offset:offset priority:UILayoutPriorityRequired];
}
-(NSLayoutConstraint *)trailingToTrailingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority {
    return [self trailingToTrailingOfView:view offset:offset priority:priority isActive:YES];
}
-(NSLayoutConstraint *)trailingToTrailingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = [self.trailingAnchor constraintEqualToAnchor:view.trailingAnchor constant:-offset];
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}


#pragma mark - Trailing to leading
-(NSLayoutConstraint *)trailingToLeadingOfView:(UIView *)view {
    return [self trailingToLeadingOfView:view offset:0.0f];
}
-(NSLayoutConstraint *)trailingToLeadingOfView:(UIView *)view offset:(CGFloat)offset {
    return [self trailingToLeadingOfView:view offset:offset priority:UILayoutPriorityRequired];
}
-(NSLayoutConstraint *)trailingToLeadingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority {
    return [self trailingToLeadingOfView:view offset:offset priority:priority isActive:YES];
}
-(NSLayoutConstraint *)trailingToLeadingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = [self.trailingAnchor constraintEqualToAnchor:view.leadingAnchor constant:-offset];
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}


#pragma mark - Top to top
-(NSLayoutConstraint *)topToTopOfView:(UIView *)view {
    return [self topToTopOfView:view offset:0.0f];
}
-(NSLayoutConstraint *)topToTopOfView:(UIView *)view offset:(CGFloat)offset {
    return [self topToTopOfView:view offset:offset priority:UILayoutPriorityRequired];
}
-(NSLayoutConstraint *)topToTopOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority {
    return [self topToTopOfView:view offset:offset priority:priority isActive:YES];
}
-(NSLayoutConstraint *)topToTopOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = [self.topAnchor constraintEqualToAnchor:view.topAnchor constant:offset];
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}


#pragma mark - Top to bottom
-(NSLayoutConstraint *)topToBottomOfView:(UIView *)view {
    return [self topToBottomOfView:view offset:0.0f];
}
-(NSLayoutConstraint *)topToBottomOfView:(UIView *)view offset:(CGFloat)offset {
    return [self topToBottomOfView:view offset:offset priority:UILayoutPriorityRequired];
}
-(NSLayoutConstraint *)topToBottomOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority{
    return [self topToBottomOfView:view offset:offset priority:priority isActive:YES];
}
-(NSLayoutConstraint *)topToBottomOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = [self.topAnchor constraintEqualToAnchor:view.bottomAnchor constant:offset];
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}

#pragma mark - Bottom to bottom
-(NSLayoutConstraint *)bottomToBottomOfView:(UIView *)view {
    return [self bottomToBottomOfView:view offset:0.0f];
}
-(NSLayoutConstraint *)bottomToBottomOfView:(UIView *)view offset:(CGFloat)offset {
    return [self bottomToBottomOfView:view offset:offset priority:UILayoutPriorityRequired];
}
-(NSLayoutConstraint *)bottomToBottomOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority {
    return [self bottomToBottomOfView:view offset:offset priority:priority isActive:YES];
}
-(NSLayoutConstraint *)bottomToBottomOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = [self.bottomAnchor constraintEqualToAnchor:view.bottomAnchor constant:-offset];
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}

#pragma mark - Bottom to top
-(NSLayoutConstraint *)bottomToTopOfView:(UIView *)view {
    return [self bottomToTopOfView:view offset:0.0f];
}
-(NSLayoutConstraint *)bottomToTopOfView:(UIView *)view offset:(CGFloat)offset {
    return [self bottomToTopOfView:view offset:offset priority:UILayoutPriorityRequired];
}
-(NSLayoutConstraint *)bottomToTopOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority {
    return [self bottomToTopOfView:view offset:offset priority:priority isActive:YES];
}
-(NSLayoutConstraint *)bottomToTopOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = [self.bottomAnchor constraintEqualToAnchor:view.topAnchor constant:-offset];
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}

#pragma mark - Last Baseline to last baseline
-(NSLayoutConstraint *)baselineToBaselineOfView:(UIView *)view {
    return [self baselineToBaselineOfView:view offset:0.0f];
}
-(NSLayoutConstraint *)baselineToBaselineOfView:(UIView *)view offset:(CGFloat)offset {
    return [self baselineToBaselineOfView:view offset:offset priority:UILayoutPriorityRequired];
}
-(NSLayoutConstraint *)baselineToBaselineOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority {
    return [self baselineToBaselineOfView:view offset:offset priority:priority isActive:YES];
}
-(NSLayoutConstraint *)baselineToBaselineOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *constraint = [self.lastBaselineAnchor constraintEqualToAnchor:view.lastBaselineAnchor constant:-offset];
    [self.class updateConstraint:constraint priority:priority isActive:isActive];
    return constraint;
}

#pragma mark - Private
+(void)updateConstraint:(NSLayoutConstraint *)constraint priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    constraint.priority = priority;
    constraint.active = isActive;
}

+(void)updateConstraints:(NSArray<NSLayoutConstraint *> *)constraints priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    [constraints enumerateObjectsUsingBlock:^(NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
        constraint.priority = priority;
        constraint.active = isActive;
    }];
}




@end

