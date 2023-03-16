import SwiftUI

struct PrimaryButton: View {
    
    var image: String = ""
    let title: String
    let action: Bind
    
    var body: some View {
        BaseButton(image: image, title: title, titleColor: .white, action: action)
            .frame(maxWidth: .infinity)
            .background {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.blue)
            }
    }
}
