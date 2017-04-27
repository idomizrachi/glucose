//
//  UIView+glucose.h
//  Pods
//
//  Created by Ido Mizrachi on 4/27/17.
//
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, IDMConstraintRelation) {
    IDMConstraintRelationEqual = 0,
    IDMConstraintRelationEqualOrLess = 1,
    IDMConstraintRelationEqualOrGreater = -1,
};

@interface UIView (Glucose)

-(NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)view;
-(NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)view offset:(CGPoint)offset;
-(NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)view offset:(CGPoint)offset priority:(UILayoutPriority)priority;
-(NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)view offset:(CGPoint)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

//TODO: Missing Implementation
-(NSArray<NSLayoutConstraint *> *)centerXInView:(UIView *)view;
-(NSArray<NSLayoutConstraint *> *)centerYInView:(UIView *)view;

-(NSArray<NSLayoutConstraint *> *)edgesToView:(UIView *)view;
-(NSArray<NSLayoutConstraint *> *)edgesToView:(UIView *)view edgeInsets:(UIEdgeInsets)edgeInsets;
-(NSArray<NSLayoutConstraint *> *)edgesToView:(UIView *)view edgeInsets:(UIEdgeInsets)edgeInsets priority:(UILayoutPriority)priority;
-(NSArray<NSLayoutConstraint *> *)edgesToView:(UIView *)view edgeInsets:(UIEdgeInsets)edgeInsets priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

-(NSArray<NSLayoutConstraint *> *)size:(CGSize)size;
-(NSArray<NSLayoutConstraint *> *)size:(CGSize)size priority:(UILayoutPriority)priority;
-(NSArray<NSLayoutConstraint *> *)size:(CGSize)size priority:(UILayoutPriority)priority isActive:(BOOL)isActive;


-(NSArray<NSLayoutConstraint *> *)originToView:(UIView *)view;
-(NSArray<NSLayoutConstraint *> *)originToView:(UIView *)view insets:(CGVector)insets;
-(NSArray<NSLayoutConstraint *> *)originToView:(UIView *)view insets:(CGVector)insets priority:(UILayoutPriority)priority;
-(NSArray<NSLayoutConstraint *> *)originToView:(UIView *)view insets:(CGVector)insets priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

-(NSArray<NSLayoutConstraint *> *)width:(CGFloat)width;
-(NSArray<NSLayoutConstraint *> *)width:(CGFloat)width relation:(IDMConstraintRelation)relation;
-(NSArray<NSLayoutConstraint *> *)width:(CGFloat)width relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority;
-(NSArray<NSLayoutConstraint *> *)width:(CGFloat)width relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

-(NSArray<NSLayoutConstraint *> *)widthToView:(UIView *)view;
-(NSArray<NSLayoutConstraint *> *)widthToView:(UIView *)view multiplier:(CGFloat)multiplier offset:(CGFloat)offset relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority isActive:(BOOL)isActive;


-(NSArray<NSLayoutConstraint *> *)widthWithMin:(CGFloat)min priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
-(NSArray<NSLayoutConstraint *> *)widthWithMax:(CGFloat)max priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
-(NSArray<NSLayoutConstraint *> *)widthBetweenMin:(CGFloat)min andMax:(CGFloat)max priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

//TODO: Missing Implementation
//-(NSArray<NSLayoutConstraint *> *)heightToView:(UIView *)view;
//-(NSArray<NSLayoutConstraint *> *)heightToView:(UIView *)view multiplier:(CGFloat)multiplier offset:(CGFloat)offset relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
//
//-(NSArray<NSLayoutConstraint *> *)heightWithMin:(CGFloat)min priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
//-(NSArray<NSLayoutConstraint *> *)heightWithMax:(CGFloat)max priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
//-(NSArray<NSLayoutConstraint *> *)heightBetweenMin:(CGFloat)min andMax:(CGFloat)max priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
//
//-(NSArray<NSLayoutConstraint *> *)leadingToTrailingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
//
//-(NSArray<NSLayoutConstraint *> *)leadingToLeadingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
//-(NSArray<NSLayoutConstraint *> *)trailingToLeadingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
//-(NSArray<NSLayoutConstraint *> *)trailingToTrailingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
//
//-(NSArray<NSLayoutConstraint *> *)rightToLeftOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
//-(NSArray<NSLayoutConstraint *> *)rightToRightOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
//
//-(NSArray<NSLayoutConstraint *> *)topToBottom:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
//
//-(NSArray<NSLayoutConstraint *> *)topToTop:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
//
//-(NSArray<NSLayoutConstraint *> *)bottomToTop:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
//
//-(NSArray<NSLayoutConstraint *> *)bottomToBottom:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;


@end
