//
//  DeviceSpec.swift
//  DeviceSpec
//
//  Created by Дмитрий Кулешов on 26.11.2020.
//

import UIKit

open class DeviceSpec {
    
    // MARK: - Device
    
    static public var device: Device.Type {
        return Device.self
    }
    
    // MARK: - Screen
    
    static public var screen: Screen.Type {
        return Screen.self
    }
    
    // MARK: - Disk
    
    static public var disk: Disk.Type {
        return Disk.self
    }
}


