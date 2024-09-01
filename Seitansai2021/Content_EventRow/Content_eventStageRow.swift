//
//  Content_eventStageRow.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/06/22.
//

import SwiftUI

struct Content_eventStageRow: View {
    var stageevent:StageeventData
    let font = Font.custom("HiraginoSans-W3",fixedSize: 16)
    var body: some View {
        GeometryReader { geometry in
        ZStack{
        Color.black
        HStack {
            Spacer()
            Text(stageevent.Time)
                .font(.largeTitle)
                .foregroundColor(.white)
            Divider()
            HStack(alignment: .bottom){
                Spacer()
            HStack{
                Spacer()
            Text(stageevent.description)
                .padding()
                .foregroundColor(.white)
                .font(.body)
                }
            }
        }
    }
    }
    }
}

struct Content_eventStageRow_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
        Content_eventStageRow(stageevent:StageeventArray[0])
            .previewLayout(.fixed(width: geometry.size.height
                                , height: geometry.size.height + 100))
        }
    }
}
