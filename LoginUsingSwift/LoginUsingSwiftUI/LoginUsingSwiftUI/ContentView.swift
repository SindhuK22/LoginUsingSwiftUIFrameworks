//
//  ContentView.swift
//  LoginUsingSwiftUI
//
//  Created by Sindhu K on 07/09/23.
//

import SwiftUI

struct ContentView: View {   
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0  // creates the red box if the user enters wrong username
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false // navigates to next page
    
    var isLoginDisabled: Bool {
        return username.isEmpty || password.isEmpty
    }
    
    var body: some View {
            ZStack {
                Color.white
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Text("Sign In")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom, 120)
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity((0.05)))
                            .cornerRadius(10)
                            .border(.red, width: CGFloat(wrongPassword))
                            .padding()
                                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity((0.05)))
                            .cornerRadius(10)
                            .border(.red, width: CGFloat(wrongPassword))
                            .padding()
                                    
                   
                    Button(action: {
                        print("Username: \(username)")
                        print("Password: \(password)")
                    })
                    {
                        Text("Login")
                        
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .disabled(isLoginDisabled)
                    .opacity(isLoginDisabled ? 0.3 : 1)
                    
                    .padding()
                    
                    VStack {
                        Text("Forgot Password?")
                            .foregroundColor(.blue)
                    }
                    
                        Spacer()
                        Spacer()
                    
                }
            }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
