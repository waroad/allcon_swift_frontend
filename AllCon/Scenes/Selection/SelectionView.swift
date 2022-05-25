//
//  Taste.swift
//  LoginPageSwiftUITutorial
//
//  Created by 정혜인 on 2022/05/17.
//  Copyright © 2022 Andreas Schultz. All rights reserved.
//

import SwiftUI

struct SelectionView : View {
    @ObservedObject var movieModel = MovieViewModel()

    var body: some View {
        
        VStack {
        Spacer().frame(height: 50)

        HStack{
            TitleText()
            Spacer()
            SubText()
        }
          // 2
          HStack {
              Image("001").resizable()
                  .aspectRatio(contentMode: .fill).frame(width: 150, height: 200) .shadow(color: .gray, radius: 5).cornerRadius(10.0)
//              RoundedRectangle(cornerRadius: 10).fill(image:Image("001"))
//                  .frame(width: 150, height: 200)
            Spacer()
            Image("002").resizable()
                  .aspectRatio(contentMode: .fit).frame(width: 150, height: 200).shadow(color: .gray, radius: 5).cornerRadius(10.0)
          }
          // 3
            HStack {
                Image("003").resizable()
                    .aspectRatio(contentMode: .fill).frame(width: 150, height: 200) .shadow(color: .gray, radius: 5).cornerRadius(10.0)
  //              RoundedRectangle(cornerRadius: 10).fill(image:Image("001"))
  //                  .frame(width: 150, height: 200)
              Spacer()
              Image("004").resizable()
                    .aspectRatio(contentMode: .fit).frame(width: 150, height: 200).shadow(color: .gray, radius: 5).cornerRadius(10.0)
            }
            HStack {
                Image("005").resizable()
                    .aspectRatio(contentMode: .fill).frame(width: 150, height: 200) .shadow(color: .gray, radius: 5).cornerRadius(10.0)
  //              RoundedRectangle(cornerRadius: 10).fill(image:Image("001"))
  //                  .frame(width: 150, height: 200)
              Spacer()
              Image("006").resizable()
                    .aspectRatio(contentMode: .fit).frame(width: 150, height: 200).shadow(color: .gray, radius: 5).cornerRadius(10.0)
            }

    }.padding()
}
}

struct SubText : View {
    var body: some View {
        return Text("건너뛰기")
            .fontWeight(.light)
            .foregroundColor(Color.blue)
            .padding(.bottom)
            .frame(alignment: .trailing)
    }
}
    
struct TitleText : View {
    var body: some View {
        return Text("취향선택")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(Color.black)
            .padding(.bottom)
            .frame(width: 120)
            .frame(alignment: .leading)
    }
}




struct SelectionView_Previews : PreviewProvider {
    static var previews: some View {
        SelectionView()
    }
}


