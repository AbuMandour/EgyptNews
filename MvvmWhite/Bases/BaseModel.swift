//
//  BaseModel.swift
//  MvvmWhite
//
//  Created by Muhammad Abumandour on 26/10/2021.
//

import Foundation

public protocol BaseModel {
    var id: String { get set }
}

public class DefualtModel : BaseModel{
    public var id: String = UUID().uuidString
}

public class DefualtData : Codable{
}

