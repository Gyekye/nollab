import SwiftUI


struct LoginPage: View {
    // User email address
    @State private var email: String = ""
    
    // User password
    @State private var password: String = ""

    
    // UI
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading,spacing: 15) {
                Spacer()
                Spacer()
                BrandHeader()
                Spacer()
                Spacer()
                Spacer()
                CustomTextField(
                    input: $email,
                    label: "Your email address",
                    placeholder: "admin@gmail.com"
                )
                CustomTextField(
                    input: $password,
                    label: "Your password",
                    placeholder: "***************",
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
            }
            .padding([.horizontal], 20)
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
