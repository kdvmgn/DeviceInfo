//
//  ViewModel.swift
//  SampleApp
//
//  Created by Dmitry Kuleshov on 27.11.2020.
//

import Foundation
import DeviceSpec

class ViewModel {
    
    // MARK: - Properties
    
    private lazy var sections: [SectionModel] = [deviceSection, screenSection, diskSection]
    
    private var deviceSection = SectionModel(title: "Device",
                                             rows: [RowModel(title: "Device model ID", description: DeviceSpec.device.deviceModelID),
                                                    RowModel(title: "Marketing name", description: DeviceSpec.device.deviceMarketingName),
                                                    RowModel(title: "Device type", description: DeviceSpec.device.deviceType.rawValue)])
    
    private var screenSection = SectionModel(title: "Screen",
                                             rows: [RowModel(title: "Device screen", description: DeviceSpec.screen.screenSize.rawValue),
                                                    RowModel(title: "Is Retina?", description: DeviceSpec.screen.isRetina ? "true" : "false"),
                                                    RowModel(title: "Is small screen?", description: DeviceSpec.screen.isSmallScreen ? "true" : "false")])
    
    private var diskSection = SectionModel(title: "Disk",
                                           rows: [RowModel(title: "Total", description: DeviceSpec.disk.totalDiskSpace),
                                                  RowModel(title: "Used", description: DeviceSpec.disk.usedDiskSpace),
                                                  RowModel(title: "Available", description: DeviceSpec.disk.availableDiskSpace)])
    
    var sectionsCount: Int {
        return sections.count
    }
    
    // MARK: - Methods
    
    func numberOfRows(in section: Int) -> Int {
        return sections[section].rows.count
    }
    
    func viewModel(forRow row: Int, in section: Int) -> RowModel {
        return sections[section].rows[row]
    }
    
    func title(for section: Int) -> String? {
        return sections[section].title
    }
}
