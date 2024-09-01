//
//  SchoolSongView.swift
//  laugh bunkasai
//
//  Created by 神戸颯斗 on 2021/04/17.
//

import SwiftUI

struct SchoolSongView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("1.青丹よし奈良の　春日山まぢかく")
            Text("佐保路にそひて　よき環境に　恵まれつつ")
            Text("我等今学ぶ　奈良高校に")
            Text("ああ　われら　誉をあげむ　わが学び舎の")
        }
        .padding(30)
        .font(Font.custom("HiraginoSans-W3",size:16))
    }
}
struct SchoolSong2View: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("2.真実の自由　責任にめざめて")
            Text("志操を高め　ゆたけき個性　養ふべく")
            Text("我等日々はげむ　奈良高校に")
            Text("ああ　われら　光をそへむ　わが学び舎の")
        }
        .padding(30)
        .font(Font.custom("HiraginoSans-W3",size:16))
    }
}
struct SchoolSong3View: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("3.上代の文化　目の前に残れり")
            Text("新たに興る　平和の国の　もとゐとして")
            Text("我等いそしめり　奈良高校に")
            Text("ああ　われら　栄をまさむ　わが学び舎の")
        }
        .padding(30)
        .font(Font.custom("HiraginoSans-W3",size:16))
    }
}

struct AllSchoolSongView: View {
    var body: some View {
        VStack {
            VStack{
                Text("奈良高等学校 校歌")
                    .font(Font.custom("HiraginoSans-W3",size:30))
            Text("作詞　佐佐木 信綱　　　作曲　信時 潔")
                .font(Font.custom("HiraginoSans-W3",size:16))
            }
            SchoolSongView()
            SchoolSong2View()
            SchoolSong3View()
            
        }
    }
}

struct AllSchoolSongView_Previews: PreviewProvider {
    static var previews: some View {
        AllSchoolSongView()
    }
}
