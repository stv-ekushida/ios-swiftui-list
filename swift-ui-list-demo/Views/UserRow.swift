//
//  UserRow.swift
//  swift-ui-demo
//
//  Created by Kushida　Eiji on 2019/09/15.
//  Copyright © 2019 Kushida　Eiji. All rights reserved.
//

import SwiftUI

struct UserRow: View {
    
    let user: User
    
    var body: some View {
        HStack {
                        
            Image(user.imageName)
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 2))
                .frame(width: 70, height: 70)
            
            VStack(alignment: .leading) {
                Text(user.userName)
                    .font(.headline)
                Text(user.message)
                    .font(.subheadline)
                    .lineLimit(nil)
                }.padding(.leading, 8)  // Image とVStackのパッディング
            
        }.padding(.init(top: 12, leading: 0, bottom: 12, trailing: 0))

    }
}
