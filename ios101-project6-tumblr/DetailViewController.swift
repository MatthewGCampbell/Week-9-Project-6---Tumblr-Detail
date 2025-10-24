//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Matthew Campbell on 10/22/25.
//

import UIKit
import NukeExtensions

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!

    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.isEditable = false
        
        // Do any additional setup after loading the view.
        textView.text = post.caption.trimHTMLTags()
        
        guard let url = post.photos.first?.originalSize.url else { return }
        
        NukeExtensions.loadImage(with: url, into: imageView)
        
    }
}
