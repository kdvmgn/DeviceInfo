//
//  DeviceSpecScreen.swift
//  DeviceSpec
//
//  Created by Dmitry Kuleshov on 27.11.2020.
//

import UIKit

public class Screen {
    
    // MARK: - Properties
    
    static private var deviceModel: DeviceModelName {
        return Device.deviceModel
    }
    
    static public var isRetina: Bool {
        return UIScreen.main.scale > 1.0
    }
    
    static public var isSmallScreen: Bool {
        switch screenSize {
        case .screen3_5in, .screen4in:
            return true
        default:
            return false
        }
    }
    
    static public var screenSize: ScreenSize {
        switch deviceModel {
        case .watch, .watch1, .watch2, .watch3, .watch4, .watch5:
            return .watch
        case .iPhone, .iPhone3G, .iPhone3GS, .iPhone4, .iPhone4s,
             .iPodTouch1, .iPodTouch2, .iPodTouch3, .iPodTouch4:
            return .screen3_5in
        case .iPhone5, .iPhone5s, .iPhone5c, .iPhoneSE, .iPodTouch5, .iPodTouch6, .iPodTouch7:
            return .screen4in
        case .iPhone6, .iPhone6s, .iPhone7, .iPhone8, .iPhoneSE2:
            return .screen4_7in
        case .iPhone12Mini:
            return .screen5_4in
        case .iPhone6Plus, .iPhone6sPlus, .iPhone7Plus, .iPhone8Plus:
            return .screen5_5in
        case .iPhoneX, .iPhoneXS, .iPhone11Pro:
            return .screen5_8in
        case .iPhoneXR, .iPhone11:
            return .screen6_1in
        case .iPhoneXSMax, .iPhone11ProMax, .iPhone12, .iPhone12Pro:
            return .screen6_5in
        case .iPhone12ProMax:
            return .screen6_7in
        case .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadMini5:
            return .screen7_9in
        case .iPad1, .iPad2, .iPad3, .iPad4, .iPad5, .iPad6, .iPadAir, .iPadAir2, .iPadPro97Inch:
            return .screen9_7in
        case .iPad8th:
            return .screen10_2in
        case .iPadPro105Inch, .iPadAir3rd:
            return .screen10_5in
        case .iPadAir4th:
            return .screen10_9in
        case .iPadPro4th11inch, .iPadPro11Inch:
            return .screen11in
        case .iPadPro4th12inch:
            return .screen12in
        case .iPadPro129Inch, .iPadPro129Inch2ndGen, .iPadPro129Inch3rdGen:
            return .screen12_9in
        default:
            return .unknownSize
        }
    }
}
