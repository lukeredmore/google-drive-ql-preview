//
//  PreviewViewController.swift
//  ql
//
//  Created by Luke Redmore on 1/20/23.
//

import Cocoa
import Quartz
import WebKit

struct GDocLocalInfo: Decodable {
    let doc_id: String
    let resource_key: String
    let email: String
}

class PreviewViewController: NSViewController, QLPreviewingController {
    override var nibName: NSNib.Name? {
        return NSNib.Name("PreviewViewController")
    }
    
    func preparePreviewOfFile(at url: URL, completionHandler handler: @escaping (Error?) -> Void) {
        
        let str = try! String(contentsOf: url)
        print(str)
        let jsonData = str.data(using: .utf8)!
        let docInfo = try! JSONDecoder().decode(GDocLocalInfo.self, from: jsonData)
        
        let urlString = "https://docs.google.com/document/d/\(docInfo.doc_id)/preview"
        
        let webView = WKWebView()
        view.addSubview(webView)
        webView.frame = parent?.view.frame ?? NSRect(x: 0, y: 0, width: 800, height: 600)
        webView.load(URLRequest(url: URL(string: urlString)!))
        
        handler(nil)
    }
}
