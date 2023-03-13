//
//  ListDetailView.swift
//  week2
//
//  Created by Wonwoo Choi on 13/3/2023.
//

import SwiftUI

struct ListDetailView: View {
    @State var item:[String]
    var body: some View {
        VStack{
            Text(item[0])
            Text(item[1])
                .padding()
            Image(systemName: item[2])
        }.navigationTitle("Detailed View")
        
    }
}
/*
struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView()
    }
}*/
