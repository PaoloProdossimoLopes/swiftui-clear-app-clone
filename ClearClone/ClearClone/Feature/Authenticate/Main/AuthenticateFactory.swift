import SwiftUI

enum AuthenticateFactory {
    static func make(cancel: @escaping Bind) -> some View {
        let controller = AuthenticateController(cancel: cancel)
        return controller
    }
}
