//
//  HeaderView.swift
//  GitHubPractice1
//
//  Created by Halas Wolff on 9/19/23.
//

import SwiftUI

struct HeaderView: View {
    @State var enteredString: String = ""
    @Binding var tasks:[Task]
    var body: some View {
        HStack {
            TextField("Add Item", text: $enteredString)
            Button {
                tasks.append(Task(nameOfTask: enteredString))
                enteredString = ""
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                        .frame(width: 25, height: 10)
                    Text("Add Item")
                        .font(.title2)
                }
            }

        }
    }
}

