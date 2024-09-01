//
//  SoushokuView.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/08/07.
//

import SwiftUI

struct SoushokuView: View {
    let soushokudata = ["F1...正門","F2...新館の周り","F3...正面玄関","F4...体育館","F5...藤棚","F6...新館前から西門手前までの坂道","F7...食堂から講堂にかけての道","F8...光の庭","F9...竪義の庭"]
    var body: some View {
            VStack{
            Text("今年の装飾テーマは「風船」です!!")
                .font(.title3)
                .padding()
            Image("Soushoku_map")
                .resizable()
                .scaledToFit()
                .padding()
        List(soushokudata, id:\.self){item in
                            Text(item)
                }.listStyle(PlainListStyle())
        }.navigationBarTitle("装飾")
    }
}

struct SoushokuView_Previews: PreviewProvider {
    static var previews: some View {
        SoushokuView()
    }
}
