import SwiftUI

struct BaseButton: View {
    var image: String = ""
    let title: String
    let titleColor: Color
    let action: Bind
    
    var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
                
                if image.isEmpty == false {
                    Image(systemName: image)
                }
                
                Text(title)
                    .foregroundColor(titleColor)
                    .font(.system(size: 14, weight: .bold))
                
                Spacer()
            }
            .frame(height: 50)
        }
    }
}
