import SwiftUI

struct LoginView: View {
    let removeAccountAction: Bind
    let clearTokenAction: Bind
    let acessAccountAction: Bind
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                LoginImageContainer()
                
                Divider()
                    .frame(height: 8)
                    .background(.green)
                
                VStack {
                    LoginCaptionContainer()
                        .padding()
                    
                    InputArea(
                        primaryText: "Paolo",
                        secondaryText: "CPF 437.***.***-22",
                        action: removeAccountAction
                    )
                    .padding(.vertical)
                    
                    LoginButtonContainer(
                        secondaryAction: clearTokenAction,
                        primaryAction: acessAccountAction
                    )
                }
            }
        }
        .ignoresSafeArea()
        .background(.white)
    }
}

private struct LoginImageContainer: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            ClearLogo()
        }
    }
}

struct ClearLogo: View {
    var body: some View {
        Image("corretora-clear")
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .foregroundColor(.white)
            .frame(maxWidth: 200)
            .frame(height: 450)
    }
}

private struct LoginCaptionContainer: View {
    var body: some View {
        VStack(spacing: 5) {
            Text("Bem vindo(a) de volta!")
                .font(.system(size: 24, weight: .bold))
            
            Text("Faça o login para acessar sua conta.")
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(.gray)
        }
    }
}

private struct LoginButtonContainer: View {
    let secondaryAction: Bind
    let primaryAction: Bind
    
    var body: some View {
        VStack {
            SecondaryButton(image: "key", title: "Clear Token", action: secondaryAction)
                .padding(.horizontal)
            
            PrimaryButton(title: "Acessar minha conta", action: primaryAction)
                .padding(.horizontal)
        }
    }
}

#if DEBUG
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(
            removeAccountAction: {},
            clearTokenAction: {},
            acessAccountAction: {}
        )
    }
}
#endif
