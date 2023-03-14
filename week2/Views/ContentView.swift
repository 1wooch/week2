//
//  ContentView.swift
//  week2
//
//  Created by Wonwoo Choi on 13/3/2023.
//

import SwiftUI
import Foundation



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


func printLine()->String{
    let filename="/Users/s5145987/Desktop/week2/week2/Views/data.txt"
    var str1:String
    var Tese_Array:[String]=[]
    
    
    
    //var myCounter:Int
    do {
        let contents = try String(contentsOfFile: filename)
        let lines = contents.split(separator: "\n")
        //myCounter=lines.count
        print("content is = ",contents)
        print("lines is =",lines)
        //should get contents
        str1=String(lines[0])
        print(type(of: contents))
    }catch{
        return(error.localizedDescription)
        }
    return str1
    
    
    
}



struct Hstack_list_view:View{
    //var toDoList=printLine()
    var result = printLine()

    @State var toDoList=[
        ["10:30AM","Wake up","checkmark.circle"],
        ["12:00PM","3701 Lecture","checkmark.circle"],
        ["3:15pm","WIL meeting","xmark.circle"]
    ]



    var body:some View{
        
        //VStack(alignment: .leading){
        NavigationView{
            List{
                    ForEach($toDoList,id:\.self){
                        $todo in
                        NavigationLink(destination: ListDetailView(item:todo)){
                            ExtractedView(task:$todo)
                        }
                    }
            }.navigationTitle("My Tasks")
            Spacer()
        }.padding()
        Text(result)
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

