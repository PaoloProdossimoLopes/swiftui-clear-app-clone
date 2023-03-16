import SwiftUI

@main
struct ClearCloneApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView(content: LaunchFactory.make)
        }
    }
}
