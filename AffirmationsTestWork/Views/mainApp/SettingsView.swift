//
//  SettingsView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    //MARK: - Unlock button
                    ZStack {
                        Color.button
                        HStack {
                            Text("Unlock all with")
                                .foregroundStyle(.white)
                                .font(.system(size: 22, weight: .bold))
                            Image(systemName: "crown.fill")
                                .foregroundStyle(.yellow)
                            
                        }
                    }
                    .frame(height: 65)
                    .cornerRadius(10)
                    
                    //MARK: - General settings
                    Text("General")
                        .padding(.top)
                    VStack{
                        NavigationLink {
                            
                        } label: {
                            HStack {
                                Image(systemName: "bell.square.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(.yellow)
                                Text("Reminders")
                                Spacer()
                                Text("Off")
                            }
                        }
                        Divider()
                        NavigationLink {
                            
                        } label: {
                            HStack {
                                Image(systemName: "rectangle.inset.topleft.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(.red)
                                Text("Widget")
                                Spacer()
                            }
                        }
                        Divider()
                        NavigationLink {
                            
                        } label: {
                            HStack {
                                Image(systemName: "lightbulb")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(.blue)
                                Text("Appearance")
                                Text("Default").foregroundStyle(.gray)
                                Spacer()
                            }
                        }
                        Divider()
                        NavigationLink {
                            
                        } label: {
                            HStack {
                                Image(systemName: "doc.text")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(.green)
                                Text("Terms of use")
                                
                                Spacer()
                            }
                        }
                        Divider()
                        NavigationLink {
                            
                        } label: {
                            HStack {
                                Image(systemName: "doc.text")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(.gray)
                                Text("Privacy policy")
                                
                                Spacer()
                            }
                        }
                    }
                    .foregroundStyle(.black)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .font(.title3)
                    Spacer()
                }
                .padding()
            }.background(Color.gray.opacity(0.2))
                .navigationTitle("Settings")
        }
    }
}

#Preview {
    NavigationView {
        SettingsView()
    }
}
