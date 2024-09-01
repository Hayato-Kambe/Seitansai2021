//
//  ShokumogiZaikoView.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/07/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct ShokumogiZaikoView: View {
    @ObservedObject private var Zaikomodel = ShokumogiZaikoModel()

    var body: some View {
        VStack{
            List(Zaikomodel.zaiko) {  user in
                        HStack {
                            ZStack{
                           
                            Text("No Image")
                                    .font(.system(size: 10))
                                    .foregroundColor(.gray)
                            Image(user.imageName)
                                        .resizable()
                                        .frame( width: 80, height: 80)
                            }
                            HStack{
                            Text(user.title)
                                .font(.largeTitle)
                            Text(user.description)
                                .font(.system(size: 15))
                                .foregroundColor(.gray)
                                Spacer()
                            Text(user.MB)
                                .font(.largeTitle)
                                .padding()
                                            }
                        }
                    }.navigationBarTitle("食模擬",displayMode: .large)
                .listStyle(PlainListStyle())
            .onAppear() {
                self.Zaikomodel.fetchData()
            }
        
    }
    }
}

struct ShokumogiZaikoView_Previews: PreviewProvider {
    static var previews: some View {
        ShokumogiZaikoView()
    }
}
