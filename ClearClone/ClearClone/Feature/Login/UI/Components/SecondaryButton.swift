import SwiftUI

struct SecondaryButton: View {
    
    var image: String = ""
    let title: String
    let action: Bind
    
    var body: some View {
        BaseButton(image: image, title: title, titleColor: .blue, action: action)
            .frame(maxWidth: .infinity)
            .background {
                RoundedRectangle(cornerRadius: 5)
                    .strokeBorder(style: StrokeStyle(lineWidth: 2))
                    .foregroundColor(.blue)
            }
    }
}
