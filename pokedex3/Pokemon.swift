//
//  Pokemon.swift
//  pokedex3
//
//  Created by Bruce Kerr-Peterson on 05/04/2017.
//  Copyright © 2017 Bruce Kerr-Peterson. All rights reserved.
//

// There are 700+ pokemon, therefore we have to setup up a blueprint (class) so that we can import and format all the data from the pokemon.csv file...otherwise, we would have to hard code each of the pokemons names into the ViewController file.

import Foundation

class Pokemon {
    
    private var _name: String!
    private var _pokedexId: Int!
    
    var name: String {
        
        return _name
    }
    
    var pokedexId: Int {
        
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int) {
        
        self._name = name
        self._pokedexId = pokedexId
    }
    
}
