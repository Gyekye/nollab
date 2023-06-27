import SwiftUI


struct LoginPage: View {
    // User email address
    @State private var email: String = ""
    
    // User password
    @State private var password: String = ""
    
    // show sign up sheet
    @State private var showSignUpSheet = false
    
    // Binding for sheet
    @Binding var showSheet: Bool
    
    
    // UI
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 15) {
                Image("Login")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .padding([.bottom], 50)
                    .padding(.top, 50)
                
                CustomTextField(
                    input: $email,
                    placeholder: "Email/Address"
                )
                CustomTextField(
                    input: $password,
                    placeholder: "Password",
                    isSecured: true
                )
                
                Button(action: {
                    
                }){
                    Label("Continue", systemImage: "touchid")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 5)
                }
                .buttonStyle(.borderedProminent)
                .padding(.top, 5)
                
                Spacer()
            }
            .padding([.horizontal], 10)
            .navigationBarBackButtonHidden(true)
            .navigationTitle("Welcome Back!")
            .toolbar{
                ToolbarItem(placement:.confirmationAction){
                    Button("Dismiss") {
                        showSheet = false
                    }
                }
            }
        }
        .sheet(isPresented: $showSignUpSheet){
            SignUpPage(dismissSheet: $showSignUpSheet)
        }
        .safeAreaInset(edge: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/) {
            Button("Create an account ?") {
                showSignUpSheet = true
            }
        }
    }
    
    struct LoginPage_Previews: PreviewProvider {
        static var previews: some View {
            LoginPage(showSheet: .constant(false))
        }
    }
}
