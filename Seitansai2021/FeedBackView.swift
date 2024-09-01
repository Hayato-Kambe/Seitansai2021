//
//  FeedBackView.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/07/23.
//

import SwiftUI

struct FeedBackView: View {
    var body: some View {
        VStack{
            Spacer()
            VStack{
        Text("本アプリを使用しての感想、ご意見などございませんか？")
            .font(.title2)
            .padding(.all)
                Text("今後のアプリ制作に役立てるため、ぜひアンケートにご協力ください！")
            .font(.title2)
            .padding(.all)
                VStack{
        Link("リンクを開く(Googleform)",
              destination: URL(string: "https://forms.gle/zqg1QgSNsWXtBzB7A")!)
            .font(.title2)
            .foregroundColor(.blue)
                    }
            .padding()
            .border(Color.black)
            }
           Spacer()
        }.navigationBarTitle("レポート")
}
}

struct FeedBackView_Previews: PreviewProvider {
    static var previews: some View {
        FeedBackView()
    }
}
