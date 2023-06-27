import SwiftUI


struct SignUpPage: View {
    // User email address
    @State private var email: String = ""
    
    // User password
    @State private var password: String = ""
    
    // Binding for sheet
    @Binding var dismissSheet: Bool
    
    // Go back
    @Environment(\.dismiss) private var goBack

    // UI
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 15) {
                Image("Register")
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
                    Label("Join Now !", systemImage: "person.crop.circle.badge.plus.fill")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 5)
                }
                .buttonStyle(.borderedProminent)
                .padding(.top, 5)
                
                Spacer()
            }
            .padding([.horizontal], 10)
            .navigationBarBackButtonHidden(true)
            .navigationTitle("Join us today!")
            .toolbar{
                ToolbarItem(placement:.confirmationAction){
                    Button("Dismiss") {
                        dismissSheet = false
                    }
                }
            }
        }
        .safeAreaInset(edge: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/) {
            Button("Login instead ?") {
                dismissSheet = false
            }
        }

    }
}

struct SignUpPage_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPage(dismissSheet: .constant(false))
    }
}
