//
//  macView.swift
//  jasper_ios1
//
//  Created by User03 on 2019/10/18.
//  Copyright © 2019 test. All rights reserved.
//

import SwiftUI

struct macView: View {
    @State private var pick = 0
    @State private var bool = false
    @State private var move:CGFloat = 0.0
    var body: some View {
        VStack{
            Text(phones[pick].name)
                .font(.largeTitle)
            
            VStack{
                if bool{
                    Image(phones[pick].name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 380, height: 400)
                    .clipped()
                        .animation(Animation.easeIn(duration: 0.5).repeatCount(1,autoreverses: false))
                    .offset(x: move, y: 0)
                }else {
                    Image("apple logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 380, height: 400)
                    .clipped()
                    .offset(x: move, y: 0)
                }
                Toggle("Show Image", isOn: $bool)
                Slider(value:self.$move, in: -100...100)
                    .accentColor(.red)
            }
                
            Picker(selection: $pick, label:Text("型號")){
                ForEach(0..<phones.count){ (index) in Text(phones[index].name)
                    .foregroundColor(.blue)
                }
            }.pickerStyle(WheelPickerStyle())
            
        }
    }
}


struct macView_Previews: PreviewProvider {
    static var previews: some View {
        macView()
    }
}
