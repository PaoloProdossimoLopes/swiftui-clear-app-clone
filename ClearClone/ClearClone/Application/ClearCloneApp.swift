import SwiftUI

@main
struct ClearCloneApp: App {
    @State private var isAutahenticate = false
    
    var body: some Scene {
        WindowGroup {
            NavigationView(content: makeLaunch)
                .fullScreenCover(isPresented: $isAutahenticate, content: makeAuthenticate)
        }
    }
    
    private func makeLaunch() -> some View {
        LaunchFactory.make(nextView: makeLogin)
    }
    
    private func makeLogin() -> some View {
        LoginFactory.make(authenticate: {
            isAutahenticate = true
        })
    }
    
    private func makeAuthenticate() -> some View {
        AuthenticateFactory.make(cancel: {
            isAutahenticate = false
        })
    }
}
