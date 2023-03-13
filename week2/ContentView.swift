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
        VStack(alignment: .leading){
            List{
                ForEach(toDoList,id:\.self){
                    todo in ExtractedView(task:todo)
                }
            }
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


struct ExtractedView: View {
    @State var task:[String] // if you want to change variable you need @State
    var body: some View {
        HStack{
            Text(task[0]).font(.title2).frame(width:100).background(.green)
            Text(task[1])
            Spacer()
            Image(systemName: task[2])
            //Spacer()
            //Image(systemName: todo[2]).foregroundColor(.blue)// this cause problem but why????
        }.onTapGesture {
            if(task[2]=="xmark.circle"){
                task[2]="checkmark.circle"
            }else{
                task[2]="xmark.circle"
            }
            //print("\(task[1]) is ticked")
        }
    }
}
