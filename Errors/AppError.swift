//
//  AppError.swift
//  learn-swift
//
//  Created by Robert Ďurica on 28.06.2022.
//

import Foundation

enum AppErrors:Error {
    case FirstError
    case SecondError(line: Int)
}
