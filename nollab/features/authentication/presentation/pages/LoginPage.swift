import SwiftUI


struct LoginPage: View {
    // User email address
    @State private var email: String = ""
    
    // User password
    @State private var password: String = ""
    
    
    // UI
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 20) {
            }
            .navigationBarBackButtonHidden(true)
        }
    }
    
    struct LoginPage_Previews: PreviewProvider {
        static var previews: some View {
            LoginPage()
        }
    }
}
