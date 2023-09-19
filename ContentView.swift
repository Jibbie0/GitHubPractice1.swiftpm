import SwiftUI

struct ContentView: View {
    @State var tasks:[String] = ["Mow the lawn", "Feed the dog", "Grocery shop"]
    var body: some View {
        List(tasks, id: \.self) { item in
            Text(item)
        }
    }
}
