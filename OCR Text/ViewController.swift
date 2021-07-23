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
            return
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
            
            request.httpBody = requestBody
            
        }
        catch {
            print ("error creating the data object from the json")
        }
        
        // Set the request type
        
        request.httpMethod = "POST"
        
        // Get the URL Session
        
        let session = URLSession.shared
        
        // create The data task
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            
            
            
            // check for errors
            
            if error == nil && data != nil {
                
                // try to parse out data
                do {
                let dictionary = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? [String:Any]
                    print(dictionary)
                }
                catch {
                    print("Error parsing response data")
                }
                
            }
        }
        
        // fire off the data task
        
        
        dataTask.resume()
        
        
        
    }


}

