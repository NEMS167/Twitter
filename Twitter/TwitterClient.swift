//
//  TwitterClient.swift
//  Twitter
//
//  Created by Eileen Madrigal on 2/14/16.
//  Copyright © 2016 Eileen Madrigal. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

let twitterConsumerKey = "InpXRJDJefFwigmVF6aSyF4WS"
let twitterConsumerSecret = "U3diXlkY9ry7GNpzXyV0mXB6lNoPCadq0dNR0krNA5WLU7chsM"
let twitterBaseURL = NSURL(string: "https://api.twitter.com")

class TwitterClient: BDBOAuth1SessionManager {
    class var sharedInstance: TwitterClient {
        struct Static {
            static let instance = TwitterClient(baseURL: twitterBaseURL, consumerKey: twitterConsumerKey, consumerSecret: twitterConsumerSecret)
        }
        
        return Static.instance
    }
    
}



