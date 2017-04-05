//
//  PokeCell.swift
//  pokedex3
//
//  Created by Bruce Kerr-Peterson on 05/04/2017.
//  Copyright © 2017 Bruce Kerr-Peterson. All rights reserved.
//

// We know that we want to change the image and the label from the main.storyboard from here. So we need to start by creating @IBOutlets. This is how you create a cell in your cell collection that has the pokemon descriptions

//Modify and update each cell for each new Pokemon. That is why you have to connect the Identifier and the Reuseable Identifier

import UIKit

class PokeCell: UICollectionViewCell {
    
//The @IBOutlets are from the collection of cells; thumb image and the label name
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
//For each cell we need to create a class of Pokemon so it is stored in the PokeCell
    
    var pokemon: Pokemon!
    
//To make the Pokemon images rounded at the corners need to implement some code
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    func configureCell(pokemon: Pokemon) {
        
        self.pokemon = pokemon
        
//The thumbImg has been named in the Pokemon.swift file blueprint we created already, so it is just referring to that. Given that it is a Int we need to change it to a String for the text label.
        
        nameLbl.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
    
    
    
}
