//
//  ShokumogiZaikoModel.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/07/21.
//

import Foundation
import FirebaseFirestore

class ShokumogiZaikoModel: ObservableObject {
    @Published var zaiko = [ShokumogiZaiko]()
    
    init(){
    fetchData()

    }

    private var db = Firestore.firestore()
    @objc func fetchData() {
        db.collection("Shokumogi-Zaiko").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
        self.zaiko = documents.map { (queryDocumentSnapshot) -> ShokumogiZaiko in
                let data = queryDocumentSnapshot.data()
            let imageName = data["imageName"] as? String ?? ""
                let title = data["title"] as? String ?? ""
                let description = data["description"] as? String ?? ""
                let MB = data["MB"] as? String ?? ""
                let Shokumogicolor = data["Shokumogicolor"] as? String ?? ""
            return ShokumogiZaiko(imageName: imageName, title: title, description: description, MB: MB,Shokumogicolor: Shokumogicolor)
            }
        }
    }
}
