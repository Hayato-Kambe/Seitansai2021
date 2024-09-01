//
//  MapDetailsView.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/07/26.
//

import SwiftUI

struct MapDetailsView: View {
    var map:MapData
    var body: some View {
        GeometryReader { geometry in
        VStack{
        HStack{
            Text("\(map.classroom)")
                .font(.title)
                .padding()
            Spacer()
            Text("\(map.event)")
                .font(.title)
                .padding()
        }
        Divider()
            HStack{
            Image("\(map.location)")
                .resizable()
                .scaledToFit()
            }
        Divider()
        HStack{
            Image("\(map.image)")
                .resizable()
                .padding(3)
                .frame(width: geometry.size.width/3, height: geometry.size.width/3)
            Spacer()
            Text("\(map.room) @\(map.location)")
                .font(.title3)
                .padding()
        }
            HStack{
            Text(map.price)
                .padding()
                .font(.title3)
            Spacer()
            }
        Divider()
            ScrollView{
        Text(map.description)
            .font(.title3)
            .padding()
            }
        Spacer()
        }.navigationBarTitle("",displayMode: .inline)
}
    }
}

struct MapDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MapDetailsView(map:mapArray[0])
    }
}
//HStack{Text(map.classroom)Divider()Text(map.location)Divider()Text(map.event)
