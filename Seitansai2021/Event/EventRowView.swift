//
//  EventRowView.swift
//  laugh bunkasai
//
//  Created by 神戸颯斗 on 2021/04/18.
//

import SwiftUI
struct EventRowView: View {
    var event:eventData
    @State var showstarOnly = true
    var body: some View {
        HStack(alignment: .center){
            Spacer()
            Text(event.Time)
                .font(.system(size: 35))
            Divider()
            HStack(alignment: .center){
            Text(event.title)
                .font(.system(size: 20))
                Spacer()
            HStack{
                Spacer()
            Text(event.description)
                .foregroundColor(.black)
            Text("")
                }
            }
        }
    }
}

struct EventRowView_Previews: PreviewProvider {
    static var previews: some View {
        EventRowView(event:eventArray[0])
            .previewLayout(.fixed(width: 300
                                , height: 100))
    }
}

