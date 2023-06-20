import SwiftUI


struct CustomTextField: View {
    // Content of the textfield
    @Binding var input: String
    
    // Label of the textfield
    var label: String
    
    // Placeholder of textfield
    var placeholder: String
    
    // Determines if the textfield is a password field
    var isSecured: Bool = false
    
    // Toggles focus state of textfield
    
    // UI
    var body: some View {
        if !isSecured {
            // Regular textfield
            VStack(alignment: .leading) {
                Text(label)
                    .font(.system(size: 14, weight: .medium, design: .default))
                TextField("\(placeholder)", text: $input)
                    .padding(16)
                    .background(Color.white)
                    .cornerRadius(10)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled(true)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.25), lineWidth: 1)
                    )
                    .textContentType(.emailAddress)
                    .onChange(of: input) { newText in
                        print("Hello")
                        // Perform action or update state based on the new text
                        print("New text: \(newText)")
                    }
                .focused(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=$isFocused@*/FocusState<Bool>().projectedValue/*@END_MENU_TOKEN@*/)
            }
            .padding([.top], 10)
        } else {
            
            // Password textfield
            VStack(alignment: .leading) {
                Text(label)
                    .font(.system(size: 14, weight: .medium, design: .default))
                SecureField("\(placeholder)", text: $input)
                    .padding(16)
                    .background(Color.white)
                    .cornerRadius(30)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled(true)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.25), lineWidth: 1)
                    )
                    .textContentType(.password)
                    .onChange(of: input) { newText in
                        print("Hello")
                        // Perform action or update state based on the new text
                        print("New text: \(newText)")
                    }
                .focused(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=$isFocused@*/FocusState<Bool>().projectedValue/*@END_MENU_TOKEN@*/)
            }
            .padding([.top], 15)
        }
    }
}

struct CustomTextfield_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(
            input: .constant("This is me"),
            label: "Your email address",
            placeholder: "Placeholder",
            isSecured: false
        )
    }
}
