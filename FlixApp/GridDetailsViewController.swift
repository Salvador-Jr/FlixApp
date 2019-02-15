//
//  GridDetailsViewController.swift
//  FlixApp
//
//  Created by Salvador Rodriguez on 2/14/19.
//  Copyright © 2019 009252542SalvadorRodriguez. All rights reserved.
//

import UIKit
import AlamofireImage

class GridDetailsViewController: UIViewController {

    @IBOutlet weak var heroBackdrop: UIImageView!
    @IBOutlet weak var heroPoster: UIImageView!
    @IBOutlet weak var heroTitle: UILabel!
    @IBOutlet weak var heroSynopsisLabel: UILabel!
    
    var movie: [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(movie["title"]!)
        heroTitle.text = movie["title"] as? String
        heroTitle.sizeToFit()
        heroSynopsisLabel.text = movie["overview"] as? String
        heroSynopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        heroPoster.af_setImage(withURL: posterUrl!)
        let baseBDUrl = "https://image.tmdb.org/t/p/w780"
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: baseBDUrl + backdropPath)
        heroBackdrop.af_setImage(withURL: backdropUrl!)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
