//
//  count.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/08/15.
//

import Foundation
import FirebaseFirestore
let db = Firestore.firestore()

class countModel:ObservableObject{
    @Published var countnumber = db.collection("users").document("count")

}
