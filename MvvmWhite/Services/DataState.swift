//
//  DataState.swift
//  MvvmWhite
//
//  Created by Muhammad Abumandour on 25/10/2021.
//

import Foundation

public enum DataState: Error {
    case Error(String)
    case Empty(String)
}


extension DataState : CustomStringConvertible{
   public var description: String {
        switch self {
        case .Error(let message):
            return message
        case .Empty(let message):
            return message
        }
    }
}
