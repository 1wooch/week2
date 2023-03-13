//
//  ListRowView.swift
//  week2
//
//  Created by Wonwoo Choi on 13/3/2023.
//

import SwiftUI

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

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedView()
        ExtractedView()
    }
}
