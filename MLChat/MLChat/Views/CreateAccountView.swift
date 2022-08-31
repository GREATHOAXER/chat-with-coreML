//
//  CreateAccountView.swift
//  MLChat
//
//  Created by Hyung Seo Han on 2022/08/30.
//

import SwiftUI

struct CreateAccountView: View{
    @Binding var isCreateAccount: Bool
    @State var email: String = ""
    @State var password: String = ""
    var body: some View{
        NavigationView{
            ScrollView{
                VStack(spacing: 5){
                    Group{
                        Text("로그인에 사용할 이메일 입력")
                        TextField("email",text: self.$email)
                            .keyboardType(.emailAddress)
                        Text("비밀번호 입력")
                        SecureField("password", text: self.$password)
                    }
                    .textInputAutocapitalization(.never)
                    .padding(12)
                    .background(.white)
                    Spacer()
                    Button{
                        if(email != "" && password != ""){
                            print("회원가입 성공")
                        }else{
                            print("실패")
                        }
                    }label: {
                        HStack{
                            Spacer()
                            Text("Create Account")
                                .foregroundColor(.white)
                                .padding(.vertical,10)
                            Spacer()
                        }
                        .background(.blue)
                     
                    }
                }
            }
                .navigationTitle("Create Account")
                .toolbar{
                    ToolbarItemGroup(placement: .navigationBarTrailing){
                        Button{
                            self.isCreateAccount.toggle()
                        }label: {
                            Image(systemName: "x.circle")
                        }
                    }}
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider{
    static var previews: some View{
        CreateAccountView(isCreateAccount: .constant(true))
    }
}
