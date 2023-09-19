import SwiftUI

struct ContentView: View {
    @State var tasks:[Task] = [Task(nameOfTask: "mow the lawn"), Task(nameOfTask: "grocery shop"), Task(nameOfTask: "feed the dog")]
    var body: some View {
        List(tasks, id: \.self) { item in
            Text(item.nameOfTask)
        }
    }
}
