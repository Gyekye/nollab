import SwiftUI


struct SignUpPage: View {
    // User email address
    @State private var email: String = ""
    
    // User password
    @State private var password: String = ""
    
    // Go back
    @Environment(\.dismiss) private var goBack

    // UI
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 15) {
                Image("SignUp")
            }
            .padding([.horizontal], 22)
        }
        .navigationBarBackButtonHidden(true)

    }
}

struct SignUpPage_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPage()
    }
}
