//
//  TestView.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/07/19.
//


import SwiftUI
struct TestView: View {
    @ObservedObject private var viewModel = userViewModel()
    var body: some View{
        VStack{
        List(viewModel.users) { user in
                VStack(alignment: .leading){
                Text(user.name)
                    .font(.title2)
                    .lineLimit(2)
                    HStack{
                Text(user.description)
                    .font(.body)
                    .foregroundColor(.gray)
                    .lineLimit(nil)
                        Spacer()
                Text(user.date).font(.subheadline)
                            .foregroundColor(.gray)
                }
                }
            }.navigationBarTitle("お知らせ",displayMode: .large)
            .onAppear() {
                self.viewModel.fetchData()
            }
        
    }
    }
}


struct View_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
