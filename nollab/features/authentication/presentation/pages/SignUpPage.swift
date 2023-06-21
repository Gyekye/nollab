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
                Spacer()
                Spacer()
                BrandHeader()
                Spacer()
                Spacer()
                CustomTextField(
                    input: $email,
                    label: "Your email address",
                    placeholder: "newuser@gmail.com"
                )
                CustomTextField(
                    input: $password,
                    label: "Choose a password",
                    placeholder: "min. 8 characters",
                    isSecured: true
                )
                Spacer()
                GeometryReader{ geometry in
                    Button(action: {}) {
                        Text("Continue")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: geometry.size.width - 31)
                            .padding()
                            .background(Color("Primary"))
                            .cornerRadius(10)
                    }
                }
                Button(action: {goBack()}){
                    Label("Already have an account ? Register", systemImage: "person")
                }
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
