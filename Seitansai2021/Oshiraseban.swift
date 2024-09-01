//
//  Oshiraseban.swift
//  Seitansai2021
//
//  Created by 神戸颯斗 on 2021/06/21.
//

import SwiftUI

struct Oshiraseban: View {
    var content = ""
    var body: some View {
        Oshiraseban.formatter.locale = Locale(identifier: "ja_JP")
    }
}

struct Oshiraseban_Previews: PreviewProvider {
    static var previews: some View {
        Oshiraseban()
    }
}
