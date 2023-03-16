import SwiftUI

typealias Bind = () -> Void

struct LaunchController: View {
    let completion: Bind
    
    var body: some View {
        LaunchView()
            .onAppear(perform: completion)
    }
}
