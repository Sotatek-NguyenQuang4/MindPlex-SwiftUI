//
//  PrivacyView.swift
//  MindPlex
//
//  Created by Nguyễn Như Quang on 06/06/2024.
//

import SwiftUI

struct PrivacyView: View {
    
    @ObservedObject var viewModel: PrivacyViewModel = PrivacyViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color(asset: XCAsset.Colors.MainColor.background)
                .edgesIgnoringSafeArea(.all)
            VStack {
                // Title Section
                Text(L10n.Scene.Privacy.title)
                    .font(FontFamily.TurretRoad.bold.swiftUIFont(size: 24))
                    .foregroundColor(Color(asset: XCAsset.Colors.MainColor.mainText))
                    .padding(.bottom, 6)
                // Sub Title Section
                Text(L10n.Scene.Privacy.description)
                    .multilineTextAlignment(.center)
                    .font(FontFamily.Barlow.regular.swiftUIFont(size: 14))
                    .foregroundColor(Color(asset: XCAsset.Colors.MainColor.secondaryText))
                    .padding(.bottom, 24)
                // ListView
                List {
                    ForEach(viewModel.items) {  item in
                        Text(item.name)
                            .font(FontFamily.Barlow.regular.swiftUIFont(fixedSize: 14))
                            .foregroundStyle(
                                Color(asset: XCAsset.Colors.MainColor.mainPrimary)
                            )
                            .listRowBackground(Color(.clear))
                            .listRowSeparator(.hidden)
                    }
                }
                .listStyle(.plain)
                .scrollDisabled(true)
                .frame(height: 90)
                .background(Color(asset: XCAsset.Colors.MainColor.mainPrimary100))
                .cornerRadius(14)
                .padding(.bottom, 16)
                // Confirm Action
                NavigationLink(destination: {
                    RulesView()
                }, label: {
                    Text(L10n.Scene.ServerRules.Button.confirm)
                })
                .buttonStyle(StyleButton(style: .fill))
                .padding(.bottom, 2)
                // Back Action
                Button(L10n.Common.Controls.Actions.back) {
                    presentationMode.wrappedValue.dismiss()
                }
                .buttonStyle(StyleButton(style: .outline))
                .padding(.bottom, 16)
            }
            .padding(.horizontal, 24)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct PrivacyView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PrivacyView()
                .preferredColorScheme(.light)

            PrivacyView()
                .preferredColorScheme(.dark)
        }
    }
}
