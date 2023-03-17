import SwiftUI

enum LoginFactory {
    static func make(authenticate: @escaping Bind) -> some View {
        let navigatorViewModel = NavigatorViewModel()
        let navigator = Navigator(model: navigatorViewModel, content: {
            TabBarView()
        })
        let controller = LoginController(removeAccountAction: {
            print("DEBUG: Remove account")
        }, clearTokenAction: {
            print("DEBUG: Clear token")
            navigatorViewModel.active()
        }, acessAccountAction: { [authenticate] in
            print("DEBUG: Access account")
            authenticate()
        })
        return VStack {
            navigator
            controller
        }
        .navigationBarBackButtonHidden()
    }
}
