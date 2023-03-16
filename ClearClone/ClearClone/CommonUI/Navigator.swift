import SwiftUI

class NavigatorViewModel: ObservableObject {
    @Published var isActive = false
    
    func active() {
        isActive = true
    }
    
    func desactive() {
        isActive = false
    }
}

struct Navigator<Content: View>: View {
    
    @StateObject var model: NavigatorViewModel
    let content: () -> Content
    
    var body: some View {
        NavigationLink(
            isActive: $model.isActive,
            destination: content,
            label: EmptyView.init
        )
    }
}
