# transparentTF

[![CI Status](https://img.shields.io/travis/NaveenMagatala/transparentTF.svg?style=flat)](https://travis-ci.org/NaveenMagatala/transparentTF)
[![Version](https://img.shields.io/cocoapods/v/transparentTF.svg?style=flat)](https://cocoapods.org/pods/transparentTF)
[![License](https://img.shields.io/cocoapods/l/transparentTF.svg?style=flat)](https://cocoapods.org/pods/transparentTF)
[![Platform](https://img.shields.io/cocoapods/p/transparentTF.svg?style=flat)](https://cocoapods.org/pods/transparentTF)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

iOS 11+, Xcode 9+

## Overview

![](transparentTF.gif)

## Usage

* Use import `transparentTF` in the file you are using the textfield.
* Drag and drop a `UIView` in the storyboard and name its custom class to `transparentTF`.
* Compile and run the project you should be able to see the new textfield.

### Configuring
```
emailTFV.configure(leftImage: UIImage(named: "email"),
                           placeHolder: "Enter Email",
                           nextTextField: passwordTFV)
 ```
 
 * Use the configure method to add a left image, right image, placeholder and a next text field.
 * Next text field is used to chain the responders when user hits done on your current text field that resigns the responder on the current text field(dismisses editing) and assigns the next text field as the first responder(enables editing).
 * Leaving Divider and the Textfield as public variables as you can customize the color of the divider and few other stuff for flexibility.
 * please run the sample project to see how it runs.
                           

## Installation

transparentTF is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'transparentTF'
```

## Author

NaveenMagatala, naveenmagatala@gmail.com

## License

transparentTF is available under the MIT license. See the LICENSE file for more info.
