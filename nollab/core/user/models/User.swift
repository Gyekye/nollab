import Foundation


/// A user entity
struct User: Identifiable, Codable {
    
    // Firebase document ID
    var id: UUID
    
    // Fullname of user
    var name: String
    
    // Email of user
    var email: String
    
    // Date user created an account
    var date: String
    
    // Compute the user's initials
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let result = formatter.personNameComponents(from: name) {
            formatter.style = .abbreviated
            return formatter.string(from: result)
        }
        // Return an emtpy string if computation results in an error
        return ""
    }
    
    // Constructor
    init(
        id: UUID = UUID(),
        name: String,
        email: String,
        date: String
    ){
        self.id = id
        self.name = name
        self.email = email
        self.date = date
    }
}


/// Extension on User
extension User {
    
    // Initial dummy data
    static let emptyUser: User = User(name: "", email: "", date: "")
    
    // Mock data for previews
    static let mock: User = User(name: "Richmond Gyekye", email: "mrgyekye740@gmail.com", date: "24 May 2023")
}
