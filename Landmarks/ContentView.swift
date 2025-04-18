//
//  ContentView.swift
//  Landmarks
//
//  Created by Josh May on 4/17/25.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        VStack
        {
            
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading)
            {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.black)
                
                HStack
                {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("A natural rock formation resembling a turtle, Turtle Rock is a popular spot for hikers and photographers in Joshua Tree National Park.")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
