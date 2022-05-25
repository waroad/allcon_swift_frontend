//
//  ContentView.swift
//  LoginPageSwiftUITutorial
//
//  Created by Andreas Schultz on 01.07.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct LoginView : View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        VStack {
            WelcomeText()
//            UserImage()
            TextField("Username", text: $username)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                .frame(width: 220, height: 60)
            SecureField("Password", text: $password)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                .frame(width: 220, height: 60)
            Button(action: {}) {
               LoginButtonContent()
            }
        }
        .padding()
    }
}

#if DEBUG
struct LoginView_Previews :
    PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
#endif

struct WelcomeText : View {
    var body: some View {
        return Text("Welcome to AllCon!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

//struct UserImage : View {
//    var body: some View {
//        return Image("userImage")
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 150, height: 150)
//            .clipped()
//            .cornerRadius(150)
//            .padding(.bottom, 75)
//    }
//}

struct LoginButtonContent : View {
    var body: some View {
        return Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}


