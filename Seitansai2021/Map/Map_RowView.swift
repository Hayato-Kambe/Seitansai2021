//
//  RowView.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/07/26.
//

import SwiftUI

struct Map_RowView: View {
    var map : MapData
    var body: some View {
        HStack{
            VStack(alignment: .leading){
        Text(map.classroom)
            .font(.title2)
        Text(map.location)
            .font(.title3)
            }
            Spacer()
        Text(map.event)
            .font(.title2)
        }
    }
}

struct Map_RowView_Previews: PreviewProvider {
    static var previews: some View {
        Map_RowView(map:mapArray[2])
            .previewLayout(.fixed(width: 300
                        , height: 80))
    }
}
