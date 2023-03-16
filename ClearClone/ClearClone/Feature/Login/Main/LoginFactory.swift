import SwiftUI

enum LoginFactory {
    static func make() -> some View {
        return LoginController(removeAccountAction: {
            print("DEBUG: Remove account")
        }, clearTokenAction: {
            print("DEBUG: Clear token")
        }, acessAccountAction: {
            print("DEBUG: Access account")
        })
        .navigationBarBackButtonHidden()
    }
}

enum AuthenticateFactory {
    static func make() -> some View {
        return ZStack {
            Spacer()
            
            VStack {
                Text("Title")
                Spacer()
            }
            .background(.white)
            .cornerRadius(8)
        }
    }
}
