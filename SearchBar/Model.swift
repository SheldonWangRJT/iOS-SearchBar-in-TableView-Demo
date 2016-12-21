//
//  Model.swift
//  SearchBar
//
//  Created by Shinkangsan on 12/20/16.
//  Copyright © 2016 Sheldon. All rights reserved.
//

import UIKit

class Model: NSObject {
    var imageName:String = ""
    var imageYear:String = ""
    var imageBy:String = ""
    
    init(name:String,year:String,by:String) {
        self.imageName = name
        self.imageYear = year
        self.imageBy = by
    }
    
    class func generateModelArray() -> [Model]{
        var modelAry = [Model]()
        
        modelAry.append(Model(name: "img0", year: "2000", by: "sheldon"))
        modelAry.append(Model(name: "img1", year: "2010", by: "xiaodan"))
        modelAry.append(Model(name: "img2", year: "2008", by: "wang"))
        modelAry.append(Model(name: "img3", year: "2015", by: "singleton"))
        modelAry.append(Model(name: "img4", year: "2020", by: "unknown"))
        
        return modelAry
    }
}
