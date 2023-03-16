import SwiftUI

struct InputArea: View {
    let primaryText: String
    let secondaryText: String
    let action: Bind
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.1)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(primaryText)
                        .font(.system(size: 20, weight: .bold))
                    
                    Text(secondaryText)
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                BaseButton(image: "trash", title: "Remover conta", titleColor: .blue, action: action)
            }
            .padding()
        }
        .frame(maxHeight: 100)
    }
}
