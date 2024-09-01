//
//  DelayModel.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/10/01.
//

import Foundation
import FirebaseFirestore

class DelayModel: ObservableObject {
    @Published var delay = [Delayarray]()
    
    init(){
    fetchData()

    }

    private var db = Firestore.firestore()
    @objc func fetchData() {
        db.collection("Delay").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
        self.delay = documents.map { (queryDocumentSnapshot) -> Delayarray in
                let data = queryDocumentSnapshot.data()
                let delay = data["delay"] as? String ?? ""
                let title = data["title"] as? String ?? ""
                let color = data["color"] as? String ?? ""
                
            return Delayarray(delay: delay,title: title,color: color)
            }
        }
    }
}
