# InfoPlistChecker

### This is a convenient library that lists the Info.plist keys for obtaining permission to use certain functions to protect user privacy, and also makes it easy to determine if there are any omissions.


![](https://img.shields.io/badge/license-Apache%202-green.svg)
![](https://img.shields.io/badge/Platforms-iOS-blue)
![](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange)


### usage

```swift

guard (InfoPlistKeys.locationAlwaysUsageDescription.getAsString() != nil) || (InfoPlistKeys.locationWhenInUseUsageDescription.getAsString() != nil) else {
    assertionFailure("No info.plist property for Location")
    return
}

```