//
//  Labels.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 2/5/22.
//

import Foundation
import SwiftUI


struct EditButtonStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .center, spacing: 8) {
            configuration.icon
                .foregroundColor(Color.dark)
                .padding(5)
                .font(.system(size: 20))
        }
    }
}

struct SmallButtonStyleDark: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .center, spacing: 8) {
            configuration.title
                .padding()
                .frame(width: 75, height: 40)
                .background(
                    RoundedRectangle(cornerRadius: 15).fill(Color.dark)
                ).foregroundColor(Color.light)
            }
        }
    }

struct SmallButtonStyleLight: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .center, spacing: 8) {
            configuration.title
                .padding()
                .frame(width: 75, height: 40)
                .background(
                    RoundedRectangle(cornerRadius: 15).fill(Color.light)
                ).foregroundColor(Color.dark)
            }
        }
    }

struct SmallButtonStyleLightLine: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .center, spacing: 8) {
            configuration.title
                .padding()
                .frame(width: 75, height: 40)
                .background(
                    RoundedRectangle(cornerRadius: 15).stroke(Color.light, lineWidth: 2)
                ).foregroundColor(Color.light)
            }
        }
    }

struct SmallButtonStyleDarkLine: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .center, spacing: 8) {
            configuration.title
                .padding(10)
                .frame(width: 75, height: 40)
                .background(
                    RoundedRectangle(cornerRadius: 15).stroke(Color.dark, lineWidth: 2)
                ).foregroundColor(Color.dark)
            }
        }
    }

