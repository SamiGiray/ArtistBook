//
//  ViewController.swift
//  ArtistBook
//
//  Created by Sami Giray Doğrultucu on 6/25/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var artistName = [String]()
    var artistImage = [UIImage]()
    var selectedArtistName = ""
    var selectedArtistImage = UIImage()
    
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = artistName[indexPath.row]
        return cell
        }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artistName.count
    }
 
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedArtistName = artistName[indexPath.row]
        selectedArtistImage = artistImage[indexPath.row]
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            
            let destination = segue.destination as! ViewController2
            destination.targetArtistName = selectedArtistName
            destination.targetArtistİmage = selectedArtistImage
        }
    }
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        
        title = "Artist Book"
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        artistName.append("Agnes")
        artistName.append("Olafur")
        artistName.append("Aurora")
        
        artistImage.append(UIImage(named: "agnes")!)
        artistImage.append(UIImage(named: "olafur")!)
        artistImage.append(UIImage(named: "aurora")!)
        
        
        
        
    }


}

