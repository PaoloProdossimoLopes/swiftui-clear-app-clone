import SwiftUI

struct LaunchView: View {
    var body: some View {
        ZStack {
            Color.darker.ignoresSafeArea()
            ClearLogo()
        }
    }
}

#if DEBUG
struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
#endif
