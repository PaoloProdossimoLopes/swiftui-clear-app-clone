import SwiftUI

struct BaseButton: View {
    var image: String = ""
    let title: String
    let titleColor: Color
    let action: Bind
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: image)
                Text(title)
                    .foregroundColor(titleColor)
                    .font(.system(size: 14, weight: .bold))
            }
            .frame(height: 50)
        }
    }
}
