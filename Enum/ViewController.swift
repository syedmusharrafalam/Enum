//
//  ViewController.swift
//  Enum
//
//  Created by mac on 10/5/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    enum College {
        
        case studentName
        case universityName
        case id
        
        
    }
    
    enum CollegeType:String {
        case studentName = "musharraf"
        case universityName = "urdu university"
        case id = "12"
    }
    
    enum CollegeFunction {
        case studentName
        case universityName
        case id
        
        
        func description() -> String {
            switch self {
            case .studentName:
                return "musharraf"
           
            case .universityName:
                return "urdu univesity"
            case .id:
                return "12"
            }
        }
        
        
    }
    
    
    
    enum Student {
        case studentName(String)
        case marks(String,String,String)
    }
    
    
    func withFunArg()  {
        let stuName = Student.studentName("abc")
        let stuMarks = Student.marks("12", "13", "14")
        
        switch stuMarks {
        case .studentName(let strName):
            print("my name is \(strName)")
    
        case .marks(let m1,let m2,let m3):
            print("my marks is \(m1) \(m2) \(m3)")
    
        
    }
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       // self.withtype()
//        let name = CollegeFunction.studentName.description()
//        print(name)
        
        withFunArg()
        
    }

    func withtype() {
        let collegeTypeDetail = CollegeType.universityName
        let value = CollegeType.universityName.rawValue
        let hashvalues = CollegeType.universityName.hashValue
        
        print(collegeTypeDetail)
        print(value)
        print(hashvalues)
    }
    
    func withoutType() {
        let collegeTypeDetail = College.id
        switch collegeTypeDetail {
        case .studentName:
            print("musharraf")
        case .universityName:
            print("abc university")
        case .id:
            print("12")
        }
        
    }
    
    
}

