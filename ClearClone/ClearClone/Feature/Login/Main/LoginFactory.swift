import SwiftUI

enum LoginFactory {
    static func make() -> some View {
        return LoginController()
    }
}
