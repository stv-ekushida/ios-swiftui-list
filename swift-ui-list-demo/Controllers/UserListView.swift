//
//  UserListView.swift
//  swift-ui-demo
//
//  Created by Kushida　Eiji on 2019/09/14.
//  Copyright © 2019 Kushida　Eiji. All rights reserved.
//

import SwiftUI

struct UserListView: View {
    
    let users: [User] = [
        .init(id: 0, userName: "STV1", message: "Hello1", imageName: "stv1"),
        .init(id: 1, userName: "STV2", message: "Hello2", imageName: "stv2"),
        .init(id: 2, userName: "STV3", message: "Hello3Hello3Hello3Hello3Hello3Hello3Hello3Hello3", imageName: "stv3")
    ]
    
    var body: some View {
        
        NavigationView{
            
            List(users) { user in
                
                NavigationLink(destination: UserDetailView(user: user)) {
                    UserRow(user: user)
                }
                
            }.navigationBarTitle(Text("Users"))
        }
    }
}

#if DEBUG
struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
#endif
