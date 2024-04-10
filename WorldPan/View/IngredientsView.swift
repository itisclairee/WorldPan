//
//  IngredientsView.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 21/10/23.
//

import SwiftUI

struct IngredientsView: View
{
    @State public var recipe:Recipe
    @State public var country:String  // NAME OF COUNTRY NOT COUNTRY OBJECT
    @Binding public var countries:[Country]
    
    var body: some View
    {
        
        VStack
        {
            ForEach(recipe.ingredient)
            {
                ingredient in
                NavigationLink(destination: LocationView(ingredient: ingredient, recipe: recipe))
                {
                    HStack
                    {
                        Image(ingredient.imageName)
                            .resizable()
                            .clipShape(Circle())
                            .aspectRatio(contentMode: .fit)
                            .shadow(radius: 5)
                            .frame(width: 90)
                            .padding()
                        Text(ingredient.name)
                            .bold()
                        Spacer()
                        Text(ingredient.weight)
                        Image(systemName: "chevron.right")
                        
                        
                    }
                    .frame(width: 372.0, height: 100.0)
                    .padding(.trailing, 50.0)
                }
            }
        }
    }
}
            
           

//#Preview {
//    IngredientsView()
//}
