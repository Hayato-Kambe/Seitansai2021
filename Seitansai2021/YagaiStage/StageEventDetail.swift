//
//  StageEventDetail.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/06/22.
//

import SwiftUI

struct StageEventDetail: View {
    var stageevent:StageeventData
    var body: some View {
        VStack{
            HStack(alignment: .bottom){
            Text(stageevent.Time)
                .font(.system(size: 55))
                .padding(10)
                Spacer()
            }
            Divider()
            Spacer(minLength: 50)
                           .fixedSize()
            HStack{
                Text("\(stageevent.description)")
                    .font(.system(size: 25))
                    .padding(10)
                Spacer()
            }
            Divider()
            HStack{
                Spacer()
                Text("@野外ステージ")
                    .padding(10)
            }
            Divider()
        Spacer()
    }
    }
}

struct StageEventDetail_Previews: PreviewProvider {
    static var previews: some View {
        StageEventDetail(stageevent:StageeventArray[0])
            .previewLayout(.fixed(width: 300
                                , height: 600))
    }
}
