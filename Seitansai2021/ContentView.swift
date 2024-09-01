//
//  ContentView.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/06/05.
//

import SwiftUI
import Marquee


struct ContentView: View {
    @State var duration: Double = 15.0
    @State private var flag = false
    @ObservedObject private var delaymodel = DelayModel()
    @State var screen: CGSize!
    @State var hour = Calendar.current.component(.hour, from: Date())
    @State var minute = Calendar.current.component(.minute, from: Date())
    @ObservedObject var timeinterval = TimeInterval()
    @ObservedObject var timeinterval1 = TimeInterval1()
    @ObservedObject private var oshiviewModel = Content_Oshirase_viewModel()
    @State private var change = false
    @State private var isAlertActive = false
    func changecolor() -> Color{
           if change == false{
               return Color("Contentblue")
           }else{
               return Color("Contentorange")
           }
       }
    let font = Font.custom("HiraginoSans-W3",size:14)
    var body: some View {
        let ContenteventRow = timeinterval.count
        GeometryReader { geometry in
            NavigationView {
            VStack{
                HStack{
                    NavigationLink(destination: AllSchoolSongView()) {
                Image("SchoolSymbol")
                    .resizable()
                    .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
                    }
            Text("青丹祭")
                .font(Font.custom("HiraginoSans-W4",size:40))
                .foregroundColor(.white)
                .padding()
                }
                .frame(width: geometry.size.width, height: geometry.size.width/5)
                .background(changecolor())
                
                Divider()
                VStack {

                VStack(alignment: .center) {
                    TabView {
                VStack{
                    NavigationLink(destination: EventView()) {
                Text("講堂")
                    .font(font)
                    }
                    Content_eventRow(event:eventArray[timeinterval.count])
                Content_eventRow(event:eventArray[timeinterval.count+1])
                Content_eventRow(event:eventArray[timeinterval.count+2])
                    Spacer()
                }

                VStack{
                    NavigationLink(destination: EventstageView()) {
                Text("野外ステージ")
                    .font(font)
                    }
                Content_eventStageRow(stageevent:StageeventArray[timeinterval1.count1])
                Content_eventStageRow(stageevent:StageeventArray[timeinterval1.count1+1])
                Content_eventStageRow(stageevent:StageeventArray[timeinterval1.count1+2])
                    Spacer()
            }
                        VStack{
                            HStack{
                        Text("遅延情報")
                            .foregroundColor(.black)
                            .padding()
                                Spacer()
                            }
                            .font(.title)
                            Divider()
                            VStack{
                        List(delaymodel.delay) {  user in
                            HStack {
                                Text(user.title)
                                    .font(.title3)
                                    .foregroundColor(.black)
                                Spacer()
                                Text(user.delay)
                                    .font(.title2)
                                    .foregroundColor(Color(user.color))
                            }
                        }.listStyle(PlainListStyle())
                            }
                        }.border(Color.black)
                    }.padding(5)
                    .tabViewStyle(PageTabViewStyle())
                    Divider()
                    ScrollView (.vertical, showsIndicators: true) {
                        VStack{
                        HStack{
                            
                        NavigationLink(destination: EventView()) {
                        VStack {
                            Spacer()
                            Image(systemName: "list.dash")
                                .foregroundColor(Color.white)
                                .font(.title)
                            Spacer()
                            Text("講堂")
                                .foregroundColor(Color.white)
                                .font(font)
                            Spacer()
                        }
                        .frame(width: geometry.size.width/5, height:geometry.size.width/5)
                        .padding(.all)
                        .background(changecolor())
                        .cornerRadius(10)
                        }
                        NavigationLink(destination: EventstageView()) {
                        VStack {
                            Spacer()
                            Image(systemName: "guitars")
                                .foregroundColor(Color.white)
                                .font(.title)
                            Spacer()
                            Text("野外ステージ")
                                .font(.system(size: 12))
                                .foregroundColor(Color.white)
                            Spacer()
                        }
                        .frame(width: geometry.size.width/5, height: geometry.size.width/5)
                        .padding(.all)
                        .background(changecolor())
                        .cornerRadius(10)
                        }
                        NavigationLink(destination: Map_View()) {
                            VStack {
                                Spacer()
                                Image(systemName: "map")
                                    .foregroundColor(.white)
                                    .font(.title)
                                Spacer()
                                Text("展示一覧")
                                    .font(font)
                                    .foregroundColor(Color.white)
                                Spacer()
                            }
                            .frame(width: geometry.size.width/5, height: geometry.size.width/5)
                            .padding(.all)
                            .background(changecolor())
                            .cornerRadius(10)
                            }
                            }
                        }
                        HStack{
                            Spacer()
                            NavigationLink(destination: TestView()) {
                                ZStack{
                                VStack {
                                    Spacer()
                                    Image(systemName: "list.bullet.rectangle")
                                        .foregroundColor(.white)
                                        .font(.title)
                                    Spacer()
                                    Text("お知らせ")
                                        .font(font)
                                        .foregroundColor(Color.white)
                                    Spacer()
                                }
                                .frame(width: geometry.size.width/5, height: geometry.size.width/5)
                                .padding(.all)
                                .background(changecolor())
                                .cornerRadius(10)
                            }
                            }
                            NavigationLink(destination: ShokumogiZaikoView()) {
                                ZStack{
                                VStack {
                                    Spacer()
                                    Image(systemName: "cart")
                                        .foregroundColor(.white)
                                        .font(.title)
                                    Spacer()
                                    Text("食模擬")
                                        .font(font)
                                        .foregroundColor(Color.white)
                                    Spacer()
                                }
                                .frame(width: geometry.size.width/5, height: geometry.size.width/5)
                                .padding(.all)
                                .background(changecolor())
                                .cornerRadius(10)
                            }
                            }
                        NavigationLink(destination: SoushokuView()) {
                                VStack {
                                    Spacer()
                                    Image(systemName: "lasso")
                                        .foregroundColor(.white)
                                        .font(.title)
                                    Spacer()
                                    Text("装飾")
                                        .font(font)
                                        .foregroundColor(Color.white)
                                    Spacer()
                                }
                                .frame(width: geometry.size.width/5, height: geometry.size.width/5)
                                .padding(.all)
                                .background(changecolor())
                                .cornerRadius(10)
                                }
                            Spacer()
                        }
                        HStack{
                            Spacer()
                            NavigationLink(destination: FeedBackView()) {
                                            VStack {
                                                            Spacer()
                                Image(systemName: "exclamationmark.bubble")
                                    .foregroundColor(.white)
                                    .font(.title)
                                Spacer()
                                Text("レポート")
                                    .font(font)
                                    .font(.system(size: 19))
                                    .foregroundColor(Color.white)
                                Spacer()
                                                    }
                            .frame(width: geometry.size.width/5, height: geometry.size.width/5)
                                    .padding(.all)
                                        .background(changecolor())
                                    .cornerRadius(10)
                                                            }
                                NavigationLink(destination: OtherView()) {
                                                VStack {
                                            Spacer()
                                    Image(systemName: "note.text")
                                        .foregroundColor(.white)
                                        .font(.title)
                                    Spacer()
                                    Text("その他")
                                        .font(font)
                                        .font(.system(size: 19))
                                        .foregroundColor(Color.white)
                                    Spacer()
                                                        }
                            .frame(width: geometry.size.width/5, height: geometry.size.width/5)
                            .padding(.all)
                            .background(changecolor())
                            .cornerRadius(10)
                            }
                                VStack {
                                    Text("")
                                }
                                .frame(width: geometry.size.width/5, height: geometry.size.width/5)
                                .padding(.all)
                                .cornerRadius(10)
                            Spacer()
                        }
                        Button(action: {
                            self.isAlertActive = true
                                if change == false{
                                        change = true
                                    }else{
                                        change = false
                                    }
                            }
                            , label: {
                            Text("Thanx all users!")
                                    .font(.system(.caption2))
                                    .foregroundColor(.gray)
                                    .padding(2)
                                                  })
                    }
                        }
               Spacer()
                }
                VStack(alignment: .center){
                    
                    List(oshiviewModel.oshidata) { user in
                                        NavigationLink(destination: TestView()) {
                                            Marquee{
                                    Text(user.name)
                                        .font(.subheadline)
                                        .foregroundColor(Color(user.color))
                                    +  Text(user.name2)
                                        .font(.subheadline)
                                        .foregroundColor(Color(user.color2))
                                    +  Text(user.name3)
                                        .font(.subheadline)
                                        .foregroundColor(Color(user.color3))
                                            }.marqueeDuration(duration)
                                        }
                                    }.navigationBarTitle("",displayMode: .inline)
                                        .listStyle(PlainListStyle())
                                        .onAppear() {
                                        self.oshiviewModel.fetchData()
                                        self.flag.toggle()
                                                    }
                }.frame(height: geometry.size.width/5)
                .listStyle(PlainListStyle())
            }
                    }
                }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
