//
//  StageEvent.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/06/22.
//

import Foundation


var StageeventArray:[StageeventData] = makeData()

//構造体Photodataの定義
struct StageeventData: Hashable{
    var id: Int
    var Time:String
    var description: String
}


func makeData()->[StageeventData] {
    var dataArray:[StageeventData] = []
    dataArray.append(StageeventData(id:1, Time: "10:00",description: "はらぺこあおむし"))
    dataArray.append(StageeventData(id:2, Time: "10:15",description: "アベンジャーズ"))
    dataArray.append(StageeventData(id:3, Time: "10:30",description: "プリキュア6 GOGO"))
    dataArray.append(StageeventData(id:4, Time: "10:45",description: "人類のるつぼ"))
    dataArray.append(StageeventData(id:5, Time: "11:00",description: "そらちぃと愉快なをとめたちぃ"))
    dataArray.append(StageeventData(id:6, Time: "11:15",description: "King&Prince"))
    dataArray.append(StageeventData(id:7, Time: "11:30",description: "でこぽんs"))
    dataArray.append(StageeventData(id:8, Time: "11:45",description: "cactus"))
    dataArray.append(StageeventData(id:9, Time: "12:00",description: "cResCenT"))
    dataArray.append(StageeventData(id:10, Time: "12:15",description: "Sazaby's Soil"))
    dataArray.append(StageeventData(id:11, Time: "12:30",description: "びっくりたまご"))
    dataArray.append(StageeventData(id:13, Time: "13:00",description: "機動戦士ゼンダム"))
    dataArray.append(StageeventData(id:14, Time: "13:15",description: "Estrella"))
    dataArray.append(StageeventData(id:15, Time: "13:30",description: "Ash"))
    dataArray.append(StageeventData(id:16, Time: "13:45",description: "Feet Beat"))
    dataArray.append(StageeventData(id:17, Time: "14:00",description:"Air Logic"))
    dataArray.append(StageeventData(id:18, Time: "14:15",description:"Yangpa"))
    dataArray.append(StageeventData(id:19, Time: "14:30",description:"VOID"))
    dataArray.append(StageeventData(id:20, Time: "9:50",description: "骨粗鬆症訴訟少女B"))
    dataArray.append(StageeventData(id:21, Time: "10:05",description: "法蓮事変"))
    dataArray.append(StageeventData(id:22, Time: "10:20",description: "ミニチーズケーキ"))
    dataArray.append(StageeventData(id:23, Time: "10:35",description: "twilght"))
    dataArray.append(StageeventData(id:12, Time: "10:50",description: "有機炭酸"))
    dataArray.append(StageeventData(id:24, Time: "11:05",description: "ほぼバド部"))
    dataArray.append(StageeventData(id:25, Time: "11:20",description: "ツヴァイ"))
    dataArray.append(StageeventData(id:26, Time: "11:35",description:"C&Y🍭🍭ちょーだい"))
    dataArray.append(StageeventData(id:27, Time: "11:50",description:"The teacher's 2021"))
    dataArray.append(StageeventData(id:28, Time: "",description:""))
    dataArray.append(StageeventData(id:29, Time: "",description:""))
    dataArray.append(StageeventData(id:30, Time: "",description:"演目は全て終了しました"))
   
    return dataArray
}



