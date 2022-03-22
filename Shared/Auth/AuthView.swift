//
//  AuthView.swift
//  puroclean (iOS)
//
//  Created by Casuneanu Catalin on 22.03.2022.
//


import SwiftUI

struct AuthView: View {
    @StateObject var msalModel: MSALScreenViewModel = MSALScreenViewModel()

    var body: some View {
        VStack {
            Spacer()
            Text("👋 \(msalModel.accountName)")
                .font(.largeTitle)
                .padding()
            Button("Login with MSAL") {
                msalModel.loadMSALScreen()
            }
            .foregroundColor(.black)
            MSALScreenView_UI(viewModel: msalModel)
                .frame(width: 250, height: 250, alignment: .center)
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
