//
//  phoneDetail.swift
//  jasper_ios1
//
//  Created by User03 on 2019/10/18.
//  Copyright © 2019 test. All rights reserved.
//

import SwiftUI

struct phoneDetail: View {
    var phones: Phone
    var body: some View {
        List(0..<phones.iphone.count){(index) in
            VStack(){
                Image(self.phones.iphone[index].name)
                .resizable()
                .scaledToFill()
                .cornerRadius(40)
                .clipped()
                    .background(Color.white)
                Text(self.phones.iphone[index].data)
                    .font(Font.system(size: 20))
                Spacer()
            }
            .cornerRadius(40)
        }
    }
}

struct phoneDetail_Previews: PreviewProvider {
    static var previews: some View {
        phoneDetail(phones: phones[0])
    }
}
