//
//  EventstageVie.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/06/22.
//

import SwiftUI

struct EventstageView: View {
    var body: some View {
        List {
        Section(header: Text("2日目"))
        {
        ForEach(StageeventArray[0...17],id:\.self) {
        item in
        NavigationLink(destination:StageEventDetail(stageevent:item)){
            Event_StageView(stageevent:item)}
        }
        }
        Section(header: Text("3日目"))
        {
        ForEach(StageeventArray[18...26],id:\.self) {
        item in
        NavigationLink(destination:StageEventDetail(stageevent:item)){
            Event_StageView(stageevent:item)}
        }
        }
            Text("スケジュールは天候等の理由により、変更されることがあります。")
            .font(.subheadline)
            .foregroundColor(.gray)
.padding(3)
       }.navigationBarTitle("野外ステージ",displayMode: .large)
    }
}

struct EventstageView_Previews: PreviewProvider {
    static var previews: some View {
        EventstageView()
    }
}
