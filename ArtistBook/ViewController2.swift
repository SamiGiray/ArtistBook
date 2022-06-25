//
//  ViewController2.swift
//  ArtistBook
//
//  Created by Sami Giray Doğrultucu on 6/25/22.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var artistLabel: UILabel!
    var targetArtistName = ""
    var targetArtistİmage = UIImage()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        artistLabel.text = targetArtistName
        imageView.image =  targetArtistİmage
    }
    



}
