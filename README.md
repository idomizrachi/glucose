# glucose
## Overview
Glucose is a set of syntactic sugar methods for AutoLayout. 

The following code sample:
```Objective-C
    [self.titleLabel centerXInView: self.view];
    [self.titleLabel topToTopOfView:self.view offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    
    [self.footerLabel bottomToBottomOfView:self.view offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    [self.footerLabel widthEqualToView:self.view];
    [self.footerLabel heightWithMin:44.0f priority:UILayoutPriorityRequired isActive:YES];
    
    [self.leftLabel topToBottomOfView:self.titleLabel offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    [self.rightLabel topToBottomOfView:self.titleLabel offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    [self.leftLabel widthEqualToView:self.rightLabel];
    
    [self.leftLabel leadingToLeadingOfView:self.view offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    [self.rightLabel trailingToTrailingOfView:self.view offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    [self.rightLabel leadingToTrailingOfView:self.leftLabel offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    
    [self.squareView width:45.0f];
    [self.squareView height: 45.0f];
    [self.squareView topToBottomOfView:self.leftLabel offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    [self.squareView centerInView:self.view];
    
    [self.squareView2 width: 30.0f];
    [self.squareView2 height:30.0f];
    [self.squareView2 leadingToLeadingOfView:self.view offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    [self.squareView2 bottomToTopOfView:self.footerLabel offset:30.0f priority:UILayoutPriorityRequired isActive:YES];
```
Generates this UI:

![alt text](https://github.com/idomizrachi/glucose/blob/master/Screenshots/Sample.png?raw=true "Sample App")

See the Example project for the complete implementation.

## Installation
CocoaPods

Glucose is available through CocoaPods. To install it, simply add the following line to your Podfile:

```Rubu
pod "glucose"
```

## Thanks
Glucose is inspired by [TinyConstraints](https://github.com/roberthein/TinyConstraints).


