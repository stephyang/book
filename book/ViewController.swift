//
//  ViewController.swift
//  book
//
//  Created by stephanie yang on 2016/4/29.
//  Copyright © 2016年 stephanie yang. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setvaule(sender: AnyObject) {
            let myRootRef = Firebase(url: "https://alphabookapp.firebaseio.com/")
       
        
        let booksRef = myRootRef.childByAppendingPath("books")
        
        let bookA = ["name":"iOS 9 App程式設計", "image":"bookA","address":"臺灣 115 台北市南港區八德路四段768巷1弄18號B1之1","tel":"02-26535588","website":"http://www.books.com.tw/products/0010700428","Intro":"本書是作者集結廣受歡迎的iOS 9教學文章，並收納數千名讀者的意見編寫而成。內容使用最新Xcode 7 與 Swift 2開發，由基礎循序漸進逐步帶領你打造出一支完整且支援雲端資料傳輸的iOS App。書中提供的關鍵技巧將可幫助你深入了解響應式介面設計以及美化UI視覺設計元件，依各章內容練習，絕對能夠打好iOS9程式語言的基礎，並掌握住 程式開發的訣竅。"]
        let bookB = ["name":"iOS 9 App程式設計", "image":"bookB","address":"臺灣 115 台北市南港區八德路四段768巷1弄18號B1之1","tel":"02-26535588","website":"http://www.books.com.tw/products/0010700428","Intro":"本書是作者集結廣受歡迎的iOS 9教學文章，並收納數千名讀者的意見編寫而成。內容使用最新Xcode 7 與 Swift 2開發，由基礎循序漸進逐步帶領你打造出一支完整且支援雲端資料傳輸的iOS App。書中提供的關鍵技巧將可幫助你深入了解響應式介面設計以及美化UI視覺設計元件，依各章內容練習，絕對能夠打好iOS9程式語言的基礎，並掌握住 程式開發的訣竅。"]
        let bookC = ["name":"iOS 9 App程式設計", "image":"bookB","address":"臺灣 115 台北市南港區八德路四段768巷1弄18號B1之1","tel":"02-26535588","website":"http://www.books.com.tw/products/0010700428","Intro":"本書是作者集結廣受歡迎的iOS 9教學文章，並收納數千名讀者的意見編寫而成。內容使用最新Xcode 7 與 Swift 2開發，由基礎循序漸進逐步帶領你打造出一支完整且支援雲端資料傳輸的iOS App。書中提供的關鍵技巧將可幫助你深入了解響應式介面設計以及美化UI視覺設計元件，依各章內容練習，絕對能夠打好iOS9程式語言的基礎，並掌握住 程式開發的訣竅。"]
        let bookD = ["name":"iOS 9 App程式設計", "image":"bookD","address":"臺灣 115 台北市南港區八德路四段768巷1弄18號B1之1","tel":"02-26535588","website":"http://www.books.com.tw/products/0010700428","Intro":"本書是作者集結廣受歡迎的iOS 9教學文章，並收納數千名讀者的意見編寫而成。內容使用最新Xcode 7 與 Swift 2開發，由基礎循序漸進逐步帶領你打造出一支完整且支援雲端資料傳輸的iOS App。書中提供的關鍵技巧將可幫助你深入了解響應式介面設計以及美化UI視覺設計元件，依各章內容練習，絕對能夠打好iOS9程式語言的基礎，並掌握住 程式開發的訣竅。"]
        let bookE = ["name":"iOS 9 App程式設計", "image":"bookE","address":"臺灣 115 台北市南港區八德路四段768巷1弄18號B1之1","tel":"02-26535588","website":"http://www.books.com.tw/products/0010700428","Intro":"本書是作者集結廣受歡迎的iOS 9教學文章，並收納數千名讀者的意見編寫而成。內容使用最新Xcode 7 與 Swift 2開發，由基礎循序漸進逐步帶領你打造出一支完整且支援雲端資料傳輸的iOS App。書中提供的關鍵技巧將可幫助你深入了解響應式介面設計以及美化UI視覺設計元件，依各章內容練習，絕對能夠打好iOS9程式語言的基礎，並掌握住 程式開發的訣竅。"]
            
            
            
        
        let bookARef = booksRef.childByAutoId()
        bookARef.setValue(bookA)
        let bookBRef = booksRef.childByAutoId()
        bookBRef.setValue(bookB)
        let bookCRef = booksRef.childByAutoId()
        bookCRef.setValue(bookC)
        let bookDRef = booksRef.childByAutoId()
        bookDRef.setValue(bookD)
        let bookERef = booksRef.childByAutoId()
        bookERef.setValue(bookE)
        
    
        
    }
    
    
    @IBAction func uploadImage(sender: AnyObject) {
        let image = UIImage(named: "iOS9")
        let imageData = UIImageJPEGRepresentation(image!, 1.0)
        let imagestring = imageData?.base64EncodedStringWithOptions(NSDataBase64EncodingOptions())
        
        let imageRef = Firebase(url: "https://alphabookapp.firebaseio.com/")
        let photoRef = imageRef.childByAppendingPath("photoA")
        photoRef.setValue(imagestring)
        
    }
    
    @IBAction func readData(sender: AnyObject) {
        let mybooksRef = Firebase(url:"https://alphabookapp.firebaseio.com/books")
        
        mybooksRef.observeEventType(.ChildAdded, withBlock: { snapshot in
            print(snapshot.value.objectForKey("name")!)
            print(snapshot.value.objectForKey("image")!)
            print(snapshot.value.objectForKey("address")!)
            print(snapshot.value.objectForKey("tel")!)
            print(snapshot.value.objectForKey("website")!)
            print(snapshot.value.objectForKey("Intro")!)
        })
        
        
        
        
        
    }


}

