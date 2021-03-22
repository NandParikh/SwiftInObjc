//
//  Test.swift
//  SwiftInObjC
//
//  Created by Nand Parikh on 22/03/21.
//

import UIKit

class Test: NSObject {
    var obj : String = String()
    
   @objc func printdata(){
        obj = "This is from swift file"
        print(obj)
    }
}
