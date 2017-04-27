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
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    [constraints addObject: [self.centerXAnchor constraintEqualToAnchor:view.centerXAnchor constant:offset.x]];
    [constraints addObject: [self.centerYAnchor constraintEqualToAnchor:view.centerYAnchor constant:offset.y]];
    [self.class updateConstraints:constraints priority:priority isActive:isActive];
    return [constraints copy];
}

-(NSArray<NSLayoutConstraint *> *)centerXInView:(UIView *)view {
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    [constraints addObject: [self.centerXAnchor constraintEqualToAnchor:view.centerXAnchor]];
    return [constraints copy];
}

-(NSArray<NSLayoutConstraint *> *)centerYInView:(UIView *)view {
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    [constraints addObject: [self.centerYAnchor constraintEqualToAnchor:view.centerYAnchor]];
    return [constraints copy];
}

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
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    [constraints addObject:[view.topAnchor constraintEqualToAnchor:view.topAnchor constant:edgeInsets.top]];
    [constraints addObject:[view.leadingAnchor constraintEqualToAnchor:view.leadingAnchor constant:edgeInsets.left]];
    [constraints addObject:[view.bottomAnchor constraintEqualToAnchor:view.bottomAnchor constant:edgeInsets.bottom]];
    [constraints addObject:[view.topAnchor constraintEqualToAnchor:view.topAnchor constant:edgeInsets.right]];
    [self.class updateConstraints:constraints priority:priority isActive:isActive];
    return [constraints copy];
}

-(NSArray<NSLayoutConstraint *> *)size:(CGSize)size {
    return [self size:size priority:UILayoutPriorityRequired];
}
-(NSArray<NSLayoutConstraint *> *)size:(CGSize)size priority:(UILayoutPriority)priority {
    return [self size:size priority:UILayoutPriorityRequired isActive:YES];
}

-(NSArray<NSLayoutConstraint *> *)size:(CGSize)size priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    [constraints addObject:[self.widthAnchor constraintEqualToConstant:size.width]];
    [constraints addObject:[self.heightAnchor constraintEqualToConstant:size.height]];
    [self.class updateConstraints:constraints priority:priority isActive:isActive];
    return [constraints copy];
}

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
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    [constraints addObject:[self.leftAnchor constraintEqualToAnchor:view.leftAnchor constant:insets.dx]];
    [constraints addObject:[self.topAnchor constraintEqualToAnchor:view.topAnchor constant:insets.dy]];
    [self.class updateConstraints:constraints priority:priority isActive:isActive];
    return [constraints copy];
}

-(NSArray<NSLayoutConstraint *> *)width:(CGFloat)width {
    return [self width:width relation:IDMConstraintRelationEqual];
}
-(NSArray<NSLayoutConstraint *> *)width:(CGFloat)width relation:(IDMConstraintRelation)relation {
    return [self width:width relation:relation priority:UILayoutPriorityRequired];
}
-(NSArray<NSLayoutConstraint *> *)width:(CGFloat)width relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority {
    return [self width:width relation:relation priority:priority isActive:YES];
}
-(NSArray<NSLayoutConstraint *> *)width:(CGFloat)width relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    switch (relation) {
        case IDMConstraintRelationEqual: {
            [constraints addObject:[self.widthAnchor constraintEqualToConstant:width]];
            break;
        }
        case IDMConstraintRelationEqualOrLess: {
            [constraints addObject:[self.widthAnchor constraintLessThanOrEqualToConstant:width]];
            break;
        }
        case IDMConstraintRelationEqualOrGreater: {
            [constraints addObject:[self.widthAnchor constraintGreaterThanOrEqualToConstant:width]];
            break;
        }
    }
    [self.class updateConstraints:constraints priority:priority isActive:isActive];
    return [constraints copy];
}

-(NSArray<NSLayoutConstraint *> *)widthToView:(UIView *)view {
    return [self widthToView:view multiplier:1.0f offset:0.0f relation:IDMConstraintRelationEqual priority:UILayoutPriorityRequired isActive:YES];
}

-(NSArray<NSLayoutConstraint *> *)widthToView:(UIView *)view multiplier:(CGFloat)multiplier offset:(CGFloat)offset relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    switch (relation) {
        case IDMConstraintRelationEqual: {
            [constraints addObject: [self.widthAnchor constraintEqualToAnchor:view.widthAnchor multiplier:multiplier constant:offset]];
            break;
        }
        case IDMConstraintRelationEqualOrLess: {
            [constraints addObject: [self.widthAnchor constraintLessThanOrEqualToAnchor:view.widthAnchor multiplier:multiplier constant:offset]];
            break;
        }
        case IDMConstraintRelationEqualOrGreater: {
            [constraints addObject: [self.widthAnchor constraintGreaterThanOrEqualToAnchor:view.widthAnchor multiplier:multiplier constant:offset]];
            break;
        }
        default:
            break;
    }
    [self.class updateConstraints:constraints priority:priority isActive:isActive];
    return [constraints copy];
}

-(NSArray<NSLayoutConstraint *> *)widthWithMin:(CGFloat)min priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    [constraints addObject: [self.widthAnchor constraintGreaterThanOrEqualToConstant:min]];
    [self.class updateConstraints:constraints priority:priority isActive:isActive];
    return [constraints copy];
}

-(NSArray<NSLayoutConstraint *> *)widthWithMax:(CGFloat)max priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    [constraints addObject: [self.widthAnchor constraintLessThanOrEqualToConstant:max]];
    [self.class updateConstraints:constraints priority:priority isActive:isActive];
    return [constraints copy];
}

-(NSArray<NSLayoutConstraint *> *)widthBetweenMin:(CGFloat)min andMax:(CGFloat)max priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    [constraints addObjectsFromArray: [self widthWithMin:min priority:priority isActive:isActive]];
    [constraints addObjectsFromArray: [self widthWithMax:max priority:priority isActive:isActive]];
    return [constraints copy];
}


#pragma mark - Private

+(void)updateConstraints:(NSArray<NSLayoutConstraint *> *)constraints priority:(UILayoutPriority)priority isActive:(BOOL)isActive {
    [constraints enumerateObjectsUsingBlock:^(NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
        constraint.priority = priority;
        constraint.active = isActive;
    }];
}




@end
