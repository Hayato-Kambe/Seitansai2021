//
//  MapView.swift
//  laugh bunkasai
//
//  Created by 神戸颯斗 on 2021/04/17.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    let ido = 34.694810
    let keido = 135.818057
        let annoTitle = "奈良県立奈良高等学校"
        
    func makeUIView(context: Context) -> MKMapView{
        let view = MKMapView(frame: .zero)
        return view
    }
    func updateUIView(_ view: MKMapView, context: Context) {
        //座標
        let coordinate = CLLocationCoordinate2D(
            latitude: ido, longitude: keido)
        //エリア
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
        //アノテーション
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = annoTitle
        view.addAnnotations([annotation])
    }
}
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
