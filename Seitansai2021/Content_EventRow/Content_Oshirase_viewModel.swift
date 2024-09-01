//
//  Content_Oshirase_viewModel.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/07/22.
//

import Foundation
import FirebaseFirestore

class Content_Oshirase_viewModel: ObservableObject {
    @Published var oshidata = [OshiraseData]()
    
    init(){
    fetchData()

    }

    private var db = Firestore.firestore()
    @objc func fetchData() {
        db.collection("Content_Oshirase").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            self.oshidata = documents.map { (queryDocumentSnapshot) -> OshiraseData in
                let data = queryDocumentSnapshot.data()
                let name = data["name"] as? String ?? ""
                let color = data["color"] as? String ?? ""
                let name2 = data["name2"] as? String ?? ""
                let color2 = data["color2"] as? String ?? ""
                let name3 = data["name3"] as? String ?? ""
                let color3 = data["color3"] as? String ?? ""
                return OshiraseData(name: name,color: color,name2: name2,color2: color2,name3: name3,color3: color3)
            }
        }
    }
}

