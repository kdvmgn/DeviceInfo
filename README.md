# DeviceSpec

DeviceSpec is a Swift library for easy getting device specification: device model and marketing names, screen parameters, and other useful information

## Installation

Use the package manager [cocoapod](https://guides.cocoapods.org) to install DeviceSpec.

```bash
pod 'DeviceSpec'
```

## Usage

```swift
import DeviceSpec

DeviceSpec.deviceModelID // "iPhone 13,2" - universal Apple device identifier
DeviceSpec.deviceMarketingName // "iPhone 12" - device marketing name
DeviceSpec.deviceType // DeviceType: .iPhone, .iPad, .iPod, .watch, .appleTV, .homePod, .simulator, .unknown

DeviceSpec.isPad // Bool
DeviceSpec.isPhone // Bool
DeviceSpec.isWatch // Bool
DeviceSpec.isPod // Bool
DeviceSpec.isSimulator // Bool

DeviceSpec.screenSize // ScreenSize
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://choosealicense.com/licenses/mit/)
