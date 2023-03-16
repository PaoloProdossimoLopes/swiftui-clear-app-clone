import SwiftUI

@main
struct ClearCloneApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView(content: makeLaunch)
        }
    }
    
    private func makeLaunch() -> some View {
        return LaunchFactory.make(nextView: LoginFactory.make)
    }
}
