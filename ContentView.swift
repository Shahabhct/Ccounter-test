import SwiftUI

struct ContentView: View {
    //@State private var counter = 0
    //@State private var message = ""
    @AppStorage("counter") var counter = 0
    @AppStorage("message") var message = ""
    var body: some View {
        VStack {
            Text("\(counter) cookies eaten")
            Button{
                print("One more cookie eaten!")
                counter += 1
                if counter >= 5 {
                    message = "Hey donot eat to many cookies!"
                }
                if counter >= 10 {
                    message = "What are you doing????"
                }
                if counter >= 20 {
                   message = "Oh Noooooooooo"
                }
            } label:{
                Text("Eat one cookie")
                    .padding()
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .shadow(color: .black.opacity(0.9), radius: 10,x: 0.0,y: 0.0)
            //message
            Text(message)
                .padding()


            
        }
    }
}
