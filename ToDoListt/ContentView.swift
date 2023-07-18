//
//  ContentView.swift
//  ToDoListt
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    @State var ToDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    var body: some View {
        VStack {
                  HStack {
                      Text("To Do List")
                          .font(.system(size:40))
                          .fontWeight(.black)
                      Spacer()
                      Button(action:
                              {
                          self.showNewTask = true
                      }){
                          Text("+")
                      }
                      }
              
              }.padding()
        List {
            ForEach(ToDoItems){ToDoItem in
                Text(ToDoItem.title)
            }
        }
        if showNewTask{
            NewToDoView(title: "", isImportant: false)
        }
              }
          }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
