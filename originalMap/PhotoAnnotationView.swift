//
//  PhotoAnnotationView.swift
//  originalMap
//
//  Created by 佐川駿介 on 2020/10/30.
//

import UIKit
import MapKit

class PhotoAnnotationView: MKAnnotationView {
    class var size :CGSize {
        return CGSize(width: 44.0, height: 44.0)
    }
    
    var thumbnailImage: UIImage? {
        didSet {
            self.thumbnailImageView.image = self.thumbnailImage
        }
    }
    
    private let thumbnailImageView: UIImageView! = UIImageView(frame: CGRect(origin: CGPoint.zero, size: PhotoAnnotationView.size))
    
    override init(annotation: MKAnnotation!, reuseIdentifier: String!) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        
        self.frame = CGRect(origin: self.frame.origin, size: PhotoAnnotationView.size)
        
        self.canShowCallout = true
        self.rightCalloutAccessoryView = UIButton(type: .detailDisclosure) as! UIView
        
        self.thumbnailImageView.contentMode = .scaleAspectFill
        self.thumbnailImageView.clipsToBounds = true
        self.addSubview(self.thumbnailImageView)
    }
    
     init(frame: CGRect) {
        super.init(annotation: nil, reuseIdentifier: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func prepareForReuse() {
        self.thumbnailImage = nil
    }
}



