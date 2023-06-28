import SwiftUI

struct ContentView: View {
    // Toggles bottom sheet
    @State private var showSheet = false
    
    // Toggle pop over
    @State private var showPopOver = false
    
    // UI
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 16) {
                HStack(alignment: .top) {
                    Image("Hero")
                        .resizable()
                        .frame(width: 400, height: 250)
                        .padding([.bottom], 50)
                }
                Text("Nollaboration🎉")
                    .font(.largeTitle)
                    .bold()
                    .padding([.top], 2)
                    .padding(.bottom, 0.4)
                
                Text("Share your favorite notes !")
                    .padding(.bottom, 20)
                    .font(.body)
            
                
                Button(action: {
                    self.showSheet = true
                }){
                    Label("Continue With Email", systemImage: "person.fill")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 5)
                }
                .buttonStyle(.borderedProminent)
                
                Button(action: {
                    self.showPopOver = true
                }){
                    Label("Continue With Gmail", systemImage: "envelope.fill")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 5)
                }
                .buttonStyle(.bordered)
                .foregroundColor(.black)
                .padding(.top, 5)
                    
            }
            .padding(20)
        }
        .navigationBarBackButtonHidden(true)
        .fullScreenCover(isPresented: $showSheet){
            LoginPage(showSheet: self.$showSheet)
        }
        .fullScreenCover(isPresented: self.$showPopOver){
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
