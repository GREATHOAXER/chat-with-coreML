//
//  ContentView.swift
//  MLChat
//
//  Created by Hyung Seo Han on 2022/08/30.
//

import SwiftUI
import Firebase

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var isCreateAccount: Bool = false
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some View {
        NavigationView{
            ScrollView{
                Button{
                    
                }label:{
                    Image(systemName: "person.fill")
                        .font(.system(size:64))
                        .padding()
                }
                .padding()
                Group{
                    TextField("Email", text:$email)
                        .keyboardType(.emailAddress)
                    SecureField("Password", text:$password)
                }
                .textInputAutocapitalization(.never)
                .padding(12)
                .background(.white)
               
                    
                
                Button{
                    print("login")
                }label: {
                    HStack{
                        Spacer()
                        Text("login")
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                        Spacer()
                    }
                    .background(Color.blue)
                    
                    
                }
                Button{
                    isCreateAccount.toggle()
                    print(isCreateAccount)
                }label:{
                    HStack(){
                        Spacer()
                        Text("Create Account")
                            .foregroundColor(.white)
                            .padding(.vertical,10)
                        Spacer()
                    }.background(Color.gray)
                }
            }
            .navigationTitle("Login")
            .sheet(isPresented: $isCreateAccount){
                CreateAccountView(isCreateAccount: self.$isCreateAccount)
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
