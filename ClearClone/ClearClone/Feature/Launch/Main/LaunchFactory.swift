import SwiftUI

enum LaunchFactory {
    static func make(nextView: @escaping () -> some View) -> some View {
        let navigatorViewModel = NavigatorViewModel()
        let navigator = Navigator(model: navigatorViewModel, content: nextView)
        
        let view = LaunchController(completion: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                navigatorViewModel.active()
            }
        })
        
        return VStack {
            navigator
            view
        }
    }
}
