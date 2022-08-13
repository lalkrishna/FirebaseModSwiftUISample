//
//  FirebaseModSwiftUISampleApp.swift
//  FirebaseModSwiftUISample
//
//  Created by Lal Krishna on 13/08/22.
//

import SwiftUI
import FirebaseTools

@main
struct FirebaseModSwiftUISampleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

//@UIApplicationMain
class AppDelegate: NSObject, UIApplicationDelegate, ObservableObject {
//    let firebase: FirebaseTools = FirebaseTools()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("didFinishLaunchingWithOptions")
        FirebaseTools.configure()
        return true
    }
    
//    @MainActor
//    private func applicationDidFinishLaunching(_ notification: Notification) {
//        
//        print("applicationDidFinishLaunching")
//    }
}
