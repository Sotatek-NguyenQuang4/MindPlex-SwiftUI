//
//  RulesView.swift
//  MindPlex
//
//  Created by Nguyễn Như Quang on 04/06/2024.
//

import SwiftUI

struct RulesView: View {
    
    @ObservedObject var viewModel: RulesViewModel = RulesViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color(asset: XCAsset.Colors.MainColor.background)
                .edgesIgnoringSafeArea(.all)
            VStack {
                // Title Section
                Text(L10n.Scene.ServerRules.title)
                    .font(FontFamily.TurretRoad.bold.swiftUIFont(size: 24))
                    .foregroundColor(Color(asset: XCAsset.Colors.MainColor.mainText))
                    .padding(.bottom, 6)
                // Sub Title Section
                Text(L10n.Scene.ServerRules.subtitle)
                    .multilineTextAlignment(.center)
                    .font(FontFamily.Barlow.regular.swiftUIFont(size: 14))
                    .foregroundColor(Color(asset: XCAsset.Colors.MainColor.secondaryText))
                    .padding(.bottom, 24)
                // ListView
                List(viewModel.items) { item in
                    let index = viewModel.items.firstIndex { $0.name == item.name } ?? 0
                    HStack {
                        Text("\(index + 1)")
                            .frame(width: 30, height: 30)
                            .multilineTextAlignment(.center)
                            .font(FontFamily.Barlow.bold.swiftUIFont(size: 14))
                            .foregroundColor(
                                Color(asset: XCAsset.Colors.MainColor.mainPrimary)
                            )
                            .background(
                                Color(asset: XCAsset.Colors.MainColor.mainPrimary1)
                            )
                            .cornerRadius(15)
                            .padding(.trailing, 12)
                        Text(item.name)
                            .font(FontFamily.Barlow.regular.swiftUIFont(size: 15))
                            .foregroundColor(
                                Color(asset: XCAsset.Colors.MainColor.mainText)
                            )
                    }
                    .padding(.top, index == 0 ? 24 : 0)
                    .listRowBackground(Color(.clear))
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
                .background(Color(asset: XCAsset.Colors.MainColor.dark1))
                .listRowSpacing(16)
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

struct RulesView_Previews: PreviewProvider {
    static var previews: some View {
        RulesView()
    }
}
