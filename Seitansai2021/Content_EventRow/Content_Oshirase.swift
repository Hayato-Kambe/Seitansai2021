//
//  Content_Oshirase.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/07/22.
//

import SwiftUI

struct Content_Oshirase: View {
    @ObservedObject private var viewModel = Content_Oshirase_viewModel()
    var oshirasedata: OshiraseData
    var body: some View {
        HStack{
        Text(oshirasedata.name)
    }
}
}

struct Content_Oshirase_Previews: PreviewProvider {
    static var previews: some View {
        Content_Oshirase(oshirasedata: OshiraseData)
    }
}
