//
//  EventView.swift
//  laugh bunkasai
//
//  Created by 神戸颯斗 on 2021/04/17.
//

import SwiftUI

struct EventView: View {
    var stageevent:StageeventData
    var body: some View {
        
        HStack {
            Spacer()
            Text(stageevent.Time)
                .font(.system(size: 35))
            Divider()
            HStack(alignment: .bottom){
                Spacer()
            Text(stageevent.description)
                .font(.system(size: 20))
            }
        }
    }
        }
struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView(stageevent:StageeventArray[0])
                    .previewLayout(.fixed(width: 300
                                        , height: 100))
    }
}
