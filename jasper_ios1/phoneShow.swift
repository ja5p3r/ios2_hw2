//
//  phoneShow.swift
//  jasper_ios1
//
//  Created by User03 on 2019/10/18.
//  Copyright © 2019 test. All rights reserved.
//

import SwiftUI

struct phoneShow: View {
    var phone: Phone
    var body: some View {
        HStack{
            Image(phone.name)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            Text(phone.name)
                
        }
    }
}

struct phoneShow_Previews: PreviewProvider {
    static var previews: some View {
        phoneShow(phone: phones[0])
    }
}
