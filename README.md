# AppeliumTests iOS SDK

[Appelium](https://www.appelium.com) is a platform and a set of tools for improving the quality of mobile apps.

AppeliumTests is a companion SDK to be integrated into your UI Testing target in order to enable tests reporting to Appelium dashboard.

The SDK automatically captures videos of all of your tests and supplements them with full application logs, network logs and a screenshot at the time of test failure.

For more info, visit [Appelium.com](https://www.appelium.com).

## Installation

### CocoaPods

To integrate AppeliumTests SDK into your Xcode project using [CocoaPods](https://cocoapods.org), add it to your `Podfile`:

```ruby
target 'YourUITestsTarget' do
	pod 'AppeliumTests'
end
```

Then, run the following command:

```bash
$ pod install
```

## Usage

Since the UI Tests on iOS are not a self contained app they don't have such an obvious entry point as `application:didFinishLaunchingWithOptions:`.

In order to workaround this, we can use a mechanism provided by the `NSPrincipalClass`.

1. In your UI Tests target, create a simple class called `UITestsSetup`:

	```swift
	class UITestsSetup: NSObject {
	
		override init() {
			super.init()
			
			AppeliumTests.start(apiKey: <#api key#>)
			AppeliumTests.screenRecordingEnabled = true
		}
		
	}
	```
	
	> You can create an `api key` or find an existing one [here](https://dashboard.appelium.com/settings/tests).

2. In the `Info.plist` file of your UI Tests bundle add the following key:

    ```XML
	<key>NSPrincipalClass</key>
	<string>UITests.UITestsSetup</string>
    ```
    
    Note the `UITests.` prefix - it is the name of the Swift module where we created the `UITestsSetup` class.

3. Run the tests :)
