//
//  ContentView.swift
//  week2
//
//  Created by Wonwoo Choi on 13/3/2023.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}


struct list_view:View{
    var body: some View{
        VStack(alignment:.leading){
            Text("first layer")
            Text("second layer")
            Text("Last layer")
            Spacer()
            
        }
    }
}

struct foreach_list_view:View{
    let todolist=["study 3701","WIL meeting","Peer mentoring ppt"]
    
    var body: some View{
        List{
            ForEach(todolist,id:\.self){ //what is id:\.self for?
                
                todo in Text(todo) //todo???
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView()
        //list_view()
        foreach_list_view()
        
    }
}
