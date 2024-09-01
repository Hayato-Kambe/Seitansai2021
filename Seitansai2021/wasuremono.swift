//
//  wasuremono.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/06/21.
//

import Foundation

struct wasuremono: Identifiable{
    var id: Int
    var content:String
}

class getWasuremono: ObservableObject{
    @Published var wasuremonos = [dataType]()
    init() {
        let db = Firestore.firestore()
            db.collection("ikku").order(by: "now", descending: true).addSnapshotListener{ (snap, err) in

                if err != nil{

                    print((err?.localizedDescription)!)
                    return
                }

                for i in snap!.documentChanges{
                    if i.type == .added{
                        let id = i.document.documentID
                        let content = i.document.get("1") as! String
                        DispatchQueue.main.async {
                            self.datas.append(dataType(id: id, content: content))

                        }
                    }
                }
            }
        }
}
