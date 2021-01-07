//
//  ViewController.swift
//  originalMap
//
//  Created by 佐川駿介 on 2020/10/10.
//

import UIKit
import MapKit
import CoreLocation
import Photos


class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    var myLock = NSLock()  // この行を追加
    let goldenRatio = 1.618  // この行を追加
    
    

    @IBOutlet var mapView : MKMapView!
    var locManager : CLLocationManager!


    override func viewDidLoad() {
        super.viewDidLoad()

        self.prepareMapView()
        self.checkAuthorizationStatus()



//        locManager = CLLocationManager()
//        //この行の意味は？
//        locManager.delegate = self
//        locManager!.requestWhenInUseAuthorization()

//        self.requestCurrentLocation()
        mapView.delegate = self
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         if let identifier = segue.identifier {
//                   if identifier == "assetViewControllerSegue" {
//                       let annotationView = sender as! MKAnnotationView
//
//                       let assetViewController = segue.destination as! AssetViewController
//                       assetViewController.annotation = annotationView.annotation as? PhotoAnnotation
//                   }
//               }
//    }

//    func requestCurrentLocation(){
//        self.locManager.startUpdatingLocation()
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let photoAnnotation = annotation as? PhotoAnnotation
        let photoAnnotationViewID = "photoAnnotationView"
        var photoAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: photoAnnotationViewID) as? PhotoAnnotationView

        if photoAnnotationView == nil {
            photoAnnotationView = PhotoAnnotationView(annotation: photoAnnotation, reuseIdentifier: photoAnnotationViewID)
        }

        if let image = photoAnnotation?.image {
            photoAnnotationView?.image = image
        } else {
            let screenScale = UIScreen.main.scale
            let targetSize = CGSize(
                width: PhotoAnnotationView.size.width * screenScale,
                height: PhotoAnnotationView.size.height * screenScale)

            
            PHImageManager().requestImage(
                for: (photoAnnotation?.asset)!,
                targetSize: targetSize,
                contentMode: .aspectFill,
                options: nil,
                resultHandler: {(image, info) -> Void in
                    photoAnnotation?.image = image;
                    photoAnnotationView?.thumbnailImage = image;
                }
            )
        }

        return photoAnnotationView
        
    }
//    dequeueReusableAnnotationViewWithIdentifierメソッドを使用して未使用の注釈ビューの取得を試みている


    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        let coordinate :CLLocationCoordinate2D = view.annotation!.coordinate
        var region :MKCoordinateRegion = mapView.region
        region.center = coordinate
        mapView.setRegion(region, animated: true)
    }

//    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
//        self.performSegue(withIdentifier: "assetViewControllerSegue", sender: view)
//    }

    private func prepareMapView() {
//        回転するかと、3D表示
        self.mapView.isRotateEnabled = false
        self.mapView.isPitchEnabled = false
        self.mapView.delegate = self
    }

//    フォトライブラリへのアクセス権
    private func checkAuthorizationStatus() {
        let status = PHPhotoLibrary.authorizationStatus()

        switch status {
        case .authorized:
            self.prepareAnnotations()
        default:
            PHPhotoLibrary.requestAuthorization{ status in
                if status == .authorized {
                    self.prepareAnnotations()
                }
            }
        }
    }

//「PHAsset」はライブラリの中の写真に相当するオブジェクト。PHAssetのの、Locationプロパティを使用して写真を撮影した場所の情報を取得できる。
// 「PHAsset」クラスの「fetchAssetsWithMediaType」メソッドを使用するとメディアタイプを指定してPHAssetオブジェクトを取得
//   enumerateObjectsUsingBlockメソッドを使用することで写真の情報を一つずつ取り出せる。
//    取り出した情報がnilじゃなかったらPHAssetをassetとする
    private func prepareAnnotations() {
        let fetchResult = PHAsset.fetchAssets(with: PHAssetMediaType.image, options: nil)
        fetchResult.enumerateObjects ({result, index, stop in

            if let asset = result as? PHAsset {
                if asset.location != nil {
                    let annotation = PhotoAnnotation(asset: asset)
                    self.mapView.addAnnotation(annotation)
                }
            }
        })
    }




//    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
//            switch status {
//            // 許可されてない場合
//            case .notDetermined:
//            // 許可を求める
//                manager.requestWhenInUseAuthorization()
//            // 拒否されてる場合
//            case .restricted, .denied:
//                // 何もしない
//                break
//            // 許可されている場合
//            case .authorizedAlways, .authorizedWhenInUse:
//                // 現在地の取得を開始
//                manager.startUpdatingLocation()
//                break
//            default:
//                break
//            }
//        }
  
    @IBAction func clickZoomin(_ sender: Any) {
        print("[DBG]clickZoomin")
        myLock.lock()
        if (0.005 < mapView.region.span.latitudeDelta / goldenRatio) {
            print("[DBG]latitudeDelta-1 : " + mapView.region.span.latitudeDelta.description)
            var regionSpan:MKCoordinateSpan = MKCoordinateSpan()
            regionSpan.latitudeDelta = mapView.region.span.latitudeDelta / goldenRatio
            mapView.region.span = regionSpan
            print("[DBG]latitudeDelta-2 : " + mapView.region.span.latitudeDelta.description)
        }
        myLock.unlock()
    }
    @IBAction func clickZoomout(_ sender: Any) {
        print("[DBG]clickZoomout")
        myLock.lock()
        if (mapView.region.span.latitudeDelta * goldenRatio < 150.0) {
            print("[DBG]latitudeDelta-1 : " + mapView.region.span.latitudeDelta.description)
            var regionSpan:MKCoordinateSpan = MKCoordinateSpan()
            regionSpan.latitudeDelta = mapView.region.span.latitudeDelta * goldenRatio
    //            regionSpan.latitudeDelta = mapView.region.span.longitudeDelta * GoldenRatio
            mapView.region.span = regionSpan
            print("[DBG]latitudeDelta-2 : " + mapView.region.span.latitudeDelta.description)
        }
        myLock.unlock()

    }
}
