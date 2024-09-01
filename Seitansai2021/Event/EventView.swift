//
//  EventView.swift
//  laugh bunkasai
//
//  Created by 神戸颯斗 on 2021/04/17.
//

import SwiftUI

struct EventView: View {
    var body: some View {
        VStack{
        List{
            Section(header: Text("2日目"))
        {
        ForEach(eventArray[0...9],id:\.self) {
        item in
        NavigationLink(destination:EventDetailsView(event:item)){
            EventRowView(event:item)}
        }
        }
            Section(header: Text("3日目"))
        {
        ForEach(eventArray[10...22],id:\.self) {
        item in
        NavigationLink(destination:EventDetailsView(event:item)){
            EventRowView(event:item)}
        }
        }
            
            Text("スケジュールは天候等の理由により、変更されることがあります。")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                .padding(3)
           }
            
        .navigationBarTitle(Text("講堂"),displayMode: .large)
    }
    }
    }
struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}
