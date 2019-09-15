//
//  UserDetailView.swift
//  swift-ui-demo
//
//  Created by Kushida　Eiji on 2019/09/15.
//  Copyright © 2019 Kushida　Eiji. All rights reserved.
//

import SwiftUI

struct UserDetailView: View {
    
    let user: User
    
    var body: some View {
        
        VStack {
            Image(user.imageName)
                .resizable()
                .frame(width: 200, height: 200)
            Text(user.message)
                .font(.title)
            Spacer()
        }.navigationBarTitle(user.userName)
    }
}
