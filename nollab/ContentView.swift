import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                HStack(alignment: .top) {
                    Image("Hero")
                        .resizable()
                        .frame(width: 400, height: 250)
                        .padding([.bottom], 50)
                }
                Text("Nollaboration🎉")
                    .font(.system(size:35, weight: .black ))
                    .padding([.top], 2)
                    .padding(.bottom, 0.4)
                
                Text("Share your favorite notes !")
                    .padding(.bottom, 20)
                    .font(.system(size: 18, weight: .medium))
            
                
                Button(action: {}){
                    Label("Continue With Email", systemImage: "person.fill")
                        .padding([.horizontal], 60)
                }
                .buttonStyle(.borderedProminent)
                
                Button(action: {}){
                    Label("Continue With Gmail", systemImage: "envelope.fill")
                        .padding([.horizontal], 56)
                }
                .buttonStyle(.bordered)
                .foregroundColor(.black)
                .padding(.top, 5)
                    
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
