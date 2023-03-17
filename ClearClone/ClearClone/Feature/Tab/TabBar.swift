import SwiftUI

struct TabBarView: View {
    @State private var selected = 0
    
    var body: some View {
        TabView(selection: $selected) {
            Text("Home")
                .tabItem {
                    Label("Menu", systemImage: "house")
                }
            
            Text("Profile")
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }
        }
        .navigationBarBackButtonHidden()
    }
}
