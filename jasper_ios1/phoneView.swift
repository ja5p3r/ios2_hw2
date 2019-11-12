//
//  phoneView.swift
//  jasper_ios1
//
//  Created by User03 on 2019/10/18.
//  Copyright © 2019 test. All rights reserved.
//

import SwiftUI

struct phoneView: View {
    @State private var no = 0
    @State private var text = ""
    @State private var show = false
    var body: some View {
        Form{
            Text("販售順序")
            Stepper(value: $no, in: 0...23, step: 1) {
                Image("\(self.no)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 200)
                    .clipped()
                VStack{
                    Text("好不好看？")
                    TextField("答案", text: $text)
                }
            }
            
            Button(action: {self.show = true}){
                VStack{
                    Text("介紹")
                        .padding(.leading,190)
                }
            }
                .alert(isPresented: self.$show) { () -> Alert in
                    let answer = phones[no].data
                    return Alert(title: Text(answer))
            }
            Text("你覺得：\(text)")
        }
    }
}

struct phoneView_Previews: PreviewProvider {
    static var previews: some View {
        phoneView()
    }
}
