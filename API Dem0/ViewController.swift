//
//  ViewController.swift
//  API Dem0
//
//  Created by MacStudent on 2020-01-17.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=0637c9d91efa3d498e8fda2f4540e4f4")!
        
        let task = URLSession.shared.dataTask(with: url)
        {
            (data,response,error) in
            if let errro = error
            {
                print(error)
            }
            else
            {
                if let urlContent = data
                {
                    do{
                        
                        let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers) as?  NSDictionary
                        print(jsonResult)
                        
                        
                    }catch
                    {
                        print(error)
                    }
                }
            }
        }
        //start the task
        task.resume()
        
        // Do any additional setup after loading the view.
    }


}

