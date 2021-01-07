//
//  SubViewController.swift
//  originalMap
//
//  Created by 佐川駿介 on 2020/10/29.
//

//import UIKit
//import MapKit
//import CoreLocation
//
//class SubMapAnnotationSetting: MKPointAnnotation {
//    // デフォルトだとピンにはタイトル・サブタイトルしかないので、設定を追加する
//    // 今回は画像だけカスタムにしたいので画像だけ追加
//    var pinImage: UIImage?
//}
//
//class SubViewController: UIViewController, CLLocationManagerDelegate {
//
//    var myLock = NSLock()  // この行を追加
//    let goldenRatio = 1.618  // この行を追加
//    
//    @IBOutlet var mapView : MKMapView!
//    var locManager : CLLocationManager!
//    
//            // とりあえずテストデータで画像・タイトル・サブタイトル・位置情報を用意
//            let pinImagges: [UIImage?] = [UIImage(named: "inu1"),UIImage(named: "inu2")]
//            let pinTitles: [String] = ["白いい犬","茶色い犬"]
//            let pinSubTiiles: [String] = ["比較的白いです","茶色いのが売りです"]
//            let pinlocations: [CLLocationCoordinate2D] = [CLLocationCoordinate2DMake(35.68, 139.56),CLLocationCoordinate2DMake(35.70, 139.56)]
//
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        locManager = CLLocationManager()
//        //この行の意味は？
//        locManager.delegate = self
//        locManager!.requestWhenInUseAuthorization()
//        
//        // 現在地に照準を合わす
//        // 0.01が距離の倍率
//        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
//        // mapView.userLocation.coordinateで現在地の情報が取得できる
//        let region = MKCoordinateRegion(center: mapView.userLocation.coordinate, span: span)
//        // ここで照準を合わせている
////        mapView.region = region
////これを入れると変になる
//        
//        
//        // 指定値にピンを立てる
//        // ピンを立てたい緯度・経度をセット
//        let coordinate = CLLocationCoordinate2DMake(35.45, 139.56)
//        // 今回は現在地とする
////        let coordinate = mapView.userLocation.coordinate
//        // ピンを生成
//        let pin = MKPointAnnotation()
//    // ピンのタイトル・サブタイトルをセット
//        pin.title = "タイトル"
//        pin.subtitle = "サブタイトル"
//        // ピンに一番上で作った位置情報をセット
//        pin.coordinate = coordinate
//        // mapにピンを表示する
//        mapView.addAnnotation(pin)
//        
//        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(recognizeLongPress(sender:)))
//                //MapViewにリスナーを登録
//                self.mapView.addGestureRecognizer(longPress)
//        
////        mapView.userTrackingMode = MKUserTrackingMode.follow
////        mapView.userTrackingMode = MKUserTrackingMode.followWithHeading
//   
//        // カスタムピンの表示
//            // for文で配列の値を回す(ここはいろんなやり方があると思います。)
//        for (index,pinTitle) in self.pinTitles.enumerated() {
//            // カスタムで作成したMapAnnotationSettingをセット(これで画像をセットできる)
//            let pin = MapAnnotationSetting()
//
//            // 用意したデータをセット
//            let coordinate = self.pinlocations[index]
//            pin.title = pinTitle
//            pin.subtitle = self.pinSubTiiles[index]
//            // 画像をセットできる
//            pin.pinImage = pinImagges[index]
//
//            // ピンを立てる
//            pin.coordinate = coordinate
//            self.mapView.addAnnotation(pin)
//        }
//    }
//
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//               // 自分の現在地は置き換えない(青いフワフワのマークのままにする)
//        if (annotation is MKUserLocation) {
//                return nil
//            }
//
//            let identifier = "pin"
//            var annotationView: MKAnnotationView!
//
//            if annotationView == nil {
//                annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: identifier)
//            }
//
//            // ピンにセットした画像をつける
//            if let pin = annotation as? MapAnnotationSetting {
//                if let pinImage = pin.pinImage {
//                    annotationView.image = pinImage
//                }
//            }
//            annotationView.annotation = annotation
//            // ピンをタップした時の吹き出しの表示
//            annotationView.canShowCallout = true
//
//            return annotationView
//    }
//
//
//       
//    
//    
//    
//    
//    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
//            switch status {
//            // 許可されてない場合
//            case .notDetermined:
//    // 許可を求める
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
//
//    
//    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
//            // タップされたピンの位置情報
//        print(view.annotation?.coordinate)
//            // タップされたピンのタイトルとサブタイトル
//            print(view.annotation?.title)
//            print(view.annotation?.subtitle)
//    }
//
//    @IBAction func clickZoomin(_ sender: Any) {
//        print("[DBG]clickZoomin")
//        myLock.lock()
//        if (0.005 < mapView.region.span.latitudeDelta / goldenRatio) {
//            print("[DBG]latitudeDelta-1 : " + mapView.region.span.latitudeDelta.description)
//            var regionSpan:MKCoordinateSpan = MKCoordinateSpan()
//            regionSpan.latitudeDelta = mapView.region.span.latitudeDelta / goldenRatio
//            mapView.region.span = regionSpan
//            print("[DBG]latitudeDelta-2 : " + mapView.region.span.latitudeDelta.description)
//        }
//        myLock.unlock()
//    }
//    
//    
//    @IBAction func clickZoomout(_ sender: Any) {
//        print("[DBG]clickZoomout")
//        myLock.lock()
//        if (mapView.region.span.latitudeDelta * goldenRatio < 150.0) {
//            print("[DBG]latitudeDelta-1 : " + mapView.region.span.latitudeDelta.description)
//            var regionSpan:MKCoordinateSpan = MKCoordinateSpan()
//            regionSpan.latitudeDelta = mapView.region.span.latitudeDelta * goldenRatio
//    //            regionSpan.latitudeDelta = mapView.region.span.longitudeDelta * GoldenRatio
//            mapView.region.span = regionSpan
//            print("[DBG]latitudeDelta-2 : " + mapView.region.span.latitudeDelta.description)
//        }
//        myLock.unlock()
//    }
//    
//    //ロングタップした時に呼ばれる関数
//    @objc func recognizeLongPress(sender: UILongPressGestureRecognizer) {
//        //長押し感知は最初の1回のみ
//        if sender.state != UIGestureRecognizer.State.began {
//            return
//        }
//
//        // 位置情報を取得
//        let location = sender.location(in: self.mapView)
//        let coordinate = self.mapView.convert(location, toCoordinateFrom: self.mapView)
//        // 出力
//        print(coordinate.latitude)
//        print(coordinate.longitude)
//        // タップした位置に照準を合わせる処理
//        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
//        let region = MKCoordinateRegion(center: coordinate, span: span)
//        self.mapView.region = region
//        // ピンを生成
//        let pin = MKPointAnnotation()
//        pin.title = "タイトル"
//        pin.subtitle = "サブタイトル"
//        // タップした位置情報に位置にピンを追加
//        pin.coordinate = coordinate
//        self.mapView.addAnnotation(pin)
//    }
//
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations:[CLLocation]) {
//        let longitude = (locations.last?.coordinate.longitude.description)!
//        let latitude = (locations.last?.coordinate.latitude.description)!
//
//        myLock.lock()  // この行を追加
//        mapView.setCenter((locations.last?.coordinate)!, animated: true)
//        myLock.unlock()  // この行を追加
//    }
//    
//}
//
