//
//  Testfile.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/07/19.
//
import Foundation
import FirebaseFirestore

class userViewModel: ObservableObject {
    @Published var users = [User]()
    
    init(){
    fetchData()

    }

    private var db = Firestore.firestore()
    @objc func fetchData() {
        db.collection("wasuremono").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            self.users = documents.map { (queryDocumentSnapshot) -> User in
                let data = queryDocumentSnapshot.data()
                let name = data["name"] as? String ?? ""
                let date = data["date"] as? String ?? ""
                let description = data["description"] as? String ?? ""
                return User(name: name, date: date,description: description)
            }
        }
    }
}
