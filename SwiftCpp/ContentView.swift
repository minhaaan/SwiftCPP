//
//  ContentView.swift
//  SwiftCpp
//
//  Created by 최민한 on 2022/10/22.
//

import SwiftUI

struct ContentView: View {
  @State var number = 0
  
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.accentColor)
      Text("Hello, world!")
      Text(HelloWorldWrapper().sayHello())
      Text("\(number)")
      Button {
        number = HelloWorldWrapper().getRandomNumber()
      } label: {
        Text("refresh")
      }

    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
