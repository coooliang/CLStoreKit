//
//  CLKV.swift
//  CLStoreKitDemo
//
//  Created by lion on 2020/4/13.
//  Copyright © 2020 lion. All rights reserved.
//

import UIKit

class CLKV: NSObject {
    public static func set(value: Any, forKey keyString: String){
        let userDef = UserDefaults.standard
        userDef.set(value, forKey: keyString)
        userDef.synchronize()
    }
    public static func get(key:String)->Any{
        let userDef = UserDefaults.standard
        return userDef.object(forKey: key) as Any
    }
    public static func removeForKey(key:String){
        let userDef = UserDefaults.standard
        userDef.removeObject(forKey: key)
        userDef.synchronize()
    }
    public static func removeForKeys(keys:Array<String>){
        let userDef = UserDefaults.standard
        for key in keys {
            userDef.removeObject(forKey: key)
        }
        userDef.synchronize()
    }
}
