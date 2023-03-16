import SwiftUI

struct LoginController: View {
    let removeAccountAction: Bind
    let clearTokenAction: Bind
    let acessAccountAction: Bind
    
    var body: some View {
        LoginView(
            removeAccountAction: removeAccountAction,
            clearTokenAction: clearTokenAction,
            acessAccountAction: acessAccountAction
        )
    }
}
