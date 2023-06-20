import SwiftUI


struct BrandHeader: View {
    
    // UI
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center, spacing: 0) {
                
                Text("Nollaboration")
                    .font(.system(size: 25, weight: .heavy))
        
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 45)
                    
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Brand Logo")
            
            Text("Work without limits.")
                .font(.system(size: 15, weight: .light))
                .padding([.top], -15)
        }
    }
}

struct BrandHeader_Previews: PreviewProvider {
    static var previews: some View {
        BrandHeader()
            .frame(width: .infinity, height: 100)
            .background(.blue.opacity(0.3))
    }
}
