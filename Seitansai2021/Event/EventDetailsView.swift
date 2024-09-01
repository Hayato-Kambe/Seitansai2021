//
//  SwiftUIView.swift
//  laugh bunkasai
//
//  Created by 神戸颯斗 on 2021/04/17.
//

import SwiftUI

struct EventDetailsView: View {
    var event:eventData
    @State var showstarOnly = true
    var body: some View {
        GeometryReader { geometry in
        VStack{
            HStack(alignment: .bottom){
            Text(event.Time)
                .font(.system(size: 55))
                .padding(10)
                Spacer()
        Text(event.title)
            .font(.system(size: 40))
            .padding(10)
            }
            Divider()
            Spacer(minLength: 50)
                           .fixedSize()
            HStack(alignment: .bottom){
                Text("\(event.description)")
                    .font(.system(size: 25))
                    .padding(10)
                Spacer()
                Image("\(event.title)")
                    .resizable()
                    .padding(3)
                    .frame(width: geometry.size.width/3, height: geometry.size.width/3)
            }
            Divider()
            HStack{
                
                Spacer()
                Text("@講堂")
                    .padding(10)
            }
            Divider()
        Spacer()
            ScrollView{
            Text(event.description1)
                .font(.system(size: 20))
                .padding(10)
            }
        Spacer()
    }
    }
}
}

struct EventDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailsView(event:eventArray[0])
            .previewLayout(.fixed(width: 300
                                , height: 600))
    }
}
