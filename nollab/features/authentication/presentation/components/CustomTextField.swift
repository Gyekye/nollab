import SwiftUI


struct CustomTextField: View {
    // Content of the textfield
    @Binding var input: String

    // Placeholder of textfield
    var placeholder: String

    // Determines if the textfield is a password field
    var isSecured: Bool = false

    // Toggles focus state of textfield
    @FocusState private var focus
    // UI
    var body: some View {
        if !isSecured {
            // Regular textfield
            VStack(alignment: .leading) {
                TextField("\(placeholder)", text: $input)
                        .padding(12)
                        .background(Color.white)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                        .border(focus ? .blue : .gray.opacity(0.5))
                        .textContentType(.emailAddress)
                        .focused($focus)
                        .onTapGesture {
                            print("Focus tapped on !")
                            // Update focus
                            focus = true
                        }
                        .onChange(of: input) { newText in
                            print("Hello")
                            // Perform action or update state based on the new text
                            print("New text: \(newText)")
                        }
            }
                    .padding([.top], 5)
        } else {

            // Password textfield
            VStack(alignment: .leading) {
                SecureField("\(placeholder)", text: $input)
                        .padding(12)
                        .background(Color.white)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                        .border(focus ? .blue : .gray.opacity(0.5))
                        .textContentType(.password)
                        .focused($focus)
                        .onTapGesture {
                            print("Focus tapped on !")
                            // Update focus
                            focus = true
                        }
                        .onChange(of: input) { newText in
                            print("Hello")
                            // Perform action or update state based on the new text
                            print("New text: \(newText)")
                        }
            }
                    .padding([.top], 5)
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(
                input: .constant("This is me"),
                placeholder: "Placeholder",
                isSecured: false
        )
    }
}
