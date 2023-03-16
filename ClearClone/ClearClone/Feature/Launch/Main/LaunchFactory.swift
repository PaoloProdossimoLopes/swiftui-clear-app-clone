import SwiftUI

enum LaunchFactory {
    static func make() -> some View {
        let navigatorViewModel = NavigatorViewModel()
        let navigator = Navigator(model: navigatorViewModel, content: EmptyView.init)
        
        let view = LaunchController(completion: navigatorViewModel.active)
        
        return VStack {
            navigator
            view
        }
    }
}
