//
//  DBManager.swift
//  RealmData
//
//  Created by Huy on 4/24/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
import RealmSwift

class DBManger {
private var database : Realm!
static let shareInstance = DBManger()

private init(){
    // khoi tao realm
    database = try! Realm()
    // hien thi duong dan
    print(database.configuration.fileURL!)
    
}
func addPerson( person : Library){
    try! database.write {
        person.ID = UUID().uuidString
        database.add(person)
    }
}
func addInfor( dogs : [Lib]){
       try! database.write {
           if dogs.count > 0{
               database.add(dogs)
           }
       }
   }
func getAllData() -> Results<Library> {
        let results = database.objects(Library.self)
        return results
    }
    func updatePersonByID( id : String , object : Library){
        object.ID = id
        try! database.write {
            database.add(object, update: .modified)
        }
    }
}
