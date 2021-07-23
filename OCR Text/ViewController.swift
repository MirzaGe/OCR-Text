//
//  ViewController.swift
//  OCR Text
//
//  Created by sherry on 24/07/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // URL
        let url = URL (string:  "https://ocr-text-extractor.p.rapidapi.com/ocr-engines/list-options")
        guard url != nil else {
            print("error creating url object")
        }
        // URL Request
        
        var request = URLRequest(url: url!, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
        // Specify the Header
        
        let headers = [
            "accept": "string",
            "x-rapidapi-key": "139cacdf02mshac7b9ff1f5ff8b5p151be4jsn7e1d1d608b3d",
            "x-rapidapi-host": "ocr-text-extractor.p.rapidapi.com"
        ]
        
        request.allHTTPHeaderFields = headers
        
        // Specify The Body
        
        
        let jsonObject = [ "Uri": "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png",
                           "Language": "string",
                           "DetectOrientation": false,
                           "Scale": false,
                           "IsTable": false,
                           "OcrEngine": "string"] as [String : Any]
        
        do {
        let requestBody = try JSONSerialization.data(withJSONObject: jsonObject, options: .fragmentsAllowed)
        }
        catch {
            print ("error ")
        }
        
        // Set the request type
        
        
        // Get the URL Session
        
        
        // create The data task
        
        
        // fire off the data task
        
        
        
        
        
        
    }


}

