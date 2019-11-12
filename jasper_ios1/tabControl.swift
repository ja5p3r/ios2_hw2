//
//  tabControl.swift
//  jasper_ios1
//
//  Created by User03 on 2019/10/18.
//  Copyright © 2019 test. All rights reserved.
//

import SwiftUI

struct tabControl: View {
    var body: some View {
        TabView{
            phoneView()
            .tabItem{
                Image(systemName: "gobackward.15.hi")
                Text("stepper")
            }
            macView()
            .tabItem{
                Image(systemName:"signature")
                Text("slider")
            }
        }
    }
}

struct tabControl_Previews: PreviewProvider {
    static var previews: some View {
        tabControl()
    }
}
