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

#pragma mark - Center
-(NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)view;
-(NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)view offset:(CGPoint)offset;
-(NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)view offset:(CGPoint)offset priority:(UILayoutPriority)priority;
-(NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)view offset:(CGPoint)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

-(NSLayoutConstraint *)centerXInView:(UIView *)view;
-(NSLayoutConstraint *)centerYInView:(UIView *)view;

#pragma mark - Edges
-(NSArray<NSLayoutConstraint *> *)edgesToView:(UIView *)view;
-(NSArray<NSLayoutConstraint *> *)edgesToView:(UIView *)view edgeInsets:(UIEdgeInsets)edgeInsets;
-(NSArray<NSLayoutConstraint *> *)edgesToView:(UIView *)view edgeInsets:(UIEdgeInsets)edgeInsets priority:(UILayoutPriority)priority;
-(NSArray<NSLayoutConstraint *> *)edgesToView:(UIView *)view edgeInsets:(UIEdgeInsets)edgeInsets priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

#pragma mark - Size
-(NSArray<NSLayoutConstraint *> *)size:(CGSize)size;
-(NSArray<NSLayoutConstraint *> *)size:(CGSize)size priority:(UILayoutPriority)priority;
-(NSArray<NSLayoutConstraint *> *)size:(CGSize)size priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

#pragma mark - Origin
-(NSArray<NSLayoutConstraint *> *)originToView:(UIView *)view;
-(NSArray<NSLayoutConstraint *> *)originToView:(UIView *)view insets:(CGVector)insets;
-(NSArray<NSLayoutConstraint *> *)originToView:(UIView *)view insets:(CGVector)insets priority:(UILayoutPriority)priority;
-(NSArray<NSLayoutConstraint *> *)originToView:(UIView *)view insets:(CGVector)insets priority:(UILayoutPriority)priority isActive:(BOOL)isActive;


#pragma mark - Width - Specific
-(NSLayoutConstraint *)width:(CGFloat)width;
-(NSLayoutConstraint *)width:(CGFloat)width relation:(IDMConstraintRelation)relation;
-(NSLayoutConstraint *)width:(CGFloat)width relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority;
-(NSLayoutConstraint *)width:(CGFloat)width relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

#pragma mark - Width to view
-(NSLayoutConstraint *)widthEqualToView:(UIView *)view;
-(NSLayoutConstraint *)widthToView:(UIView *)view multiplier:(CGFloat)multiplier offset:(CGFloat)offset relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

-(NSLayoutConstraint *)widthWithMin:(CGFloat)min;
-(NSLayoutConstraint *)widthWithMin:(CGFloat)min priority:(UILayoutPriority)priority;
-(NSLayoutConstraint *)widthWithMin:(CGFloat)min priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
-(NSLayoutConstraint *)widthWithMax:(CGFloat)max priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
-(NSArray<NSLayoutConstraint *> *)widthBetweenMin:(CGFloat)min andMax:(CGFloat)max priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

#pragma mark - Height - Specific
-(NSLayoutConstraint *)height:(CGFloat)height;
-(NSLayoutConstraint *)height:(CGFloat)height relation:(IDMConstraintRelation)relation;
-(NSLayoutConstraint *)height:(CGFloat)height relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority;
-(NSLayoutConstraint *)height:(CGFloat)height relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

#pragma mark - Height to view
-(NSLayoutConstraint *)heightEqualToView:(UIView *)view;
-(NSLayoutConstraint *)heightToView:(UIView *)view multiplier:(CGFloat)multiplier offset:(CGFloat)offset relation:(IDMConstraintRelation)relation priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
-(NSLayoutConstraint *)heightWithMin:(CGFloat)min;
-(NSLayoutConstraint *)heightWithMin:(CGFloat)min priority:(UILayoutPriority)priority;
-(NSLayoutConstraint *)heightWithMin:(CGFloat)min priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
-(NSLayoutConstraint *)heightWithMax:(CGFloat)max;
-(NSLayoutConstraint *)heightWithMax:(CGFloat)max priority:(UILayoutPriority)priority;
-(NSLayoutConstraint *)heightWithMax:(CGFloat)max priority:(UILayoutPriority)priority isActive:(BOOL)isActive;
-(NSArray<NSLayoutConstraint *> *)heightBetweenMin:(CGFloat)min andMax:(CGFloat)max priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

#pragma mark - Leading to leading
-(NSLayoutConstraint *)leadingToLeadingOfView:(UIView *)view;
-(NSLayoutConstraint *)leadingToLeadingOfView:(UIView *)view offset:(CGFloat)offset;
-(NSLayoutConstraint *)leadingToLeadingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

#pragma mark - Leading to trailing
-(NSLayoutConstraint *)leadingToTrailingOfView:(UIView *)view;
-(NSLayoutConstraint *)leadingToTrailingOfView:(UIView *)view offset:(CGFloat)offset;
-(NSLayoutConstraint *)leadingToTrailingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority;
-(NSLayoutConstraint *)leadingToTrailingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

#pragma mark - Trailing to trailing
-(NSLayoutConstraint *)trailingToTrailingOfView:(UIView *)view;
-(NSLayoutConstraint *)trailingToTrailingOfView:(UIView *)view offset:(CGFloat)offset;
-(NSLayoutConstraint *)trailingToTrailingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority;
-(NSLayoutConstraint *)trailingToTrailingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

#pragma mark - Trailing to leading
-(NSLayoutConstraint *)trailingToLeadingOfView:(UIView *)view;
-(NSLayoutConstraint *)trailingToLeadingOfView:(UIView *)view offset:(CGFloat)offset;
-(NSLayoutConstraint *)trailingToLeadingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority;
-(NSLayoutConstraint *)trailingToLeadingOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

#pragma mark - Top to top
-(NSLayoutConstraint *)topToTopOfView:(UIView *)view;
-(NSLayoutConstraint *)topToTopOfView:(UIView *)view offset:(CGFloat)offset;
-(NSLayoutConstraint *)topToTopOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority;
-(NSLayoutConstraint *)topToTopOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

#pragma mark - Top to bottom
-(NSLayoutConstraint *)topToBottomOfView:(UIView *)view;
-(NSLayoutConstraint *)topToBottomOfView:(UIView *)view offset:(CGFloat)offset;
-(NSLayoutConstraint *)topToBottomOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority;
-(NSLayoutConstraint *)topToBottomOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

#pragma mark - Bottom to bottom
-(NSLayoutConstraint *)bottomToBottomOfView:(UIView *)view;
-(NSLayoutConstraint *)bottomToBottomOfView:(UIView *)view offset:(CGFloat)offset;
-(NSLayoutConstraint *)bottomToBottomOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority;
-(NSLayoutConstraint *)bottomToBottomOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

#pragma mark - Bottom to top
-(NSLayoutConstraint *)bottomToTopOfView:(UIView *)view;
-(NSLayoutConstraint *)bottomToTopOfView:(UIView *)view offset:(CGFloat)offset;
-(NSLayoutConstraint *)bottomToTopOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority;
-(NSLayoutConstraint *)bottomToTopOfView:(UIView *)view offset:(CGFloat)offset priority:(UILayoutPriority)priority isActive:(BOOL)isActive;

@end
