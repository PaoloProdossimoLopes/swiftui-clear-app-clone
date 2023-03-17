import SwiftUI

enum AuthenticateFactory {
    static func make(cancel: @escaping Bind) -> some View {
        let controller = AuthenticateController(cancel: { [cancel] in
            print("DEBUG: Cancel authenticate")
            cancel()
        })
        return controller
    }
}
