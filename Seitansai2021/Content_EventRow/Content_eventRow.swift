//
//  Content_eventRow.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/06/13.
//

import SwiftUI

struct Content_eventRow: View {
    var event:eventData
    let font = Font.custom("HiraginoSans-W3",fixedSize: 16)
    var body: some View {
        GeometryReader { geometry in
        ZStack{
        Color.black
        HStack {
            Spacer()
            Text(event.Time)
                .font(.largeTitle)
                .foregroundColor(.white)
            Divider()
            HStack{
            Text(event.title)
                .foregroundColor(.yellow)
                .font(.title3)

                Spacer()
            HStack{
                Spacer()
            Text(event.description)
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

struct Content_eventRow_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
        Content_eventRow(event:eventArray[0])
            .previewLayout(.fixed(width: geometry.size.height
                                , height: geometry.size.height + 100))
    }
    }
}

