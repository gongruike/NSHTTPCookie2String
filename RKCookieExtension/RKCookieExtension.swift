//
//  RKCookieExtension.swift
//  Demo
//
//  Created by gongruike on 16/8/10.
//  Copyright © 2016年 gongruike. All rights reserved.
//

import Foundation

extension NSHTTPCookie {
    
    enum CookieKeys {
        case One
    }
    
    func cookieString() -> String {
        
        /*
         let NSHTTPCookieComment: String
         let NSHTTPCookieCommentURL: String
         let NSHTTPCookieDiscard: String
         let NSHTTPCookieMaximumAge: String
         let NSHTTPCookieOriginURL: String
         let NSHTTPCookiePort: String
         let NSHTTPCookieSecure: String
         */
        var results: [String] = []
        
        let cookieValue = "\(name)=\(value)"
        results.append(cookieValue)
        
        let cookieDomain = "domain=\(domain)"
        results.append(cookieDomain)
        
        let cookiePath = "path=\(path)"
        results.append(cookiePath)
        
        let cookieVersion = "version=\(version)"
        results.append(cookieVersion)
        
        if let expiresDate = expiresDate {
            //
            let formatter = NSDateFormatter()
            formatter.locale = NSLocale(localeIdentifier: "en_US")
            formatter.dateFormat = "EEE, dd-MMM-yyyy HH:mm:ss zzz"
            
            let cookieExpiresDate = "expires=\(formatter.stringFromDate(expiresDate))"
            results.append(cookieExpiresDate)
        }
        
        return results.joinWithSeparator(";")
    }
    
}

