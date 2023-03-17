import SwiftUI

struct AuthenticateView: View {
    @State private var opacity: CGFloat = 0.0
    
    let cancel: Bind
    
    var body: some View {
        VStack {
            Spacer()
                
                VStack(spacing: 35) {
                    
                    Image(systemName: "faceid")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 40)
                    
                    VStack(spacing: 35) {
                        VStack(alignment: .center, spacing: 5) {
                            Text("Entre com reconhecimento facial")
                                .font(.system(size: 20, weight: .bold))
                            
                            Text("Coloque o celular na frente do seu rosto para validar sua identidade.")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 14, weight: .regular))
                                .foregroundColor(.gray)
                        }
                        
                        SecondaryButton(title: "Cacelar", action: cancel)
                    }
                    .padding(.horizontal, 18)
                        
                }
                .padding(.vertical, 30)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 10, x: 0, y: -5)
        }
        .ignoresSafeArea()
        .background(TransparentView())
    }
}

#if DEBUG
struct AuthenticateView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticateView(cancel: {})
    }
}
#endif
