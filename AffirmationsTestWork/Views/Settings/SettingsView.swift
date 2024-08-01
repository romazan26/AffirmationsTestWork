//
//  SettingsView.swift
//  AffirmationsTestWork
//
//  Created by Роман on 31.07.2024.
//

import SwiftUI

struct SettingsView: View {
    @StateObject var vm: SettingsViewModel
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
                        //MARK: - Reminders
                        NavigationLink {
                            RemindersView(vm: vm)
                        } label: {
                            HStack {
                                Image(systemName: "bell.square.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(.yellow)
                                Text("Reminders")
                                Spacer()
                                Text(vm.reminders ? "ON" : "Off")
                            }
                        }
                        Divider()
                        
                        //MARK: - Widget
                        NavigationLink {
                            WidgetView()
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
                        
                        //MARK: - Appearance
                        NavigationLink {
                            AppearanceView(vm: vm)
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
                        
                        //MARK: - Terms of use
                        NavigationLink {
                            Text("Terms of use")
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
                        
                        //MARK: - Privacy policy
                        NavigationLink {
                            Text("Privacy policy")
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
                    //.foregroundStyle(.black)
                    .padding()
                    .background(Color.backStack)
                    .cornerRadius(10)
                    .font(.title3)
                    Spacer()
                }
                .padding()
            }.background(Color.gray.opacity(0.1))
                .navigationTitle("Settings")
        }
    }
}

#Preview {
    NavigationView {
        SettingsView(vm: SettingsViewModel())
    }
}
