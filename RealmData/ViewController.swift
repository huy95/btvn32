//
//  ViewController.swift
//  RealmData
//
//  Created by Huy on 4/24/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textName: UITextField!
    
    @IBOutlet weak var textMs: UITextField!
    
    
    
    @IBOutlet weak var Name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        createData()
        printData()
    }
   
    @IBAction func putData(_ sender: Any) {
        let dog1 = Lib()
        dog1.name = textName.text!
        dog1.MS = textMs.text!
                
//                let dog2 = Lib()
//                dog2.name = "hello"
//                dog2.MS = "2"
                
                let person = Library()
        person.name = textName.text!
        person.nameBook = Name.text!
             
                person.dogs.append(objectsIn: [dog1])
                
                DBManger.shareInstance.addInfor(dogs: [dog1 , dog1])
                DBManger.shareInstance.addPerson(person: person)
        
        
        
    }
    func printData(){
            let results = DBManger.shareInstance.getAllData()
            for item in results {
                print("person : \(item.ID)")
    //            for jtem in item.dogs {
    //                print(jtem.name, jtem.color ?? "no color")
    //            }
    //        }
        }
   }
    
}
