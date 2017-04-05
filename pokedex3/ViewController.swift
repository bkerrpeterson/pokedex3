//
//  ViewController.swift
//  pokedex3
//
//  Created by Bruce Kerr-Peterson on 05/04/2017.
//  Copyright © 2017 Bruce Kerr-Peterson. All rights reserved.
//

//We are going to create some code now to show all of the Pokemons on the app. Need to modify the ViewController to be able to use two additional features - UICollectionViewDelegate and UICollectionViewDataSource (If we were using a Table, then it would be UITableView...)

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
//Have to connect our Collection to our ViewController, through an @IBOutlet

    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
// We have to assign th Delegate and DataSource to self! Not sure why, will need to read up.
        collection.delegate = self
        collection.dataSource = self
      
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//We now have to create our cells in the view for the Pokemon to go into. This is the reusable identifier that we setup on the main story board. We called it PokeCell in the storyboard.
// Have to use dequeueReusableCell because it will only load what is on the screen and not all the pokemon. If it was all the pokemon then it would crash the app.
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokeCell", for: indexPath) as? PokeCell {
           
//We are now going to create some code to show different Pokemon images and not just the single one we currently have. We have not coded the names initially, so just set it to Pokemon.. the podedexId is the same number as the indexPath row number.
            
            let pokemon = Pokemon(name: "Pokemon", pokedexId: indexPath.row)
            
//The configureCell(pokemon: Pokemon) below calls the func configureCell(pokemon: Pokemon) from the PokeCell.swift file
            
            cell.configureCell(pokemon: pokemon)
            
            
            return cell
        } else {
            return UICollectionViewCell()
        }
        
        
    }
//The function below is for when a user taps on a cell (didSelectItemAt), which will then execute the code below it.
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
//This function sets the number of items we will have in each section
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
// This is the height of the image that we set in the story boards
        return CGSize(width: 105, height: 105)
    }
    
}

