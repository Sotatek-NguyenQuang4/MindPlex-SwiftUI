//
//  Welcome.swift
//  MindPlex
//
//  Created by Nguyễn Như Quang on 03/06/2024.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        ZStack {
            Color(asset: XCAsset.Colors.MainColor.background)
                .edgesIgnoringSafeArea(.all)
            Image(uiImage: XCAsset.Assets.Welcome.welcomeBackground.image)
                .offset(CGSize(width: 0, height: -50))
            VStack {
                Image(uiImage: XCAsset.Assets.Common.logo.image)
                    .frame(width: 157, height: 43)
                Spacer()
                HStack {
                    VStack {
                        // Button JoinDefaultServer
                        NavigationLink(destination: {
                            RulesView()
                        }, label: {
                            Text(L10n.Scene.Welcome.joinDefaultServer)
                        })
                        .buttonStyle(StyleButton(style: .fill))
                        .padding(.bottom, 16)

                        // Separator OR
                        HStack {
                            Color(asset: XCAsset.Colors.MainColor.outline)
                                .frame(height: 1)
                            Text(L10n.Scene.Welcome.Separator.or.uppercased())
                                .font(FontFamily.BarlowMedium.regular.swiftUIFont(size: 14))
                                .foregroundColor(
                                    Color(asset: XCAsset.Colors.MainColor.secondaryText)
                                )
                            Color(asset: XCAsset.Colors.MainColor.outline)
                                .frame(height: 1)
                        }
                        // Learn more / Log In Button
                        HStack {
                            Button(L10n.Scene.Welcome.learnMore) {
                                print("LearnMore tapped!")
                            }
                            .buttonStyle(StyleButton(style: .plain))
                            Button(L10n.Scene.Welcome.logIn) {
                                print("LogIn tapped!")
                            }
                            .buttonStyle(StyleButton(style: .plain))
                        }
                        .padding(.bottom, 24)
                    }
                }
                .padding(.horizontal, 24)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
