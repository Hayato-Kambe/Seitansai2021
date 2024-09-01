//
//  Map_View.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/07/26.
//

import SwiftUI

struct Map_View: View {
    var body: some View {
    List{
    Section(header: Text("一年生"))
    {
    ForEach(mapArray[0...8],id:\.self) {
    item in
    NavigationLink(destination:MapDetailsView(map:item)){
        Map_RowView(map:item)}
    }
    }
    Section(header: Text("二年生"))
        {
        ForEach(mapArray[9...17],id:\.self) {
        item in
        NavigationLink(destination:MapDetailsView(map:item)){
            Map_RowView(map:item)}
        }
        .listStyle(SidebarListStyle())
        }
        Section(header: Text("三年生"))
        {
        ForEach(mapArray[18...26],id:\.self) {
        item in
        NavigationLink(destination:MapDetailsView(map:item)){
            Map_RowView(map:item)}
        }
        .listStyle(SidebarListStyle())
        }
        Section(header: Text("校舎内展示"))
        {
        ForEach(mapArray[27...42],id:\.self) {
        item in
        NavigationLink(destination:MapDetailsView(map:item)){
        Map_RowView(map:item)}
        }
        }
        Section(header: Text("校舎外展示"))
        {
        ForEach(mapArray[43...43],id:\.self) {
        item in
        NavigationLink(destination:MapDetailsView(map:item)){
        Map_RowView(map:item)}
        }
        }
        Section(header: Text("校舎内模擬"))
        {
        ForEach(mapArray[44...49],id:\.self) {
        item in
        NavigationLink(destination:MapDetailsView(map:item)){
        Map_RowView(map:item)}
        }
        }
        Section(header: Text("校舎外模擬"))
        {
        ForEach(mapArray[50...61],id:\.self) {
        item in
        NavigationLink(destination:MapDetailsView(map:item)){
        Map_RowView(map:item)}
        }
        }
        Text("スケジュールは天候等の理由により、変更されることがあります。")
        .font(.subheadline)
        .foregroundColor(.gray)
       }
    .navigationBarTitle(Text("展示・模擬一覧"),displayMode: .large)
    .listStyle(PlainListStyle())
}
}
struct Map_View_Previews: PreviewProvider {
static var previews: some View {
Map_View()
}
}
