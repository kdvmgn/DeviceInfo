//
//  SectionModel.swift
//  SampleApp
//
//  Created by Dmitry Kuleshov on 27.11.2020.
//

import Foundation

struct SectionModel {
    var title: String?
    var rows: [RowModel]
}

struct RowModel {
    var title: String?
    var description: String?
}
