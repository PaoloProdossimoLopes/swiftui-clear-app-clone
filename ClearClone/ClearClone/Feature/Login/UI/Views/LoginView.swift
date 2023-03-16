import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                ZStack {
                    Color.blue.ignoresSafeArea()
                    Image("")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 200)
                        .frame(height: 450)
                }
                
                Divider()
                    .frame(height: 8)
                    .background(.green)
                
                VStack {
                    VStack(spacing: 5) {
                        Text("Bem vindo(a) de volta!")
                            .font(.system(size: 24, weight: .bold))
                        
                        Text("Faça o login para acessar sua conta.")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.gray)
                    }
                    .padding()
                    
                    ZStack {
                        Color.gray.opacity(0.1)
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Paolo")
                                    .font(.system(size: 20, weight: .bold))
                                
                                Text("CPF 437.***.***-22")
                                    .font(.system(size: 14, weight: .regular))
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            Button(action: {}) {
                                HStack {
                                    HStack {
                                        Image(systemName: "trash")
                                        Text("Remover conta")
                                            .font(.system(size: 12, weight: .bold))
                                    }
                                }
                            }
                        }
                        .padding()
                    }
                    .frame(maxHeight: 100)
                    
                    VStack {
                        Button(action: {}) {
                            HStack {
                                Spacer()
                                Image(systemName: "key")
                                Text("Clear Token")
                                    .font(.system(size: 14, weight: .bold))
                                Spacer()
                            }
                            .frame(height: 50)
                            .background {
                                RoundedRectangle(cornerRadius: 5)
                                    .strokeBorder(style: StrokeStyle(lineWidth: 2))
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                        
                        
                        Button(action: {}) {
                            HStack {
                                Spacer()
                                
                                Text("Acessar minha conta")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .bold))
                                
                                Spacer()
                            }
                            .frame(height: 50)
                            .background {
                                RoundedRectangle(cornerRadius: 5)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                        .cornerRadius(4)
                    }
                    .padding(.vertical)
                    
                }
            }
        }
        .ignoresSafeArea()
        .background(.white)
    }
}

#if DEBUG
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
#endif

