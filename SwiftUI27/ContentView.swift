//
//  ContentView.swift
//  SwiftUI27
//
//  Created by Rohit Saini on 07/08/20.
//  Copyright © 2020 AccessDenied. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack{
                GeometryReader{ geo  in
                    Image("img").resizable()
                        .offset(y: geo.frame(in: .global).minY > 0 ? -geo.frame(in: .global).minY : 0)
                        .frame(height:geo.frame(in: .global).minY > 0 ? geo.frame(in: .global).minY + 300 : 300)
                       Spacer()
                }.frame(height: 300)
             
            }
            ForEach(0..<18){ _ in
                HStack{
                    Image("img").resizable().frame(width:50,height:50).clipShape(Circle())
                    VStack{
                        Text("Rohit Saini").fontWeight(.heavy)
                        Text("Singer").fontWeight(.regular)
                    }
                    Spacer()
                }.padding()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

