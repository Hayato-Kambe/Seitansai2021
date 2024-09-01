//
//  ShokumogiZaikotestView.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/11/19.
//

import SwiftUI

struct ShokumogiZaikotestView: View {
    @ObservedObject private var Zaikomodel = ShokumogiZaikoModel()

    var body: some View {
        GeometryReader { geo in
        VStack{
        List(Zaikomodel.zaiko) {  user in
            HStack{
               
                ZStack{
                    Text(user.MB)
                        .foregroundColor(Color(user.Shokumogicolor).opacity(0.3))
                .fontWeight(.black)
                .scaleEffect(4)
                    Text(user.description)
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                .rotationEffect(.degrees(-90), anchor: .center)
                .font(Font.custom("HiraginoSans-W4",size:9))
                }.frame(width: geo.size.height/15, height: geo.size.height/8, alignment: .center)
                Text(user.title)
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                    .rotationEffect(.degrees(-90), anchor: .center)
                    .font(.subheadline)
                    .frame(width: geo.size.height/20, height: geo.size.height/8, alignment: .center)
            }
        }
        .frame(width: geo.size.height/6, height: geo.size.width)
        .rotationEffect(.degrees(-90), anchor: .bottomLeading)
        .transformEffect(.init(translationX: geo.size.width, y: 0))
        .scaleEffect(x: 1, y: -1)
            .onAppear() {
                self.Zaikomodel.fetchData()
            }
        
    }
    }
}
}

struct ShokumogiZaikotestView_Previews: PreviewProvider {
    static var previews: some View {
        ShokumogiZaikotestView()
    }
}
