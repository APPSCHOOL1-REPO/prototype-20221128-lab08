//
//  CardDetailButtonView.swift
//  CardMoa
//
//  Created by MIJU on 2022/11/30.
//

import SwiftUI

struct CardDetailButtonView: View {
    @Binding var degree : Double
    @State private var tag: Int? = nil
    
    var body: some View {
//        NavigationLink(destination: CardDetailView()) {
//            Button(action: {
//                self.tag = 1
//            }) {
//                Text("카드 상세 혜택 보러가기")
//                    .foregroundColor(.white)
//                    .fontWeight(.bold)
//                    .frame(width: 235, height: 30)
//                    .background(Color.mainColor)
//                    .cornerRadius(5)
//            }
//            .rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
//        }
        
        NavigationLink {
            DetailMainView()
        } label: {
            Text("카드 상세 혜택 보러가기")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .frame(width: 235, height: 30)
                .background(Color.mainColor)
                .cornerRadius(5)
        }
        .frame(width: 260, height: 410, alignment: .bottom)
        .padding(.bottom, 20)
        .rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
        

    }

}

struct CardDetailButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailButtonView(degree: .constant(0))
    }
}
