//
//  ContentView.swift
//  laugh bunkasai
//
//  Created by Yuta Yamamura on 2020/12/17.
//

import SwiftUI
import MapKit

struct MenuView: View {
    
    var body: some View {
        VStack {
            NavigationView {
            VStack {
                VStack(alignment: .center) {
                    HStack {
                 NavigationLink(destination: AllSchoolSongView()) {
                    Image("SchoolSymbol")
                        .resizable()
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 6))
                        .frame(width: 65, height: 65)
                        .clipShape(Circle())
                        }
                    Text("青丹祭2021")
                        .font(.system(size :50))
                    }
                   Spacer()
                    Divider()
                    

                    ScrollView (.vertical, showsIndicators: true) {
                        VStack{
                        HStack{
                            Spacer()
                            Spacer()
                        NavigationLink(destination: EventView()) {

                        VStack {
                            Spacer()
                            Image(systemName: "list.dash")
                                .foregroundColor(Color.white)
                            Spacer()
                            Text("イベント")
                                .font(.system(size: 19))
                                .foregroundColor(Color.white)
                            Spacer()
                        }
                        .frame(width: 80, height:80)
                        .padding(.all)
                        .background(Color.blue)
                        }
                            Spacer()
                        NavigationLink(destination: ZaikoView()) {
                        
                        VStack {
                            Spacer()
                            Image(systemName: "cart")
                                .foregroundColor(Color.white)
                            Spacer()
                            Text("模擬店")
                                .font(.system(size:19))
                                .foregroundColor(Color.white)
                            Spacer()
                        }
                        .frame(width: 80, height: 80)
                        .padding(.all)
                        .background(Color.blue)
                        }
                        NavigationLink(destination: MapView()) {
                            VStack {
                                Spacer()
                                Image(systemName: "map")
                                    .foregroundColor(.white)
                                Spacer()
                                Text("マップ")
                                    .font(.system(size: 19))
                                    .foregroundColor(Color.white)
                                Spacer()
                            }
                            .frame(width: 80, height: 80)
                            .padding(.all)
                            .background(Color.blue)
                            Spacer()
                            }
                            }
                        }
                        HStack{
                            Spacer()
                            Spacer()
                            NavigationLink(destination: MapView()) {
                                VStack {
                                    Spacer()
                                    Image(systemName: "map")
                                        .foregroundColor(.white)
                                    Spacer()
                                    Text("クラブ模擬")
                                        .font(.system(size: 15))
                                        .foregroundColor(Color.white)
                                    Spacer()
                                }
                                .frame(width: 80, height: 80)
                                .padding(.all)
                                .background(Color.blue)
                                Spacer()
                            }
                            NavigationLink(destination: SecondView()) {
                                VStack {
                                    Spacer()
                                    Image(systemName: "map")
                                        .foregroundColor(.white)
                                    Spacer()
                                    Text("2年紹介")
                                        .font(.system(size: 19))
                                        .foregroundColor(Color.white)
                                    Spacer()
                                }
                                .frame(width: 80, height: 80)
                                .padding(.all)
                                .background(Color.blue)
                                Spacer()
                                }
                            NavigationLink(destination: DevelopView()) {
                                VStack {
                                    Spacer()
                                    Image(systemName: "hammer")
                                        .foregroundColor(.white)
                                    Spacer()
                                    Text("管理ツール")
                                        .font(.system(size: 15))
                                        .foregroundColor(Color.white)
                                    Spacer()
                                }
                                .frame(width: 80, height: 80)
                                .padding(.all)
                                .background(Color.blue)
                                Spacer()
                                Spacer()
                                }
                        }
                    }
                        }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("体育館")
                        EventRowView(event:eventArray[0])
                        EventRowView(event:eventArray[1])
                        EventRowView(event:eventArray[2])                }
                .background(Color(red: 0.5, green: 0.9, blue: 0.9))
                Spacer()
                    VStack{
                        Text("野外ステージ")
                        EventRowView(event:eventArray[0])
                        EventRowView(event:eventArray[1])
                        EventRowView(event:eventArray[3])
                    }
                    .background(Color(red: 0.5, green: 0.9, blue: 0.9))
                    Spacer()
                }
                
                Spacer()
                Text("a")
            }
                    }
                    }
                }
            }
        

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
