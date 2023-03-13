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
/*
struct get_data_from_othe:View{
    var body:some View{
        /*
        let file = "data.txt"
        let text = "text test"
        if let dir=FileManager.default.urls(for:.documentDirectory,in: .userDomainMask).first{
            let fileURL = dir.appendingPathComponent(file)
            do{
                try text.write(to:fileURL,atomically:false,encoding:.utf8)
            }catch{
                print("error occured")
            }
            
        }*/
        
    }
} */ // failed

var toDoList=[
    ["10:30AM","Wake up","checkmark.circle"],
    ["12:00PM","3701 Lecture","checkmark.circle"],
    ["3:15pm","WIL meeting","xmark.circle"]
]

struct Hstack_list_view:View{
    var body:some View{
        //VStack(alignment: .leading){
        NavigationView{
            
            List{
                    ForEach(toDoList,id:\.self){
                        todo in
                        NavigationLink(destination: ListDetailView(item:todo)){
                            ExtractedView(task:todo)
                        }
                    }
            }.navigationTitle("My Tasks")
            Spacer()
        }.padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView()
        //list_view()
        //foreach_list_view()
        Hstack_list_view()
    }
}

