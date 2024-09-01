//
//  ShokumogiArray.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/06/05.
//

import Foundation

var arraycom:[Sdata] = makeDatas()

var loremmodel = LoremModel()

let str1 = loremmodel.data
let str2 = str1.suffix(592)
let str3 = str2.prefix(9)
let array1 = "aa"
let str4 = str3.prefix(2)
let array2 = str4.suffix(1)
let str5 = str3.prefix(3)
let array3 = str5.suffix(1)
let str6 = str3.prefix(4)
let array4 = str6.suffix(1)
let str7 = str3.prefix(5)
let array5 = str7.suffix(1)
let str8 = str3.prefix(6)
let array6 = str8.suffix(1)
let str9 = str3.prefix(7)
let array7 = str9.suffix(1)
let str10 = str3.prefix(8)
let array8 = str10.suffix(1)
let array9 = str3.suffix(1)

struct Sdata: Identifiable{
    var id: Int
    var MB: String
}

func makeDatas()->[Sdata] {
    var dataArray:[Sdata] = []
    dataArray.append(Sdata(id:1, MB:String(array1)))
    dataArray.append(Sdata(id:2, MB:String(array2)))
    dataArray.append(Sdata(id:3, MB:String(array3)))
    dataArray.append(Sdata(id:4, MB:String(array4)))
    dataArray.append(Sdata(id:5, MB:String(array5)))
    dataArray.append(Sdata(id:6, MB:String(array6)))
    dataArray.append(Sdata(id:7, MB:String(array7)))
    dataArray.append(Sdata(id:8, MB:String(array8)))
    dataArray.append(Sdata(id:9, MB:String(array9)))
    return dataArray
}
