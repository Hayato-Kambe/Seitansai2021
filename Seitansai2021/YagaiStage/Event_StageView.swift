//
//  Event_StageView.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/06/22.
//

import SwiftUI

struct Event_StageView: View {
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

struct Event_StageView_Previews: PreviewProvider {
    static var previews: some View {
        Event_StageView(stageevent:StageeventArray[0])
            .previewLayout(.fixed(width: 300
                                , height: 80))
    }
}
