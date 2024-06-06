//
//  WelcomeBottomSheetView.swift
//  MindPlex
//
//  Created by Nguyễn Như Quang on 06/06/2024.
//

import SwiftUI

struct WelcomeBottomSheetView: View {
    var body: some View {
        ZStack {
            XCAsset.Colors.MainColor.background.swiftUIColor.edgesIgnoringSafeArea(.all)

            VStack {
                Text(L10n.Scene.Welcome.Sheet.Intro.title)
                    .font(FontFamily.Barlow.bold.swiftUIFont(size: 16))
                    .foregroundColor(
                        Color(asset: XCAsset.Colors.MainColor.mainText)
                    )
                    .padding(.bottom, 4)
                    .padding(.top, 28)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text(L10n.Scene.Welcome.Sheet.Intro.description)
                    .font(FontFamily.Barlow.regular.swiftUIFont(size: 14))
                    .foregroundColor(
                        Color(asset: XCAsset.Colors.MainColor.secondaryText)
                    )
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 16)
                
                Text(L10n.Scene.Welcome.Sheet.Server.title)
                    .font(FontFamily.Barlow.bold.swiftUIFont(size: 16))
                    .foregroundColor(
                        Color(asset: XCAsset.Colors.MainColor.mainText)
                    )
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 4)
                
                Text(L10n.Scene.Welcome.Sheet.Server.description)
                    .font(FontFamily.Barlow.regular.swiftUIFont(size: 14))
                    .foregroundColor(
                        Color(asset: XCAsset.Colors.MainColor.secondaryText)
                    )
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 16)
                
                Spacer()
            }
            .padding(.horizontal, 16)
        }
    }
}

struct WelcomeBottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBottomSheetView()
    }
}
