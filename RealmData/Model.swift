//
//  Model.swift
//  RealmData
//
//  Created by Huy on 4/24/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
import RealmSwift

class Library: Object {
    @objc dynamic var ID = ""
    @objc dynamic var name = ""
    @objc dynamic var nameBook = ""
    
    let dogs = List<Lib>()
    
    override class func primaryKey() -> String? {
        return "ID"
    }
    
}

class Lib: Object {
    @objc dynamic var name = ""
//    @objc dynamic var MS : String! = nil
    @objc dynamic var MS : String! = nil
}
