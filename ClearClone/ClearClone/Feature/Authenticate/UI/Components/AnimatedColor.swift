import SwiftUI

struct AnimatedColor: View {
    @State private var opacity: CGFloat = 0.0
    
    let color: Color
    
    var body: some View {
        color.opacity(opacity).ignoresSafeArea()
            .onAppear { opacity = 0.2 }
            .onDisappear { opacity = 0 }
            .animation(.easeOut(duration: 0.3), value: opacity)
    }
}
