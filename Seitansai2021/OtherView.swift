//
//  OtherView.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/07/23.
//

import SwiftUI

struct OtherView: View {
    var body: some View {
        ScrollView{
        VStack{
        Text("金券の取り扱い")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
        Text("青丹祭では、模擬店の支払いを現金ではなく、金券で行っています。\n皆様に青丹祭を楽しんでいただくために、下の注意事項を守っていただきますよう、よろしくお願いします。")
            .padding()
            VStack(alignment: .leading){
        Text("●購入方法\n　正門近くのテントで購入して下さい。")
        Text("●金券の使い方\n　模擬店、食品模擬店でお使いください。")
        Text("●払い戻しについて\n　金券の払い戻しはできません。")
            }
            VStack(alignment: .leading){
        Text("※金券の売買、譲渡、貸し借りなどは禁止です。")
        Text("※金券の紛失、盗難については一切の責任を負いませんのでご了承ください。")
            }.padding()
        }
            Divider()
        VStack{
            Text("イートインスペース")
                .font(.title)
                .padding()
            Text("・F6(C-2棟)・F7(C-1棟)・F8(C-1棟)・F9(C-1棟)・S1(新館)・S2(新館)・S3(新館)・食堂・竪義の庭")
                .padding()
                .border(Color.black)
            Text("以上の場所がイートインスペースとなります。\n新型コロナウイルス感染予防のため、イートインスペース以外での食事はご遠慮ください。食べ歩きも禁止となっています。ご協力お願いします。").padding()
            }
            Divider()
            VStack{
                Text("ゴミの分別方法")
                    .font(.title)
                    .padding()
                HStack{
                    VStack{
            Text("赤いゴミ箱(四角)")
                .padding()
                .border(Color.red)
                        Text("・食べ残し\n・ビニール\n・紙くず など…")
                    }
                    VStack{
            Text("金網のゴミ箱(円筒)")
                .padding()
                .border(Color.black)
                .cornerRadius(5)
            Text("・缶\n・ペットボトル\n")
                    }
            }
            }
            Divider()
            
        Text("制作　奈良高校ロボット研究会アプリ開発部\n協力　奈良高校総務委員会")
        Text("Copyright © 2021 Hayato Kambe,Yuta Yamamura All Rights Reserved.")
            .padding(3)
        }.navigationBarTitle("その他")
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
