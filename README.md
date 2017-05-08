# glucose
## Overview
glucose is a set of syntactic sugar methods for AutoLayout.

The following code sample:
```Objective-C
[self.view addSubview: self.backgroundView];
[self.view addSubview: self.titleLabel];
[self.view addSubview: self.footerLabel];
[self.view addSubview: self.leftLabel];
[self.view addSubview: self.rightLabel];
[self.view addSubview: self.squareView];
[self.view addSubview: self.squareView2];
[self.view addSubview: self.squareView3];

[self.backgroundView edgesToView:self.view];

[self.titleLabel centerXInView: self.view];
[self.titleLabel topToTopOfView:self.view offset:20.0f];

[self.footerLabel bottomToBottomOfView:self.view offset:20.0f];
[self.footerLabel widthEqualToView:self.view];
[self.footerLabel heightWithMin:44.0f];

[self.leftLabel topToBottomOfView:self.titleLabel offset:20.0f];
[self.rightLabel topToBottomOfView:self.titleLabel offset:20.0f];
[self.leftLabel widthEqualToView:self.rightLabel];

[self.leftLabel leadingToLeadingOfView:self.view offset:20.0f];
[self.rightLabel trailingToTrailingOfView:self.view offset:20.0f];
[self.rightLabel leadingToTrailingOfView:self.leftLabel offset:20.0f];

[self.squareView size:CGSizeMake(45.0f, 45.0f)];
[self.squareView topToBottomOfView:self.leftLabel offset:20.0f];
[self.squareView centerInView:self.view];

[self.squareView2 width: 30.0f];
[self.squareView2 height:30.0f];
[self.squareView2 leadingToLeadingOfView:self.view offset:20.0f];
[self.squareView2 bottomToTopOfView:self.footerLabel offset:30.0f];

[self.squareView3 leadingToLeadingOfView:self.view offset:20.0f];
[self.squareView3 topToBottomOfView:self.squareView offset:15.0f];
[self.squareView3 trailingToLeadingOfView:self.rightLabel offset:0.0f];
[self.squareView3 height: 45.0f];  
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
