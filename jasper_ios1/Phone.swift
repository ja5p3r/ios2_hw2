//
//  Phone.swift
//  jasper_ios1
//
//  Created by User03 on 2019/10/18.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation

struct Phone: Identifiable{
    var id = UUID()
    var name: String
    var iphone: [phoneData]
    var data: String
}
