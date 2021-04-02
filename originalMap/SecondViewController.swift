//
//  SecondViewController.swift
//  originalMap
//
//  Created by 佐川駿介 on 2020/10/22.
//

import UIKit
import SwiftGifOrigin
import NCMB
import KRProgressHUD

class SecondViewController:UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    

    @IBOutlet var countLabel: UILabel!
    
    @IBOutlet var label : UILabel!
    @IBOutlet var pickerView: UIPickerView!
    // ドラムロールボタンの選択肢を配列にして格納
    let dataSource =  ["北海道", "青森県", "岩手県", "宮城県", "秋田県",
                       "山形県", "福島県", "茨城県", "栃木県", "群馬県",
                       "埼玉県", "千葉県", "東京都", "神奈川県","新潟県",
                       "富山県", "石川県", "福井県", "山梨県", "長野県",
                       "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県",
                       "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県",
                       "鳥取県", "島根県", "岡山県", "広島県", "山口県",
                       "徳島県", "香川県", "愛媛県", "高知県", "福岡県",
                       "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県",
                       "鹿児島県", "沖縄県"]
    
    
    @IBOutlet var gifImage : UIImageView!
    @IBOutlet var gifImage2 : UIImageView!
    @IBOutlet var gifImage3 : UIImageView!
    @IBOutlet var gifImage4 : UIImageView!
    @IBOutlet var gifImage5 : UIImageView!
    @IBOutlet var gifImage6 : UIImageView!
    @IBOutlet var gifImage7 : UIImageView!
    @IBOutlet var gifImage8 : UIImageView!
    @IBOutlet var gifImage9 : UIImageView!
    @IBOutlet var gifImage10 : UIImageView!
    @IBOutlet var gifImage11 : UIImageView!
    @IBOutlet var gifImage12 : UIImageView!
    @IBOutlet var gifImage13 : UIImageView!
    @IBOutlet var gifImage14 : UIImageView!
    @IBOutlet var gifImage15 : UIImageView!
    @IBOutlet var gifImage16 : UIImageView!
    @IBOutlet var gifImage17 : UIImageView!
    @IBOutlet var gifImage18 : UIImageView!
    @IBOutlet var gifImage19 : UIImageView!
    
    //    private var isLeft: Bool = true    //  キャラが左を向いているかどうかのフラグ
    private var isLeft: Bool = true {
        willSet(newValue) {
            // 新しい値がtrueだったら正しい方向に、falseだったら反転させる
            if newValue {
                gifImage.transform = CGAffineTransform(scaleX: 1 , y: 1)
            } else {
                gifImage.transform = CGAffineTransform(scaleX: -1 , y: 1)
            }
        }
    }
    private var isLeft2: Bool = true {
        willSet(newValue) {
            // 新しい値がtrueだったら正しい方向に、falseだったら反転させる
            if newValue {
                gifImage2.transform = CGAffineTransform(scaleX: 1 , y: 1)
            } else {
                gifImage2.transform = CGAffineTransform(scaleX: -1 , y: 1)
            }
        }
    }
    private var isLeft3: Bool = true {
        willSet(newValue) {
            // 新しい値がtrueだったら正しい方向に、falseだったら反転させる
            if newValue {
                gifImage3.transform = CGAffineTransform(scaleX: 1 , y: 1)
            } else {
                gifImage3.transform = CGAffineTransform(scaleX: -1 , y: 1)
            }
        }
    }
    private var isLeft4: Bool = true {
        willSet(newValue) {
            // 新しい値がtrueだったら正しい方向に、falseだったら反転させる
            if newValue {
                gifImage4.transform = CGAffineTransform(scaleX: 1 , y: 1)
            } else {
                gifImage4.transform = CGAffineTransform(scaleX: -1 , y: 1)
            }
        }
    }
    private var isLeft5: Bool = true {
        willSet(newValue) {
            // 新しい値がtrueだったら正しい方向に、falseだったら反転させる
            if newValue {
                gifImage5.transform = CGAffineTransform(scaleX: 1 , y: 1)
            } else {
                gifImage5.transform = CGAffineTransform(scaleX: -1 , y: 1)
            }
        }
    }
    private var isLeft6: Bool = true {
        willSet(newValue) {
            // 新しい値がtrueだったら正しい方向に、falseだったら反転させる
            if newValue {
                gifImage6.transform = CGAffineTransform(scaleX: 1 , y: 1)
            } else {
                gifImage6.transform = CGAffineTransform(scaleX: -1 , y: 1)
            }
        }
    }
    private var isLeft7: Bool = true {
        willSet(newValue) {
            // 新しい値がtrueだったら正しい方向に、falseだったら反転させる
            if newValue {
                gifImage7.transform = CGAffineTransform(scaleX: 1 , y: 1)
            } else {
                gifImage7.transform = CGAffineTransform(scaleX: -1 , y: 1)
            }
        }
    }
    private var isLeft8: Bool = true {
        willSet(newValue) {
            // 新しい値がtrueだったら正しい方向に、falseだったら反転させる
            if newValue {
                gifImage8.transform = CGAffineTransform(scaleX: 1 , y: 1)
            } else {
                gifImage8.transform = CGAffineTransform(scaleX: -1 , y: 1)
            }
        }
    }
    private var isLeft9: Bool = true {
        willSet(newValue) {
            // 新しい値がtrueだったら正しい方向に、falseだったら反転させる
            if newValue {
                gifImage9.transform = CGAffineTransform(scaleX: 1 , y: 1)
            } else {
                gifImage9.transform = CGAffineTransform(scaleX: -1 , y: 1)
            }
        }
    }
    private var isLeft10: Bool = true {
        willSet(newValue) {
            // 新しい値がtrueだったら正しい方向に、falseだったら反転させる
            if newValue {
                gifImage10.transform = CGAffineTransform(scaleX: 1 , y: 1)
            } else {
                gifImage10.transform = CGAffineTransform(scaleX: -1 , y: 1)
            }
        }
    }
    private var isLeft11: Bool = true {
        willSet(newValue) {
            // 新しい値がtrueだったら正しい方向に、falseだったら反転させる
            if newValue {
                gifImage11.transform = CGAffineTransform(scaleX: 1 , y: 1)
            } else {
                gifImage11.transform = CGAffineTransform(scaleX: -1 , y: 1)
            }
        }
    }
    private var isLeft12: Bool = true {
        willSet(newValue) {
            // 新しい値がtrueだったら正しい方向に、falseだったら反転させる
            if newValue {
                gifImage12.transform = CGAffineTransform(scaleX: 1 , y: 1)
            } else {
                gifImage12.transform = CGAffineTransform(scaleX: -1 , y: 1)
            }
        }
    }
    private var isLeft13: Bool = true {
        willSet(newValue) {
            // 新しい値がtrueだったら正しい方向に、falseだったら反転させる
            if newValue {
                gifImage13.transform = CGAffineTransform(scaleX: 1 , y: 1)
            } else {
                gifImage13.transform = CGAffineTransform(scaleX: -1 , y: 1)
            }
        }
    }
    private var isLeft14: Bool = true {
        willSet(newValue) {
            // 新しい値がtrueだったら正しい方向に、falseだったら反転させる
            if newValue {
                gifImage14.transform = CGAffineTransform(scaleX: 1 , y: 1)
            } else {
                gifImage14.transform = CGAffineTransform(scaleX: -1 , y: 1)
            }
        }
    }
    private var isLeft15: Bool = true {
        willSet(newValue) {
            // 新しい値がtrueだったら正しい方向に、falseだったら反転させる
            if newValue {
                gifImage15.transform = CGAffineTransform(scaleX: 1 , y: 1)
            } else {
                gifImage15.transform = CGAffineTransform(scaleX: -1 , y: 1)
            }
        }
    }
    
    private var timer = Timer()  // Timerの宣言
    private var timer2 = Timer()
    private var timer3 = Timer()
    private var timer4 = Timer()
    private var timer5 = Timer()
    private var timer6 = Timer()
    private var timer7 = Timer()
    private var timer8 = Timer()
    private var timer9 = Timer()
    private var timer10 = Timer()
    private var timer11 = Timer()
    private var timer12 = Timer()
    private var timer13 = Timer()
    private var timer14 = Timer()
    private var timer15 = Timer()
    
    
    var number: Int = 0
    
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.jpeg")!)
       
        loadData()
        
        print(String(self.number))
       
        
        button.frame = CGRect(x: 88, y: 212, width: 238, height: 40)  // 1
        button.center = self.view.center  // 2
        
        button.backgroundColor = .red  // 3
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)  // 4
 
        button.layer.borderWidth = 4  // 5
        button.layer.borderColor = UIColor(red: 0.9, green: 0.9, blue: 0.5, alpha:1.0).cgColor
        
  // 6
 
        button.layer.cornerRadius = 30  // 7
        
        button.layer.shadowOffset = CGSize(width: 3, height: 3 )  // 8
        button.layer.shadowOpacity = 0.5  // 9
        button.layer.shadowRadius = 10  // 10
        button.layer.shadowColor = UIColor.gray.cgColor  // 11
    
        label.layer.borderWidth = 4  // 5
        label.layer.borderColor = UIColor(red: 0.9, green: 0.9, blue: 0.5, alpha:1.0).cgColor
        label.layer.shadowOffset = CGSize(width: 3, height: 3 )  // 8
        label.layer.shadowOpacity = 0.5  // 9
        label.layer.shadowRadius = 10  // 10
        label.layer.shadowColor = UIColor.gray.cgColor  // 11

    }
    

    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    func pickerView(_ pickerView: UIPickerView,didSelectRow row: Int,inComponent component: Int) {
        label.text = dataSource[row]
    }
    
    //    @IBAction func save(){
    //        let object = NCMBObject(className: "Message")
    //        object?.setObject(label.text, forKey: "text")
    //        //saveではなくsaveinbackgroundの方が主流。非同期通信
    //        object?.saveInBackground({ (error) in
    //            if error != nil{
    //                print("エラー")
    //            }else{
    //                self.number = self.number + 1
    //                print(self.number)
    //                self.countLabel.text = String(self.number)
    //                print("サクセス")
    //                }
    //        })
    //    }
    
    
    
    
    @objc func move(_ timer: Timer) {
        // キャラ画像のframeを変数に格納
        var frame = gifImage.frame
        // 移動量を定義して変数に格納
        let moveX: CGFloat = 50.0
        // 画面の左端(x座標が0)に到達したら
        if frame.origin.x < 0 {
            // 右を向くことを表すためにフラグをfalseにする
            isLeft = false
            // 右を向いたら反転させる
            gifImage.transform = CGAffineTransform(scaleX: -1 , y: 1)
            // もしキャラのx座標が右端(画面の最大x座標 - imageViewのサイズ分)に到達したら
        } else if frame.origin.x > view.frame.maxX - gifImage.frame.width {
            // 左を向くことを表すためにフラグをtrueにする
            isLeft = true
            // 左を向いたら正しい方向にする
            gifImage.transform = CGAffineTransform(scaleX: 1 , y: 1)
        }
        // 左を向いていれば左に動かすためにx軸の値をマイナス、逆ならプラスする
        isLeft ? (frame.origin.x -= moveX) : (frame.origin.x += moveX)
        // imageViewのframeに代入
        gifImage.frame = frame
    }
    
    @IBAction func plus(){
        
        
        let query = NCMBQuery(className: "Message")
        query?.whereKey("userName", equalTo: UserDefaults.standard.object(forKey: "userName"))
        query?.findObjectsInBackground({ (result, error) in
            if error != nil{
                print(error)
            }else{
                print(result)
                let objects = result as! [NCMBObject]
                
                let object = objects[0]
                
                print(object)
                
                let todouhuken = object.object(forKey: "todouhuken") as! [String]
                print(todouhuken)
                if todouhuken.contains(self.label.text!) {
                    print("同じのがある")
                    //                    一致してるからアラート
                    let alert: UIAlertController = UIAlertController(title: "アラート", message: "その都道府県はすでに制覇済みです", preferredStyle:  UIAlertController.Style.alert)

                    
                    let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{
                         // ボタンが押された時の処理を書く（クロージャ実装）
                         (action: UIAlertAction!) -> Void in
                         print("OK")
                     })
                     alert.addAction(defaultAction)

                     // ④ Alertを表示
                    self.present(alert, animated: true, completion: nil)
                 
                    
                }else{
                    print("同じのがない")
                    //                    まだないからセーブ(下のやつ)
                    //                    if文で分岐してキャラクターを変更
                    object.addUniqueObject(self.label.text!, forKey: "todouhuken")
                    object.saveInBackground({ (error) in
                        if error != nil{
                            print(error)
                        }else{
                            print("サクセク")
                            self.number = self.number + 1
                            print(self.number)
                            self.countLabel.text = String(self.number)
                            
                            self.count2()
                            
                        }
                    })
                    
                }
                
                
            }
        })
        
    }
    
    @objc func move2(_ timer2: Timer) {
        var frame2 = gifImage2.frame
        let moveX: CGFloat = 50.0
        if frame2.origin.x < 0 {
            isLeft2 = false
            gifImage2.transform = CGAffineTransform(scaleX: -1 , y: 1)
        } else if frame2.origin.x > view.frame.maxX - gifImage2.frame.width {
            isLeft2 = true
            gifImage2.transform = CGAffineTransform(scaleX: 1 , y: 1)
        }
        isLeft2 ? (frame2.origin.x -= moveX) : (frame2.origin.x += moveX)
        gifImage2.frame = frame2
    }
    @objc func move3(_ timer3: Timer) {
        var frame3 = gifImage3.frame
        let moveX: CGFloat = 50.0
        if frame3.origin.x < 0 {
            isLeft3 = false
            gifImage3.transform = CGAffineTransform(scaleX: -1 , y: 1)
        } else if frame3.origin.x > view.frame.maxX - gifImage3.frame.width {
            isLeft3 = true
            gifImage3.transform = CGAffineTransform(scaleX: 1 , y: 1)
        }
        isLeft3 ? (frame3.origin.x -= moveX) : (frame3.origin.x += moveX)
        gifImage3.frame = frame3
    }
    @objc func move4(_ timer4: Timer) {
        var frame4 = gifImage4.frame
        let moveX: CGFloat = 50.0
        if frame4.origin.x < 0 {
            isLeft4 = false
            gifImage4.transform = CGAffineTransform(scaleX: -1 , y: 1)
        } else if frame4.origin.x > view.frame.maxX - gifImage4.frame.width {
            isLeft4 = true
            gifImage4.transform = CGAffineTransform(scaleX: 1 , y: 1)
        }
        isLeft4 ? (frame4.origin.x -= moveX) : (frame4.origin.x += moveX)
        gifImage4.frame = frame4
    }
    @objc func move5(_ timer5: Timer) {
        var frame5 = gifImage5.frame
        let moveX: CGFloat = 50.0
        if frame5.origin.x < 0 {
            isLeft5 = false
            gifImage5.transform = CGAffineTransform(scaleX: -1 , y: 1)
        } else if frame5.origin.x > view.frame.maxX - gifImage5.frame.width {
            isLeft5 = true
            gifImage5.transform = CGAffineTransform(scaleX: 1 , y: 1)
        }
        isLeft5 ? (frame5.origin.x -= moveX) : (frame5.origin.x += moveX)
        gifImage5.frame = frame5
    }
    @objc func move6(_ timer6: Timer) {
        var frame6 = gifImage6.frame
        let moveX: CGFloat = 50.0
        if frame6.origin.x < 0 {
            isLeft6 = false
            gifImage6.transform = CGAffineTransform(scaleX: -1 , y: 1)
        } else if frame6.origin.x > view.frame.maxX - gifImage6.frame.width {
            isLeft6 = true
            gifImage6.transform = CGAffineTransform(scaleX: 1 , y: 1)
        }
        isLeft6 ? (frame6.origin.x -= moveX) : (frame6.origin.x += moveX)
        gifImage6.frame = frame6
    }
    @objc func move7(_ timer7: Timer) {
        var frame7 = gifImage7.frame
        let moveX: CGFloat = 50.0
        if frame7.origin.x < 0 {
            isLeft7 = false
            gifImage7.transform = CGAffineTransform(scaleX: -1 , y: 1)
        } else if frame7.origin.x > view.frame.maxX - gifImage7.frame.width {
            isLeft7 = true
            gifImage7.transform = CGAffineTransform(scaleX: 1 , y: 1)
        }
        isLeft7 ? (frame7.origin.x -= moveX) : (frame7.origin.x += moveX)
        gifImage7.frame = frame7
    }
    @objc func move8(_ timer8: Timer) {
        var frame8 = gifImage8.frame
        let moveX: CGFloat = 50.0
        if frame8.origin.x < 0 {
            isLeft8 = false
            gifImage8.transform = CGAffineTransform(scaleX: -1 , y: 1)
        } else if frame8.origin.x > view.frame.maxX - gifImage8.frame.width {
            isLeft8 = true
            gifImage8.transform = CGAffineTransform(scaleX: 1 , y: 1)
        }
        isLeft8 ? (frame8.origin.x -= moveX) : (frame8.origin.x += moveX)
        gifImage8.frame = frame8
    }
    @objc func move9(_ timer9: Timer) {
        var frame9 = gifImage9.frame
        let moveX: CGFloat = 50.0
        if frame9.origin.x < 0 {
            isLeft9 = false
            gifImage9.transform = CGAffineTransform(scaleX: -1 , y: 1)
        } else if frame9.origin.x > view.frame.maxX - gifImage9.frame.width {
            isLeft9 = true
            gifImage9.transform = CGAffineTransform(scaleX: 1 , y: 1)
        }
        isLeft9 ? (frame9.origin.x -= moveX) : (frame9.origin.x += moveX)
        gifImage9.frame = frame9
    }
    @objc func move10(_ timer10: Timer) {
        var frame10 = gifImage10.frame
        let moveX: CGFloat = 50.0
        if frame10.origin.x < 0 {
            isLeft10 = false
            gifImage10.transform = CGAffineTransform(scaleX: -1 , y: 1)
        } else if frame10.origin.x > view.frame.maxX - gifImage10.frame.width {
            isLeft10 = true
            gifImage10.transform = CGAffineTransform(scaleX: 1 , y: 1)
        }
        isLeft10 ? (frame10.origin.x -= moveX) : (frame10.origin.x += moveX)
        gifImage10.frame = frame10
    }
    @objc func move11(_ timer11: Timer) {
        var frame11 = gifImage11.frame
        let moveX: CGFloat = 50.0
        if frame11.origin.x < 0 {
            isLeft11 = false
            gifImage11.transform = CGAffineTransform(scaleX: -1 , y: 1)
        } else if frame11.origin.x > view.frame.maxX - gifImage11.frame.width {
            isLeft11 = true
            gifImage11.transform = CGAffineTransform(scaleX: 1 , y: 1)
        }
        isLeft11 ? (frame11.origin.x -= moveX) : (frame11.origin.x += moveX)
        gifImage11.frame = frame11
    }
    @objc func move12(_ timer12: Timer) {
        var frame12 = gifImage12.frame
        let moveX: CGFloat = 50.0
        if frame12.origin.x < 0 {
            isLeft12 = false
            gifImage12.transform = CGAffineTransform(scaleX: -1 , y: 1)
        } else if frame12.origin.x > view.frame.maxX - gifImage12.frame.width {
            isLeft12 = true
            gifImage12.transform = CGAffineTransform(scaleX: 1 , y: 1)
        }
        isLeft12 ? (frame12.origin.x -= moveX) : (frame12.origin.x += moveX)
        gifImage12.frame = frame12
    }
    @objc func move13(_ timer13: Timer) {
        var frame13 = gifImage13.frame
        let moveX: CGFloat = 50.0
        if frame13.origin.x < 0 {
            isLeft13 = false
            gifImage13.transform = CGAffineTransform(scaleX: -1 , y: 1)
        } else if frame13.origin.x > view.frame.maxX - gifImage13.frame.width {
            isLeft13 = true
            gifImage13.transform = CGAffineTransform(scaleX: 1 , y: 1)
        }
        isLeft13 ? (frame13.origin.x -= moveX) : (frame13.origin.x += moveX)
        gifImage13.frame = frame13
    }
    @objc func move14(_ timer14: Timer) {
        var frame14 = gifImage14.frame
        let moveX: CGFloat = 50.0
        if frame14.origin.x < 0 {
            isLeft14 = false
            gifImage14.transform = CGAffineTransform(scaleX: -1 , y: 1)
        } else if frame14.origin.x > view.frame.maxX - gifImage14.frame.width {
            isLeft14 = true
            gifImage4.transform = CGAffineTransform(scaleX: 1 , y: 1)
        }
        isLeft14 ? (frame14.origin.x -= moveX) : (frame14.origin.x += moveX)
        gifImage14.frame = frame14
    }
    @objc func move15(_ timer15: Timer) {
        var frame15 = gifImage15.frame
        let moveX: CGFloat = 50.0
        if frame15.origin.x < 0 {
            isLeft15 = false
            gifImage15.transform = CGAffineTransform(scaleX: -1 , y: 1)
        } else if frame15.origin.x > view.frame.maxX - gifImage15.frame.width {
            isLeft15 = true
            gifImage15.transform = CGAffineTransform(scaleX: 1 , y: 1)
        }
        isLeft15 ? (frame15.origin.x -= moveX) : (frame15.origin.x += moveX)
        gifImage15.frame = frame15
    }
    
    func loadData(){
        KRProgressHUD.show()
        let query = NCMBQuery(className: "Message")
        query?.whereKey("userName", equalTo: UserDefaults.standard.object(forKey: "userName"))
        query?.findObjectsInBackground({ (result, error) in
            if error != nil{
                print(error)
            }else{
                print(result)
                
                let datas = result as! [NCMBObject]
                let data = datas[0]
                let count = data.object(forKey: "todouhuken") as! [String]
                self.number = count.count
                print(count.count)
                self.countLabel.text =  String(self.number)
                KRProgressHUD.dismiss()
                print(self.number)
                
                self.count()
            }
        })
    }
    var num: Int = 0
    
    func count(){
        let query = NCMBQuery(className: "Message")
        query?.whereKey("userName", equalTo: UserDefaults.standard.object(forKey: "userName"))
        query?.findObjectsInBackground({ (result, error) in
            if error != nil{
                print(error)
            }else{
                print(result)
                
                let datas = result as! [NCMBObject]
                let data = datas[0]
                let count = data.object(forKey: "todouhuken") as! [String]
                
                for i in count{
                    
                    self.num = self.num + 1
                    print(self.num)
//                    switch self.number{
                    
                    switch self.num{

                    case 1:
                        //loadGifメソッドを追記し、引数としてGIFファイル名を与える
                        self.gifImage.loadGif(name: "walk")
                        self.gifImage.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage.topAnchor.constraint(equalTo: self.gifImage18.bottomAnchor, constant: 66).isActive = true
                        self.gifImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
                        
                        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.move(_:)), userInfo: nil, repeats: true)
                        self.timer.fire()
                        
                    case 2:
                        self.gifImage2.loadGif(name: "walk2")
                        self.gifImage2.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage2.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage2.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 83).isActive = true
                        self.gifImage2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
                        self.timer2 = Timer.scheduledTimer(timeInterval: 1.1, target: self, selector: #selector(self.move2(_:)), userInfo: nil, repeats: true)
                        self.timer2.fire()
                    case 3:
                        self.gifImage3.loadGif(name: "walk3")
                        self.gifImage3.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage3.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage3.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage3.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 8).isActive = true
                        self.gifImage3.leadingAnchor.constraint(equalTo: self.gifImage11.trailingAnchor, constant: 21).isActive = true
                        self.timer3 = Timer.scheduledTimer(timeInterval: 1.2, target: self, selector: #selector(self.move3(_:)), userInfo: nil, repeats: true)
                        self.timer3.fire()
                    case 4:
                        self.gifImage4.loadGif(name: "walk4")
                        self.gifImage4.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage4.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage4.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage4.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 29).isActive = true
                        self.gifImage4.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 69).isActive = true
                        self.timer4 = Timer.scheduledTimer(timeInterval: 1.3, target: self, selector: #selector(self.move4(_:)), userInfo: nil, repeats: true)
                        self.timer4.fire()
                    case 5:
                        self.gifImage5.loadGif(name: "walk5")
                        self.gifImage5.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage5.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage5.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage5.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 120).isActive = true
                        self.gifImage5.leadingAnchor.constraint(equalTo: self.gifImage2.trailingAnchor, constant: 56).isActive = true
                        self.timer5 = Timer.scheduledTimer(timeInterval: 14, target: self, selector: #selector(self.move5(_:)), userInfo: nil, repeats: true)
                        self.timer5.fire()
                    case 6:
                        self.gifImage6.loadGif(name: "walk6")
                        self.gifImage6.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage6.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage6.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage6.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 17).isActive = true
                        self.gifImage6.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 60).isActive = true
                        self.timer6 = Timer.scheduledTimer(timeInterval: 1.45, target: self, selector: #selector(self.move6(_:)), userInfo: nil, repeats: true)
                        self.timer6.fire()
                    case 7:
                        self.gifImage7.loadGif(name: "walk7")
                        self.gifImage7.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage7.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage7.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage7.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 68).isActive = true
                        self.gifImage7.leadingAnchor.constraint(equalTo: self.gifImage5.leadingAnchor, constant: 21).isActive = true
                        self.timer7 = Timer.scheduledTimer(timeInterval: 1.35, target: self, selector: #selector(self.move7(_:)), userInfo: nil, repeats: true)
                        self.timer7.fire()
                    case 8:
                        self.gifImage8.loadGif(name: "walk8")
                        self.gifImage8.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage8.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage8.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage8.topAnchor.constraint(equalTo: self.gifImage12.bottomAnchor, constant: 21).isActive = true
                        self.gifImage8.leadingAnchor.constraint(equalTo: self.gifImage11.leadingAnchor, constant: 45).isActive = true
                        self.timer8 = Timer.scheduledTimer(timeInterval: 1.25, target: self, selector: #selector(self.move8(_:)), userInfo: nil, repeats: true)
                        self.timer8.fire()
                    case 9:
                        self.gifImage9.loadGif(name: "walk9")
                        self.gifImage9.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage9.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage9.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage9.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 58).isActive = true
                        self.gifImage9.leadingAnchor.constraint(equalTo: self.gifImage4.leadingAnchor, constant: 8).isActive = true
                        self.timer9 = Timer.scheduledTimer(timeInterval: 1.15, target: self, selector: #selector(self.move9(_:)), userInfo: nil, repeats: true)
                        self.timer9.fire()
                    case 10:
                        self.gifImage11.loadGif(name: "walk10")
                        self.gifImage11.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage11.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.251).isActive = true
                        self.gifImage11.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.211).isActive = true
                        self.gifImage11.leadingAnchor.constraint(equalTo: self.gifImage14.trailingAnchor, constant: 36).isActive = true
                        self.gifImage11.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 8).isActive = true
                        self.gifImage.removeFromSuperview()
                        self.gifImage2.removeFromSuperview()
                        self.gifImage3.removeFromSuperview()
                        self.gifImage4.removeFromSuperview()
                        self.gifImage5.removeFromSuperview()
                        self.gifImage6.removeFromSuperview()
                        self.gifImage7.removeFromSuperview()
                        self.gifImage8.removeFromSuperview()
                        self.gifImage9.removeFromSuperview()
                        self.timer11 = Timer.scheduledTimer(timeInterval: 1.05, target: self, selector: #selector(self.move11(_:)), userInfo: nil, repeats: true)
                        self.timer11.fire()
                    case 11:
                        self.timer.invalidate()
                        self.view.addSubview(self.gifImage)
                        self.gifImage.loadGif(name: "walk.b")
                        self.gifImage.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage.topAnchor.constraint(equalTo: self.gifImage18.bottomAnchor, constant: 66).isActive = true
                        self.gifImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
                        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.move(_:)), userInfo: nil, repeats: true)
                        self.timer.fire()
                    case 12:
                        self.timer2.invalidate()
                        self.view.addSubview(self.gifImage2)
                        self.gifImage2.loadGif(name: "walk.b2")
                        self.gifImage2.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage2.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage2.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 83).isActive = true
                        self.gifImage2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
                        self.timer2 = Timer.scheduledTimer(timeInterval: 1.1, target: self, selector: #selector(self.move2(_:)), userInfo: nil, repeats: true)
                        self.timer2.fire()
                    case 13:
                        self.timer3.invalidate()
                        self.view.addSubview(self.gifImage3)
                        self.gifImage3.loadGif(name: "walk.b3")
                        self.gifImage3.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage3.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage3.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage3.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 8).isActive = true
                        self.gifImage3.leadingAnchor.constraint(equalTo: self.gifImage11.trailingAnchor, constant: 21).isActive = true
                        self.timer3 = Timer.scheduledTimer(timeInterval: 1.2, target: self, selector: #selector(self.move3(_:)), userInfo: nil, repeats: true)
                        self.timer3.fire()
                    case 14:
                        self.timer4.invalidate()
                        self.view.addSubview(self.gifImage4)
                        self.gifImage4.loadGif(name: "walk.b4")
                        self.gifImage4.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage4.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage4.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage4.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 29).isActive = true
                        self.gifImage4.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 69).isActive = true
                        self.timer4 = Timer.scheduledTimer(timeInterval: 1.3, target: self, selector: #selector(self.move4(_:)), userInfo: nil, repeats: true)
                        self.timer4.fire()
                    case 15:
                        self.timer4.fire()
                        self.timer5.invalidate()
                        self.view.addSubview(self.gifImage5)
                        self.gifImage5.loadGif(name: "walk.b5")
                        self.gifImage5.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage5.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage5.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage5.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 120).isActive = true
                        self.gifImage5.leadingAnchor.constraint(equalTo: self.gifImage2.trailingAnchor, constant: 56).isActive = true
                        self.timer5 = Timer.scheduledTimer(timeInterval: 1.4, target: self, selector: #selector(self.move5(_:)), userInfo: nil, repeats: true)
                        self.timer5.fire()
                    case 16:
                        self.timer6.invalidate()
                        self.view.addSubview(self.gifImage6)
                        self.gifImage6.loadGif(name: "walk.b6")
                        self.gifImage6.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage6.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage6.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage6.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 17).isActive = true
                        self.gifImage6.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 60).isActive = true
                        self.timer6 = Timer.scheduledTimer(timeInterval: 1.45, target: self, selector: #selector(self.move6(_:)), userInfo: nil, repeats: true)
                        self.timer6.fire()
                    case 17:
                        self.timer7.invalidate()
                        self.view.addSubview(self.gifImage7)
                        self.gifImage7.loadGif(name: "walk.b7")
                        self.gifImage7.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage7.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage7.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage7.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 68).isActive = true
                        self.gifImage7.leadingAnchor.constraint(equalTo: self.gifImage5.leadingAnchor, constant: 21).isActive = true
                        self.timer7 = Timer.scheduledTimer(timeInterval: 1.35, target: self, selector: #selector(self.move7(_:)), userInfo: nil, repeats: true)
                        self.timer7.fire()
                    case 18:
                        self.timer8.invalidate()
                        self.view.addSubview(self.gifImage8)
                        self.gifImage8.loadGif(name: "walk.b8")
                        self.gifImage8.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage8.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage8.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage8.topAnchor.constraint(equalTo: self.gifImage12.bottomAnchor, constant: 21).isActive = true
                        self.gifImage8.leadingAnchor.constraint(equalTo: self.gifImage11.leadingAnchor, constant: 45).isActive = true
                        self.timer8 = Timer.scheduledTimer(timeInterval: 1.25, target: self, selector: #selector(self.move8(_:)), userInfo: nil, repeats: true)
                        self.timer8.fire()
                    case 19:
                        self.timer9.invalidate()
                        self.view.addSubview(self.gifImage9)
                        self.gifImage9.loadGif(name: "walk.b9")
                        self.gifImage9.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage9.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage9.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage9.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 58).isActive = true
                        self.gifImage9.leadingAnchor.constraint(equalTo: self.gifImage4.leadingAnchor, constant: 8).isActive = true
                        self.timer9 = Timer.scheduledTimer(timeInterval: 1.15, target: self, selector: #selector(self.move9(_:)), userInfo: nil, repeats: true)
                        self.timer9.fire()
                    case 20:
                        self.timer10.invalidate()
                        self.gifImage12.loadGif(name: "walk.b10")
                        self.gifImage12.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage12.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.251).isActive = true
                        self.gifImage12.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.211).isActive = true
                        self.gifImage12.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 16).isActive = true
                        self.gifImage12.topAnchor.constraint(equalTo: self.gifImage19.bottomAnchor, constant: 58).isActive = true
                        self.gifImage.removeFromSuperview()
                        self.gifImage2.removeFromSuperview()
                        self.gifImage3.removeFromSuperview()
                        self.gifImage4.removeFromSuperview()
                        self.gifImage5.removeFromSuperview()
                        self.gifImage6.removeFromSuperview()
                        self.gifImage7.removeFromSuperview()
                        self.gifImage8.removeFromSuperview()
                        self.gifImage9.removeFromSuperview()
                        self.timer12 = Timer.scheduledTimer(timeInterval: 1.15, target: self, selector: #selector(self.move12(_:)), userInfo: nil, repeats: true)
                        self.timer12.fire()
                    case 21:
                        self.timer.invalidate()
                        self.view.addSubview(self.gifImage)
                        self.gifImage.loadGif(name: "walk.m")
                        self.gifImage.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage.topAnchor.constraint(equalTo: self.gifImage18.bottomAnchor, constant: 66).isActive = true
                        self.gifImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
                        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.move(_:)), userInfo: nil, repeats: true)
                        self.timer.fire()
                    case 22:
                        self.timer2.invalidate()
                        self.view.addSubview(self.gifImage2)
                        self.gifImage2.loadGif(name: "walk.m2")
                        self.gifImage2.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage2.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage2.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 83).isActive = true
                        self.gifImage2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
                        self.gifImage2.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage2.widthAnchor.constraint(equalToConstant: 60).isActive = true
                        self.gifImage2.heightAnchor.constraint(equalToConstant: 90).isActive = true
                        self.timer2 = Timer.scheduledTimer(timeInterval: 1.1, target: self, selector: #selector(self.move2(_:)), userInfo: nil, repeats: true)
                        self.timer2.fire()
                    case 23:
                        self.timer3.invalidate()
                        self.view.addSubview(self.gifImage3)
                        self.gifImage3.loadGif(name: "walk.m3")
                        self.gifImage3.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage3.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage3.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage3.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 8).isActive = true
                        self.gifImage3.leadingAnchor.constraint(equalTo: self.gifImage11.trailingAnchor, constant: 21).isActive = true
                        self.timer3 = Timer.scheduledTimer(timeInterval: 1.2, target: self, selector: #selector(self.move3(_:)), userInfo: nil, repeats: true)
                        self.timer3.fire()
                    case 24:
                        self.timer4.invalidate()
                        self.view.addSubview(self.gifImage4)
                        self.gifImage4.loadGif(name: "walk.m4")
                        self.gifImage4.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage4.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage4.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage4.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 29).isActive = true
                        self.gifImage4.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 69).isActive = true
                        self.timer4 = Timer.scheduledTimer(timeInterval: 1.3, target: self, selector: #selector(self.move4(_:)), userInfo: nil, repeats: true)
                        self.timer4.fire()
                    case 25:
                        self.timer5.invalidate()
                        self.view.addSubview(self.gifImage5)
                        self.gifImage5.loadGif(name: "walk.m5")
                        self.gifImage5.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage5.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage5.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage5.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 120).isActive = true
                        self.gifImage5.leadingAnchor.constraint(equalTo: self.gifImage2.trailingAnchor, constant: 56).isActive = true
                        self.timer5 = Timer.scheduledTimer(timeInterval: 1.4, target: self, selector: #selector(self.move5(_:)), userInfo: nil, repeats: true)
                        self.timer5.fire()
                    case 26:
                        self.timer6.invalidate()
                        self.view.addSubview(self.gifImage6)
                        self.gifImage6.loadGif(name: "walk.m6")
                        self.gifImage6.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage6.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage6.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage6.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 17).isActive = true
                        self.gifImage6.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 60).isActive = true
                        self.timer6 = Timer.scheduledTimer(timeInterval: 1.45, target: self, selector: #selector(self.move6(_:)), userInfo: nil, repeats: true)
                        self.timer6.fire()
                    case 27:
                        self.timer7.invalidate()
                        self.view.addSubview(self.gifImage7)
                        self.gifImage7.loadGif(name: "walk.m7")
                        self.gifImage7.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage7.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage7.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage7.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 68).isActive = true
                        self.gifImage7.leadingAnchor.constraint(equalTo: self.gifImage5.leadingAnchor, constant: 21).isActive = true
                        self.timer7 = Timer.scheduledTimer(timeInterval: 1.35, target: self, selector: #selector(self.move7(_:)), userInfo: nil, repeats: true)
                        self.timer7.fire()
                    case 28:
                        self.timer8.invalidate()
                        self.view.addSubview(self.gifImage8)
                        self.gifImage8.loadGif(name: "walk.m8")
                        self.gifImage8.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage8.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage8.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage8.topAnchor.constraint(equalTo: self.gifImage12.bottomAnchor, constant: 21).isActive = true
                        self.gifImage8.leadingAnchor.constraint(equalTo: self.gifImage11.leadingAnchor, constant: 45).isActive = true
                        self.timer8 = Timer.scheduledTimer(timeInterval: 1.25, target: self, selector: #selector(self.move8(_:)), userInfo: nil, repeats: true)
                        self.timer8.fire()
                    case 29:
                        self.timer9.invalidate()
                        self.view.addSubview(self.gifImage9)
                        self.gifImage9.loadGif(name: "walk.m9")
                        self.gifImage9.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage9.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage9.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage9.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 58).isActive = true
                        self.gifImage9.leadingAnchor.constraint(equalTo: self.gifImage4.leadingAnchor, constant: 8).isActive = true
                        self.timer9 = Timer.scheduledTimer(timeInterval: 1.15, target: self, selector: #selector(self.move9(_:)), userInfo: nil, repeats: true)
                        self.timer9.fire()
                    case 30:
                        self.timer10.invalidate()
                        self.gifImage13.loadGif(name: "walk.m10")
                        self.gifImage13.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage13.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.251).isActive = true
                        self.gifImage13.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.211).isActive = true
                        self.gifImage13.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -59).isActive = true
                        self.gifImage13.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 71).isActive = true
                        self.gifImage.removeFromSuperview()
                        self.gifImage2.removeFromSuperview()
                        self.gifImage3.removeFromSuperview()
                        self.gifImage4.removeFromSuperview()
                        self.gifImage5.removeFromSuperview()
                        self.gifImage6.removeFromSuperview()
                        self.gifImage7.removeFromSuperview()
                        self.gifImage8.removeFromSuperview()
                        self.gifImage9.removeFromSuperview()
                        self.timer13 = Timer.scheduledTimer(timeInterval: 1.25, target: self, selector: #selector(self.move13(_:)), userInfo: nil, repeats: true)
                        self.timer13.fire()
                    case 31:
                        self.timer.invalidate()
                        self.view.addSubview(self.gifImage)
                        self.gifImage.loadGif(name: "walk.n")
                        self.gifImage.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage.topAnchor.constraint(equalTo: self.gifImage18.bottomAnchor, constant: 66).isActive = true
                        self.gifImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
                        self.timer = Timer.scheduledTimer(timeInterval: 1.1, target: self, selector: #selector(self.move(_:)), userInfo: nil, repeats: true)

                        self.timer.fire()
                    case 32:
                        self.timer2.invalidate()
                        self.view.addSubview(self.gifImage2)
                        self.gifImage2.loadGif(name: "walk.n2")
                        self.gifImage2.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage2.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage2.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 83).isActive = true
                        self.gifImage2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
                        self.timer2 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.move2(_:)), userInfo: nil, repeats: true)
                        self.timer2.fire()
                    case 33:
                        self.timer3.invalidate()
                        self.view.addSubview(self.gifImage3)
                        self.gifImage3.loadGif(name: "walk.n3")
                        self.gifImage3.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage3.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage3.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage3.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 8).isActive = true
                        self.gifImage3.leadingAnchor.constraint(equalTo: self.gifImage11.trailingAnchor, constant: 21).isActive = true
                        self.timer3 = Timer.scheduledTimer(timeInterval: 1.2, target: self, selector: #selector(self.move3(_:)), userInfo: nil, repeats: true)
                        self.timer3.fire()
                    case 34:
                        self.timer4.invalidate()
                        self.view.addSubview(self.gifImage4)
                        self.gifImage4.loadGif(name: "walk.n4")
                        self.gifImage4.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage4.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage4.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage4.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 29).isActive = true
                        self.gifImage4.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 69).isActive = true
                        self.timer4 = Timer.scheduledTimer(timeInterval: 1.3, target: self, selector: #selector(self.move4(_:)), userInfo: nil, repeats: true)
                        self.timer4.fire()
                    case 35:
                        self.timer5.invalidate()
                        self.view.addSubview(self.gifImage5)
                        self.gifImage5.loadGif(name: "walk.n5")
                        self.gifImage5.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage5.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage5.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage5.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 120).isActive = true
                        self.gifImage5.leadingAnchor.constraint(equalTo: self.gifImage2.trailingAnchor, constant: 56).isActive = true
                        self.timer5 = Timer.scheduledTimer(timeInterval: 1.4, target: self, selector: #selector(self.move5(_:)), userInfo: nil, repeats: true)
                        self.timer5.fire()
                    case 36:
                        self.timer6.invalidate()
                        self.view.addSubview(self.gifImage6)
                        self.gifImage6.loadGif(name: "walk.n6")
                        self.gifImage6.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage6.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage6.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage6.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 17).isActive = true
                        self.gifImage6.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 60).isActive = true
                        self.timer6 = Timer.scheduledTimer(timeInterval: 1.45, target: self, selector: #selector(self.move6(_:)), userInfo: nil, repeats: true)
                        self.timer6.fire()
                    case 37:
                        self.timer7.invalidate()
                        self.view.addSubview(self.gifImage7)
                        self.gifImage7.loadGif(name: "walk.n7")
                        self.gifImage7.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage7.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage7.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage7.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 68).isActive = true
                        self.gifImage7.leadingAnchor.constraint(equalTo: self.gifImage5.leadingAnchor, constant: 21).isActive = true
                        self.timer7 = Timer.scheduledTimer(timeInterval: 1.35, target: self, selector: #selector(self.move7(_:)), userInfo: nil, repeats: true)
                        self.timer7.fire()
                    case 38:
                        self.timer8.invalidate()
                        self.view.addSubview(self.gifImage8)
                        self.gifImage8.loadGif(name: "walk.n8")
                        self.gifImage8.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage8.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage8.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage8.topAnchor.constraint(equalTo: self.gifImage12.bottomAnchor, constant: 21).isActive = true
                        self.gifImage8.leadingAnchor.constraint(equalTo: self.gifImage11.leadingAnchor, constant: 45).isActive = true
                        self.timer8 = Timer.scheduledTimer(timeInterval: 1.25, target: self, selector: #selector(self.move8(_:)), userInfo: nil, repeats: true)
                        self.timer8.fire()
                    case 39:
                        self.timer9.invalidate()
                        self.view.addSubview(self.gifImage9)
                        self.gifImage9.loadGif(name: "walk.n9")
                        self.gifImage9.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage9.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage9.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage9.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 58).isActive = true
                        self.gifImage9.leadingAnchor.constraint(equalTo: self.gifImage4.leadingAnchor, constant: 8).isActive = true
                        self.timer9 = Timer.scheduledTimer(timeInterval: 1.15, target: self, selector: #selector(self.move9(_:)), userInfo: nil, repeats: true)
                        self.timer9.fire()
                    case 40:
                        self.timer10.invalidate()
                        self.gifImage14.loadGif(name: "walk.n10")
                        self.gifImage14.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage14.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.251).isActive = true
                        self.gifImage14.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.211).isActive = true
                        self.gifImage14.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 26).isActive = true
                        self.gifImage14.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
                        self.gifImage.removeFromSuperview()
                        self.gifImage2.removeFromSuperview()
                        self.gifImage3.removeFromSuperview()
                        self.gifImage4.removeFromSuperview()
                        self.gifImage5.removeFromSuperview()
                        self.gifImage6.removeFromSuperview()
                        self.gifImage7.removeFromSuperview()
                        self.gifImage8.removeFromSuperview()
                        self.gifImage9.removeFromSuperview()
                        self.timer14 = Timer.scheduledTimer(timeInterval: 1.05, target: self, selector: #selector(self.move14(_:)), userInfo: nil, repeats: true)
                        self.timer14.fire()
                    case 41:
                        self.timer.invalidate()
                        self.view.addSubview(self.gifImage)
                        self.gifImage.loadGif(name: "walk.blue")
                        self.gifImage.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage.topAnchor.constraint(equalTo: self.gifImage18.bottomAnchor, constant: 66).isActive = true
                        self.gifImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
                        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.move(_:)), userInfo: nil, repeats: true)
                        self.timer.fire()
                    case 42:
                        self.timer2.invalidate()
                        self.view.addSubview(self.gifImage2)
                        self.gifImage2.loadGif(name: "walk.blue2")
                        self.gifImage2.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage2.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage2.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 83).isActive = true
                        self.gifImage2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
                        self.timer2 = Timer.scheduledTimer(timeInterval: 1.1, target: self, selector: #selector(self.move2(_:)), userInfo: nil, repeats: true)
                        self.timer2.fire()
                    case 43:
                        self.timer3.invalidate()
                        self.view.addSubview(self.gifImage3)
                        self.gifImage3.loadGif(name: "walk.blue3")
                        self.gifImage3.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage3.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage3.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage3.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 8).isActive = true
                        self.gifImage3.leadingAnchor.constraint(equalTo: self.gifImage11.trailingAnchor, constant: 21).isActive = true
                        self.timer3 = Timer.scheduledTimer(timeInterval: 1.2, target: self, selector: #selector(self.move3(_:)), userInfo: nil, repeats: true)
                        self.timer3.fire()
                    case 44:
                        self.timer4.invalidate()
                        self.view.addSubview(self.gifImage4)
                        self.gifImage4.loadGif(name: "walk.blue4")
                        self.gifImage4.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage4.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage4.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage4.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 29).isActive = true
                        self.gifImage4.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 69).isActive = true
                        self.timer4 = Timer.scheduledTimer(timeInterval: 1.3, target: self, selector: #selector(self.move4(_:)), userInfo: nil, repeats: true)
                        self.timer4.fire()
                    case 45:
                        self.timer5.invalidate()
                        self.view.addSubview(self.gifImage5)
                        self.gifImage5.loadGif(name: "walk.blue5")
                        self.gifImage5.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage5.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage5.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage5.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 120).isActive = true
                        self.gifImage5.leadingAnchor.constraint(equalTo: self.gifImage2.trailingAnchor, constant: 56).isActive = true
                        self.timer5 = Timer.scheduledTimer(timeInterval: 1.35, target: self, selector: #selector(self.move5(_:)), userInfo: nil, repeats: true)
                        self.timer5.fire()
                    case 46:
                        self.timer6.invalidate()
                        self.view.addSubview(self.gifImage6)
                        self.gifImage6.loadGif(name: "walk.blue6")
                        self.gifImage6.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage6.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
                        self.gifImage6.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
                        self.gifImage6.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 17).isActive = true
                        self.gifImage6.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 60).isActive = true
                        self.timer6 = Timer.scheduledTimer(timeInterval: 1.25, target: self, selector: #selector(self.move6(_:)), userInfo: nil, repeats: true)
                        self.timer6.fire()
                    case 47:
                        self.timer15.invalidate()
                        self.gifImage.removeFromSuperview()
                        self.gifImage2.removeFromSuperview()
                        self.gifImage3.removeFromSuperview()
                        self.gifImage4.removeFromSuperview()
                        self.gifImage5.removeFromSuperview()
                        self.gifImage6.removeFromSuperview()
                        self.gifImage11.removeFromSuperview()
                        self.gifImage12.removeFromSuperview()
                        self.gifImage13.removeFromSuperview()
                        self.gifImage14.removeFromSuperview()
                        self.gifImage15.loadGif(name: "walk.blue7")
                        self.gifImage15.translatesAutoresizingMaskIntoConstraints = false
                        self.gifImage15.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.251).isActive = true
                        self.gifImage15.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.211).isActive = true
                        self.gifImage15.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
                        self.gifImage15.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 60).isActive = true
                        self.timer15 = Timer.scheduledTimer(timeInterval: 1.15, target: self, selector: #selector(self.move15(_:)), userInfo: nil, repeats: true)
                        self.timer15.fire()
                        self.gifImage16.loadGif(name: "walk")
                        self.gifImage17.loadGif(name: "walk.b")
                        self.gifImage18.loadGif(name: "walk.m")
                        self.gifImage19.loadGif(name: "walk.n")
                    default:break
                    }
                }
            }
        })
            
        
    }
    
    func count2(){
        switch self.number{
        
        case 1:
            //loadGifメソッドを追記し、引数としてGIFファイル名を与える
            self.gifImage.loadGif(name: "walk")
            self.gifImage.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage.topAnchor.constraint(equalTo: self.gifImage18.bottomAnchor, constant: 66).isActive = true
            self.gifImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.move(_:)), userInfo: nil, repeats: true)
            self.timer.fire()
        case 2:
            self.gifImage2.loadGif(name: "walk2")
            self.gifImage2.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage2.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage2.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 83).isActive = true
            self.gifImage2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            self.timer2 = Timer.scheduledTimer(timeInterval: 1.1, target: self, selector: #selector(self.move2(_:)), userInfo: nil, repeats: true)
            self.timer2.fire()
        case 3:
            self.gifImage3.loadGif(name: "walk3")
            self.gifImage3.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage3.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage3.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage3.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 8).isActive = true
            self.gifImage3.leadingAnchor.constraint(equalTo: self.gifImage11.trailingAnchor, constant: 21).isActive = true
            self.timer3 = Timer.scheduledTimer(timeInterval: 1.2, target: self, selector: #selector(self.move3(_:)), userInfo: nil, repeats: true)
            self.timer3.fire()
        case 4:
            self.gifImage4.loadGif(name: "walk4")
            self.gifImage4.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage4.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage4.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage4.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 29).isActive = true
            self.gifImage4.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 69).isActive = true
            self.timer4 = Timer.scheduledTimer(timeInterval: 1.3, target: self, selector: #selector(self.move4(_:)), userInfo: nil, repeats: true)
            self.timer4.fire()
        case 5:
            self.gifImage5.loadGif(name: "walk5")
            self.gifImage5.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage5.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage5.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage5.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 120).isActive = true
            self.gifImage5.leadingAnchor.constraint(equalTo: self.gifImage2.trailingAnchor, constant: 56).isActive = true
            self.timer5 = Timer.scheduledTimer(timeInterval: 14, target: self, selector: #selector(self.move5(_:)), userInfo: nil, repeats: true)
            self.timer5.fire()
        case 6:
            self.gifImage6.loadGif(name: "walk6")
            self.gifImage6.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage6.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage6.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage6.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 17).isActive = true
            self.gifImage6.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 60).isActive = true
            self.timer6 = Timer.scheduledTimer(timeInterval: 1.45, target: self, selector: #selector(self.move6(_:)), userInfo: nil, repeats: true)
            self.timer6.fire()
        case 7:
            self.gifImage7.loadGif(name: "walk7")
            self.gifImage7.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage7.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage7.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage7.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 68).isActive = true
            self.gifImage7.leadingAnchor.constraint(equalTo: self.gifImage5.leadingAnchor, constant: 21).isActive = true
            self.timer7 = Timer.scheduledTimer(timeInterval: 1.35, target: self, selector: #selector(self.move7(_:)), userInfo: nil, repeats: true)
            self.timer7.fire()
        case 8:
            self.gifImage8.loadGif(name: "walk8")
            self.gifImage8.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage8.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage8.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage8.topAnchor.constraint(equalTo: self.gifImage12.bottomAnchor, constant: 21).isActive = true
            self.gifImage8.leadingAnchor.constraint(equalTo: self.gifImage11.leadingAnchor, constant: 45).isActive = true
            self.timer8 = Timer.scheduledTimer(timeInterval: 1.25, target: self, selector: #selector(self.move8(_:)), userInfo: nil, repeats: true)
            self.timer8.fire()
        case 9:
            self.gifImage9.loadGif(name: "walk9")
            self.gifImage9.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage9.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage9.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage9.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 58).isActive = true
            self.gifImage9.leadingAnchor.constraint(equalTo: self.gifImage4.leadingAnchor, constant: 8).isActive = true
            self.timer9 = Timer.scheduledTimer(timeInterval: 1.15, target: self, selector: #selector(self.move9(_:)), userInfo: nil, repeats: true)
            self.timer9.fire()
        case 10:
            self.gifImage11.loadGif(name: "walk10")
            self.gifImage11.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage11.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.251).isActive = true
            self.gifImage11.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.211).isActive = true
            self.gifImage11.leadingAnchor.constraint(equalTo: self.gifImage14.trailingAnchor, constant: 36).isActive = true
            self.gifImage11.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 8).isActive = true
            self.gifImage.removeFromSuperview()
            self.gifImage2.removeFromSuperview()
            self.gifImage3.removeFromSuperview()
            self.gifImage4.removeFromSuperview()
            self.gifImage5.removeFromSuperview()
            self.gifImage6.removeFromSuperview()
            self.gifImage7.removeFromSuperview()
            self.gifImage8.removeFromSuperview()
            self.gifImage9.removeFromSuperview()
            self.timer11 = Timer.scheduledTimer(timeInterval: 1.05, target: self, selector: #selector(self.move11(_:)), userInfo: nil, repeats: true)
            self.timer11.fire()
        case 11:
            self.timer.invalidate()
            self.view.addSubview(self.gifImage)
            self.gifImage.loadGif(name: "walk.b")
            self.gifImage.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage.topAnchor.constraint(equalTo: self.gifImage18.bottomAnchor, constant: 66).isActive = true
            self.gifImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.move(_:)), userInfo: nil, repeats: true)
            self.timer.fire()
        case 12:
            self.timer2.invalidate()
            self.view.addSubview(self.gifImage2)
            self.gifImage2.loadGif(name: "walk.b2")
            self.gifImage2.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage2.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage2.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 83).isActive = true
            self.gifImage2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            self.timer2 = Timer.scheduledTimer(timeInterval: 1.1, target: self, selector: #selector(self.move2(_:)), userInfo: nil, repeats: true)
            self.timer2.fire()
        case 13:
            self.timer3.invalidate()
            self.view.addSubview(self.gifImage3)
            self.gifImage3.loadGif(name: "walk.b3")
            self.gifImage3.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage3.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage3.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage3.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 8).isActive = true
            self.gifImage3.leadingAnchor.constraint(equalTo: self.gifImage11.trailingAnchor, constant: 21).isActive = true
            self.timer3 = Timer.scheduledTimer(timeInterval: 1.2, target: self, selector: #selector(self.move3(_:)), userInfo: nil, repeats: true)
            self.timer3.fire()
        case 14:
            self.timer4.invalidate()
            self.view.addSubview(self.gifImage4)
            self.gifImage4.loadGif(name: "walk.b4")
            self.gifImage4.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage4.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage4.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage4.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 29).isActive = true
            self.gifImage4.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 69).isActive = true
            self.timer4 = Timer.scheduledTimer(timeInterval: 1.3, target: self, selector: #selector(self.move4(_:)), userInfo: nil, repeats: true)
            self.timer4.fire()
        case 15:
            self.timer4.fire()
            self.timer5.invalidate()
            self.view.addSubview(self.gifImage5)
            self.gifImage5.loadGif(name: "walk.b5")
            self.gifImage5.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage5.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage5.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage5.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 120).isActive = true
            self.gifImage5.leadingAnchor.constraint(equalTo: self.gifImage2.trailingAnchor, constant: 56).isActive = true
            self.timer5 = Timer.scheduledTimer(timeInterval: 1.4, target: self, selector: #selector(self.move5(_:)), userInfo: nil, repeats: true)
            self.timer5.fire()
        case 16:
            self.timer6.invalidate()
            self.view.addSubview(self.gifImage6)
            self.gifImage6.loadGif(name: "walk.b6")
            self.gifImage6.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage6.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage6.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage6.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 17).isActive = true
            self.gifImage6.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 60).isActive = true
            self.timer6 = Timer.scheduledTimer(timeInterval: 1.45, target: self, selector: #selector(self.move6(_:)), userInfo: nil, repeats: true)
            self.timer6.fire()
        case 17:
            self.timer7.invalidate()
            self.view.addSubview(self.gifImage7)
            self.gifImage7.loadGif(name: "walk.b7")
            self.gifImage7.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage7.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage7.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage7.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 68).isActive = true
            self.gifImage7.leadingAnchor.constraint(equalTo: self.gifImage5.leadingAnchor, constant: 21).isActive = true
            self.timer7 = Timer.scheduledTimer(timeInterval: 1.35, target: self, selector: #selector(self.move7(_:)), userInfo: nil, repeats: true)
            self.timer7.fire()
        case 18:
            self.timer8.invalidate()
            self.view.addSubview(self.gifImage8)
            self.gifImage8.loadGif(name: "walk.b8")
            self.gifImage8.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage8.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage8.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage8.topAnchor.constraint(equalTo: self.gifImage12.bottomAnchor, constant: 21).isActive = true
            self.gifImage8.leadingAnchor.constraint(equalTo: self.gifImage11.leadingAnchor, constant: 45).isActive = true
            self.timer8 = Timer.scheduledTimer(timeInterval: 1.25, target: self, selector: #selector(self.move8(_:)), userInfo: nil, repeats: true)
            self.timer8.fire()
        case 19:
            self.timer9.invalidate()
            self.view.addSubview(self.gifImage9)
            self.gifImage9.loadGif(name: "walk.b9")
            self.gifImage9.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage9.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage9.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage9.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 58).isActive = true
            self.gifImage9.leadingAnchor.constraint(equalTo: self.gifImage4.leadingAnchor, constant: 8).isActive = true
            self.timer9 = Timer.scheduledTimer(timeInterval: 1.15, target: self, selector: #selector(self.move9(_:)), userInfo: nil, repeats: true)
            self.timer9.fire()
        case 20:
            self.timer10.invalidate()
            self.gifImage12.loadGif(name: "walk.b10")
            self.gifImage12.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage12.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.251).isActive = true
            self.gifImage12.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.211).isActive = true
            self.gifImage12.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 16).isActive = true
            self.gifImage12.topAnchor.constraint(equalTo: self.gifImage19.bottomAnchor, constant: 58).isActive = true
            self.gifImage.removeFromSuperview()
            self.gifImage2.removeFromSuperview()
            self.gifImage3.removeFromSuperview()
            self.gifImage4.removeFromSuperview()
            self.gifImage5.removeFromSuperview()
            self.gifImage6.removeFromSuperview()
            self.gifImage7.removeFromSuperview()
            self.gifImage8.removeFromSuperview()
            self.gifImage9.removeFromSuperview()
            self.timer12 = Timer.scheduledTimer(timeInterval: 1.15, target: self, selector: #selector(self.move12(_:)), userInfo: nil, repeats: true)
            self.timer12.fire()
        case 21:
            self.timer.invalidate()
            self.view.addSubview(self.gifImage)
            self.gifImage.loadGif(name: "walk.m")
            self.gifImage.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage.topAnchor.constraint(equalTo: self.gifImage18.bottomAnchor, constant: 66).isActive = true
            self.gifImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.move(_:)), userInfo: nil, repeats: true)
            self.timer.fire()
        case 22:
            self.timer2.invalidate()
            self.view.addSubview(self.gifImage2)
            self.gifImage2.loadGif(name: "walk.m2")
            self.gifImage2.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage2.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage2.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 83).isActive = true
            self.gifImage2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            self.gifImage2.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage2.widthAnchor.constraint(equalToConstant: 60).isActive = true
            self.gifImage2.heightAnchor.constraint(equalToConstant: 90).isActive = true
            self.timer2 = Timer.scheduledTimer(timeInterval: 1.1, target: self, selector: #selector(self.move2(_:)), userInfo: nil, repeats: true)
            self.timer2.fire()
        case 23:
            self.timer3.invalidate()
            self.view.addSubview(self.gifImage3)
            self.gifImage3.loadGif(name: "walk.m3")
            self.gifImage3.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage3.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage3.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage3.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 8).isActive = true
            self.gifImage3.leadingAnchor.constraint(equalTo: self.gifImage11.trailingAnchor, constant: 21).isActive = true
            self.timer3 = Timer.scheduledTimer(timeInterval: 1.2, target: self, selector: #selector(self.move3(_:)), userInfo: nil, repeats: true)
            self.timer3.fire()
        case 24:
            self.timer4.invalidate()
            self.view.addSubview(self.gifImage4)
            self.gifImage4.loadGif(name: "walk.m4")
            self.gifImage4.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage4.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage4.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage4.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 29).isActive = true
            self.gifImage4.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 69).isActive = true
            self.timer4 = Timer.scheduledTimer(timeInterval: 1.3, target: self, selector: #selector(self.move4(_:)), userInfo: nil, repeats: true)
            self.timer4.fire()
        case 25:
            self.timer5.invalidate()
            self.view.addSubview(self.gifImage5)
            self.gifImage5.loadGif(name: "walk.m5")
            self.gifImage5.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage5.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage5.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage5.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 120).isActive = true
            self.gifImage5.leadingAnchor.constraint(equalTo: self.gifImage2.trailingAnchor, constant: 56).isActive = true
            self.timer5 = Timer.scheduledTimer(timeInterval: 1.4, target: self, selector: #selector(self.move5(_:)), userInfo: nil, repeats: true)
            self.timer5.fire()
        case 26:
            self.timer6.invalidate()
            self.view.addSubview(self.gifImage6)
            self.gifImage6.loadGif(name: "walk.m6")
            self.gifImage6.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage6.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage6.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage6.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 17).isActive = true
            self.gifImage6.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 60).isActive = true
            self.timer6 = Timer.scheduledTimer(timeInterval: 1.45, target: self, selector: #selector(self.move6(_:)), userInfo: nil, repeats: true)
            self.timer6.fire()
        case 27:
            self.timer7.invalidate()
            self.view.addSubview(self.gifImage7)
            self.gifImage7.loadGif(name: "walk.m7")
            self.gifImage7.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage7.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage7.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage7.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 68).isActive = true
            self.gifImage7.leadingAnchor.constraint(equalTo: self.gifImage5.leadingAnchor, constant: 21).isActive = true
            self.timer7 = Timer.scheduledTimer(timeInterval: 1.35, target: self, selector: #selector(self.move7(_:)), userInfo: nil, repeats: true)
            self.timer7.fire()
        case 28:
            self.timer8.invalidate()
            self.view.addSubview(self.gifImage8)
            self.gifImage8.loadGif(name: "walk.m8")
            self.gifImage8.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage8.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage8.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage8.topAnchor.constraint(equalTo: self.gifImage12.bottomAnchor, constant: 21).isActive = true
            self.gifImage8.leadingAnchor.constraint(equalTo: self.gifImage11.leadingAnchor, constant: 45).isActive = true
            self.timer8 = Timer.scheduledTimer(timeInterval: 1.25, target: self, selector: #selector(self.move8(_:)), userInfo: nil, repeats: true)
            self.timer8.fire()
        case 29:
            self.timer9.invalidate()
            self.view.addSubview(self.gifImage9)
            self.gifImage9.loadGif(name: "walk.m9")
            self.gifImage9.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage9.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage9.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage9.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 58).isActive = true
            self.gifImage9.leadingAnchor.constraint(equalTo: self.gifImage4.leadingAnchor, constant: 8).isActive = true
            self.timer9 = Timer.scheduledTimer(timeInterval: 1.15, target: self, selector: #selector(self.move9(_:)), userInfo: nil, repeats: true)
            self.timer9.fire()
        case 30:
            self.timer10.invalidate()
            self.gifImage13.loadGif(name: "walk.m10")
            self.gifImage13.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage13.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.251).isActive = true
            self.gifImage13.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.211).isActive = true
            self.gifImage13.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -59).isActive = true
            self.gifImage13.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 71).isActive = true
            self.gifImage.removeFromSuperview()
            self.gifImage2.removeFromSuperview()
            self.gifImage3.removeFromSuperview()
            self.gifImage4.removeFromSuperview()
            self.gifImage5.removeFromSuperview()
            self.gifImage6.removeFromSuperview()
            self.gifImage7.removeFromSuperview()
            self.gifImage8.removeFromSuperview()
            self.gifImage9.removeFromSuperview()
            self.timer13 = Timer.scheduledTimer(timeInterval: 1.25, target: self, selector: #selector(self.move13(_:)), userInfo: nil, repeats: true)
            self.timer13.fire()
        case 31:
            self.timer.invalidate()
            self.view.addSubview(self.gifImage)
            self.gifImage.loadGif(name: "walk.n")
            self.gifImage.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage.topAnchor.constraint(equalTo: self.gifImage18.bottomAnchor, constant: 66).isActive = true
            self.gifImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            self.timer = Timer.scheduledTimer(timeInterval: 1.1, target: self, selector: #selector(self.move(_:)), userInfo: nil, repeats: true)

            self.timer.fire()
        case 32:
            self.timer2.invalidate()
            self.view.addSubview(self.gifImage2)
            self.gifImage2.loadGif(name: "walk.n2")
            self.gifImage2.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage2.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage2.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 83).isActive = true
            self.gifImage2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            self.timer2 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.move2(_:)), userInfo: nil, repeats: true)
            self.timer2.fire()
        case 33:
            self.timer3.invalidate()
            self.view.addSubview(self.gifImage3)
            self.gifImage3.loadGif(name: "walk.n3")
            self.gifImage3.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage3.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage3.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage3.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 8).isActive = true
            self.gifImage3.leadingAnchor.constraint(equalTo: self.gifImage11.trailingAnchor, constant: 21).isActive = true
            self.timer3 = Timer.scheduledTimer(timeInterval: 1.2, target: self, selector: #selector(self.move3(_:)), userInfo: nil, repeats: true)
            self.timer3.fire()
        case 34:
            self.timer4.invalidate()
            self.view.addSubview(self.gifImage4)
            self.gifImage4.loadGif(name: "walk.n4")
            self.gifImage4.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage4.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage4.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage4.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 29).isActive = true
            self.gifImage4.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 69).isActive = true
            self.timer4 = Timer.scheduledTimer(timeInterval: 1.3, target: self, selector: #selector(self.move4(_:)), userInfo: nil, repeats: true)
            self.timer4.fire()
        case 35:
            self.timer5.invalidate()
            self.view.addSubview(self.gifImage5)
            self.gifImage5.loadGif(name: "walk.n5")
            self.gifImage5.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage5.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage5.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage5.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 120).isActive = true
            self.gifImage5.leadingAnchor.constraint(equalTo: self.gifImage2.trailingAnchor, constant: 56).isActive = true
            self.timer5 = Timer.scheduledTimer(timeInterval: 1.4, target: self, selector: #selector(self.move5(_:)), userInfo: nil, repeats: true)
            self.timer5.fire()
        case 36:
            self.timer6.invalidate()
            self.view.addSubview(self.gifImage6)
            self.gifImage6.loadGif(name: "walk.n6")
            self.gifImage6.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage6.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage6.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage6.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 17).isActive = true
            self.gifImage6.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 60).isActive = true
            self.timer6 = Timer.scheduledTimer(timeInterval: 1.45, target: self, selector: #selector(self.move6(_:)), userInfo: nil, repeats: true)
            self.timer6.fire()
        case 37:
            self.timer7.invalidate()
            self.view.addSubview(self.gifImage7)
            self.gifImage7.loadGif(name: "walk.n7")
            self.gifImage7.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage7.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage7.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage7.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 68).isActive = true
            self.gifImage7.leadingAnchor.constraint(equalTo: self.gifImage5.leadingAnchor, constant: 21).isActive = true
            self.timer7 = Timer.scheduledTimer(timeInterval: 1.35, target: self, selector: #selector(self.move7(_:)), userInfo: nil, repeats: true)
            self.timer7.fire()
        case 38:
            self.timer8.invalidate()
            self.view.addSubview(self.gifImage8)
            self.gifImage8.loadGif(name: "walk.n8")
            self.gifImage8.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage8.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage8.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage8.topAnchor.constraint(equalTo: self.gifImage12.bottomAnchor, constant: 21).isActive = true
            self.gifImage8.leadingAnchor.constraint(equalTo: self.gifImage11.leadingAnchor, constant: 45).isActive = true
            self.timer8 = Timer.scheduledTimer(timeInterval: 1.25, target: self, selector: #selector(self.move8(_:)), userInfo: nil, repeats: true)
            self.timer8.fire()
        case 39:
            self.timer9.invalidate()
            self.view.addSubview(self.gifImage9)
            self.gifImage9.loadGif(name: "walk.n9")
            self.gifImage9.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage9.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage9.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage9.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 58).isActive = true
            self.gifImage9.leadingAnchor.constraint(equalTo: self.gifImage4.leadingAnchor, constant: 8).isActive = true
            self.timer9 = Timer.scheduledTimer(timeInterval: 1.15, target: self, selector: #selector(self.move9(_:)), userInfo: nil, repeats: true)
            self.timer9.fire()
        case 40:
            self.timer10.invalidate()
            self.gifImage14.loadGif(name: "walk.n10")
            self.gifImage14.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage14.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.251).isActive = true
            self.gifImage14.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.211).isActive = true
            self.gifImage14.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 26).isActive = true
            self.gifImage14.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
            self.gifImage.removeFromSuperview()
            self.gifImage2.removeFromSuperview()
            self.gifImage3.removeFromSuperview()
            self.gifImage4.removeFromSuperview()
            self.gifImage5.removeFromSuperview()
            self.gifImage6.removeFromSuperview()
            self.gifImage7.removeFromSuperview()
            self.gifImage8.removeFromSuperview()
            self.gifImage9.removeFromSuperview()
            self.timer14 = Timer.scheduledTimer(timeInterval: 1.05, target: self, selector: #selector(self.move14(_:)), userInfo: nil, repeats: true)
            self.timer14.fire()
        case 41:
            self.timer.invalidate()
            self.view.addSubview(self.gifImage)
            self.gifImage.loadGif(name: "walk.blue")
            self.gifImage.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage.topAnchor.constraint(equalTo: self.gifImage18.bottomAnchor, constant: 66).isActive = true
            self.gifImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.move(_:)), userInfo: nil, repeats: true)
            self.timer.fire()
        case 42:
            self.timer2.invalidate()
            self.view.addSubview(self.gifImage2)
            self.gifImage2.loadGif(name: "walk.blue2")
            self.gifImage2.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage2.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage2.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 83).isActive = true
            self.gifImage2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            self.timer2 = Timer.scheduledTimer(timeInterval: 1.1, target: self, selector: #selector(self.move2(_:)), userInfo: nil, repeats: true)
            self.timer2.fire()
        case 43:
            self.timer3.invalidate()
            self.view.addSubview(self.gifImage3)
            self.gifImage3.loadGif(name: "walk.blue3")
            self.gifImage3.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage3.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage3.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage3.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 8).isActive = true
            self.gifImage3.leadingAnchor.constraint(equalTo: self.gifImage11.trailingAnchor, constant: 21).isActive = true
            self.timer3 = Timer.scheduledTimer(timeInterval: 1.2, target: self, selector: #selector(self.move3(_:)), userInfo: nil, repeats: true)
            self.timer3.fire()
        case 44:
            self.timer4.invalidate()
            self.view.addSubview(self.gifImage4)
            self.gifImage4.loadGif(name: "walk.blue4")
            self.gifImage4.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage4.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage4.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage4.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 29).isActive = true
            self.gifImage4.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 69).isActive = true
            self.timer4 = Timer.scheduledTimer(timeInterval: 1.3, target: self, selector: #selector(self.move4(_:)), userInfo: nil, repeats: true)
            self.timer4.fire()
        case 45:
            self.timer5.invalidate()
            self.view.addSubview(self.gifImage5)
            self.gifImage5.loadGif(name: "walk.blue5")
            self.gifImage5.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage5.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage5.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage5.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 120).isActive = true
            self.gifImage5.leadingAnchor.constraint(equalTo: self.gifImage2.trailingAnchor, constant: 56).isActive = true
            self.timer5 = Timer.scheduledTimer(timeInterval: 1.35, target: self, selector: #selector(self.move5(_:)), userInfo: nil, repeats: true)
            self.timer5.fire()
        case 46:
            self.timer6.invalidate()
            self.view.addSubview(self.gifImage6)
            self.gifImage6.loadGif(name: "walk.blue6")
            self.gifImage6.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage6.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.16).isActive = true
            self.gifImage6.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.135).isActive = true
            self.gifImage6.topAnchor.constraint(equalTo: self.gifImage.bottomAnchor, constant: 17).isActive = true
            self.gifImage6.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 60).isActive = true
            self.timer6 = Timer.scheduledTimer(timeInterval: 1.25, target: self, selector: #selector(self.move6(_:)), userInfo: nil, repeats: true)
            self.timer6.fire()
        case 47:
            self.timer15.invalidate()
            self.gifImage.removeFromSuperview()
            self.gifImage2.removeFromSuperview()
            self.gifImage3.removeFromSuperview()
            self.gifImage4.removeFromSuperview()
            self.gifImage5.removeFromSuperview()
            self.gifImage6.removeFromSuperview()
            self.gifImage11.removeFromSuperview()
            self.gifImage12.removeFromSuperview()
            self.gifImage13.removeFromSuperview()
            self.gifImage14.removeFromSuperview()
            self.gifImage15.loadGif(name: "walk.blue7")
            self.gifImage15.translatesAutoresizingMaskIntoConstraints = false
            self.gifImage15.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.251).isActive = true
            self.gifImage15.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.211).isActive = true
            self.gifImage15.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.gifImage15.topAnchor.constraint(equalTo: self.pickerView.bottomAnchor, constant: 60).isActive = true
            self.timer15 = Timer.scheduledTimer(timeInterval: 1.15, target: self, selector: #selector(self.move15(_:)), userInfo: nil, repeats: true)
            self.timer15.fire()
            self.gifImage16.loadGif(name: "walk")
            self.gifImage17.loadGif(name: "walk.b")
            self.gifImage18.loadGif(name: "walk.m")
            self.gifImage19.loadGif(name: "walk.n")
        default:break
        }
    }
}

        
