import SwiftUI

@main
struct ClearCloneApp: App {
    @State private var isAutahenticate = false
    
    var body: some Scene {
        WindowGroup {
            NavigationView(content: makeLaunch)
        }
        
    }
    
    private func makeLaunch() -> some View {
        return LaunchFactory.make {
            return LoginFactory.make(authenticate: {
                isAutahenticate = true
            })
        }
        .fullScreenCover(isPresented: $isAutahenticate) {
            AuthenticateFactory.make(cancel: {
                isAutahenticate = false
            })
        }
    }
}
