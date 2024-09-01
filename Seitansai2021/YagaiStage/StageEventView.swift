//
//  StageEventView.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/06/22.
//

import SwiftUI

struct StageEventView: View {
    var event:StageeventData
    var body: some View {
        HStack {
            Spacer()
            Text(event.Time)
                .font(.system(size: 35))
            Divider()
            HStack{
                Spacer()
            Text(event.description)
                .font(.system(size: 23))
                }
        }
    }
}

struct StageEventView_Previews: PreviewProvider {
    static var previews: some View {
        StageEventView(event:StageeventArray[8])
            .previewLayout(.fixed(width: 300
                                , height: 100))
    }
}
