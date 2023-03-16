import SwiftUI

struct Logo: View {
    var body: some View {
        Image("launch_logo")
            .resizable()
            .scaledToFit()
            .frame(maxWidth: 200)
    }
}
