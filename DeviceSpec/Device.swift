//
//  DeviceSpecDevice.swift
//  DeviceSpec
//
//  Created by Dmitry Kuleshov on 27.11.2020.
//

import UIKit

public class Device {
    
    // MARK: - Static properties
    
    static public var deviceMarketingName: String {
        return deviceModel.rawValue
    }
    
    static public var deviceModelID: String {
        return deviceIdentifier()
    }
    
    static public var deviceType: DeviceType {
        switch deviceModel {
        case .iPodTouch1, .iPodTouch2, .iPodTouch3, .iPodTouch4, .iPodTouch5, .iPodTouch6, .iPodTouch7:
            return .iPod
        case .iPhone, .iPhone3G, .iPhone3GS, .iPhone4, .iPhone4s, .iPhone5, .iPhone5c, .iPhone5s,
             .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE,
             .iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro,
             .iPhone11ProMax, .iPhoneSE2, .iPhone12Mini, .iPhone12, .iPhone12Pro, .iPhone12ProMax:
            return .iPhone
        case .iPad1, .iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPad5, .iPad6,
             .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadPro97Inch, .iPadPro129Inch,
             .iPadPro129Inch2ndGen, .iPadPro105Inch, .iPadPro11Inch, .iPadPro129Inch3rdGen,
             .iPadPro4th11inch, .iPadPro4th12inch, .iPadMini5, .iPadAir3rd, .iPad8th, .iPadAir4th:
            return .iPad
        case .watch, .watch1, .watch2, .watch3, .watch4, .watch5:
            return .watch
        case .appleTV, .appleTV4K:
            return .appleTV
        case .homePod:
            return .homePod
        case .simulator:
            return .simulator
        default:
            return .unknown
        }
    }
    
    static public var isPad:  Bool {
        return deviceType == .iPad
    }
    
    static public var isPhone: Bool {
        return deviceType == .iPhone
    }
    
    static public var isWatch: Bool {
        return deviceType == .watch
    }
    
    static public var isPod: Bool {
        return deviceType == .iPod
    }
    
    static public var isSimulator: Bool {
        return deviceType == .simulator
    }
    
    static public var deviceModel: DeviceModelName {
        switch deviceIdentifier() {
        case "iPod1,1":                                         return .iPodTouch1
        case "iPod2,1":                                         return .iPodTouch2
        case "iPod3,1":                                         return .iPodTouch3
        case "iPod4,1":                                         return .iPodTouch4
        case "iPod5,1":                                         return .iPodTouch5
        case "iPod7,1":                                         return .iPodTouch6
        case "iPod9,1":                                         return .iPodTouch7
        case "iPhone1,1":                                       return .iPhone
        case "iPhone1,2":                                       return .iPhone3G
        case "iPhone2,1":                                       return .iPhone3GS
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":             return .iPhone4
        case "iPhone4,1":                                       return .iPhone4s
        case "iPhone5,1", "iPhone5,2":                          return .iPhone5
        case "iPhone5,3", "iPhone5,4":                          return .iPhone5c
        case "iPhone6,1", "iPhone6,2":                          return .iPhone5s
        case "iPhone7,2":                                       return .iPhone6
        case "iPhone7,1":                                       return .iPhone6Plus
        case "iPhone8,1":                                       return .iPhone6s
        case "iPhone8,2":                                       return .iPhone6sPlus
        case "iPhone9,1", "iPhone9,3":                          return .iPhone7
        case "iPhone9,2", "iPhone9,4":                          return .iPhone7Plus
        case "iPhone8,4":                                       return .iPhoneSE
        case "iPhone10,1", "iPhone10,4":                        return .iPhone8
        case "iPhone10,2", "iPhone10,5":                        return .iPhone8Plus
        case "iPhone10,3", "iPhone10,6":                        return .iPhoneX
        case "iPhone11,2":                                      return .iPhoneXS
        case "iPhone11,4", "iPhone11,6":                        return .iPhoneXSMax
        case "iPhone11,8":                                      return .iPhoneXR
        case "iPhone12,1" :                                     return .iPhone11
        case "iPhone12,3" :                                     return .iPhone11Pro
        case "iPhone12,5" :                                     return .iPhone11ProMax
        case "iPhone12,8" :                                     return .iPhoneSE2
        case "iPhone13,1" :                                     return .iPhone12Mini
        case "iPhone13,2" :                                     return .iPhone12
        case "iPhone13,3" :                                     return .iPhone12Pro
        case "iPhone13,4 ":                                     return .iPhone12ProMax
        case "iPad1,1", "iPad1,2" :                             return .iPad1
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":        return .iPad2
        case "iPad3,1", "iPad3,2", "iPad3,3":                   return .iPad3
        case "iPad3,4", "iPad3,5", "iPad3,6":                   return .iPad4
        case "iPad4,1", "iPad4,2", "iPad4,3":                   return .iPadAir
        case "iPad5,3", "iPad5,4":                              return .iPadAir2
        case "iPad6,11", "iPad6,12":                            return .iPad5
        case "iPad7,5", "iPad7,6":                              return .iPad6
        case "iPad2,5", "iPad2,6", "iPad2,7":                   return .iPadMini
        case "iPad4,4", "iPad4,5", "iPad4,6":                   return .iPadMini2
        case "iPad4,7", "iPad4,8", "iPad4,9":                   return .iPadMini3
        case "iPad5,1", "iPad5,2":                              return .iPadMini4
        case "iPad6,3", "iPad6,4":                              return .iPadPro97Inch
        case "iPad6,7", "iPad6,8":                              return .iPadPro129Inch
        case "iPad7,1", "iPad7,2":                              return .iPadPro129Inch2ndGen
        case "iPad7,3", "iPad7,4":                              return .iPadPro105Inch
        case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4":        return .iPadPro11Inch
        case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8":        return .iPadPro129Inch3rdGen
        case "iPad8,9", "iPad8,10" :                            return .iPadPro4th11inch
        case "iPad8,11", "iPad8,12":                            return .iPadPro4th12inch
        case "iPad11,1", "iPad11,2":                            return .iPadMini5
        case "iPad11,3", "iPad11,4":                            return .iPadAir3rd
        case "iPad11,6", "iPad11,7":                            return .iPad8th
        case "iPad13,1", "iPad13,2":                            return .iPadAir4th
        case "Watch1,1", "Watch1,2":                            return .watch
        case "Watch2,6", "Watch2,7":                            return .watch1
        case "Watch2,3", "Watch2,4":                            return .watch2
        case "Watch3,1", "Watch3,2", "Watch3,3":                return .watch3
        case "Watch4,1", "Watch4,2", "Watch4,3", "Watch4,4":    return .watch4
        case "Watch5,1", "Watch5,2", "Watch5,3", "Watch5,4":    return .watch5
        case "AppleTV5,3":                                      return .appleTV
        case "AppleTV6,2":                                      return .appleTV4K
        case "AudioAccessory1,1":                               return .homePod
        case "i386", "x86_64":                                  return .simulator
        default:                                                return .undefined
        }
    }
}

fileprivate extension Device {
    
    // MARK: - Static properties
    
    static func deviceIdentifier() -> String {
        #if targetEnvironment(simulator)
        let identifier = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"]!
        #else
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8 , value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        #endif
        return identifier
    }
}
