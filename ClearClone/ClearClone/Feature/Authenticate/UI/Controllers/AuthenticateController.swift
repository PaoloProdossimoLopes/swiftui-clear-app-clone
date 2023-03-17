import SwiftUI

struct AuthenticateController: View {
    
    let cancel: Bind
    
    var body: some View {
        AuthenticateView(cancel: cancel)
    }
}
