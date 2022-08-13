import Firebase

public struct FirebaseTools {

    init() { }
    
    public static func configure() {
        FirebaseApp.configure()
    }
}

public extension FirebaseTools {
    /// Logs Message
    static func log(message: String) {
        Crashlytics.crashlytics().log(message)
    }
    
    /// Log message with File information.
    static func log(_ message: String, fileID: String = #fileID, line: Int = #line, column: Int = #column, funcName: String = #function) {
        let message = "\(fileID):\(funcName):\(line):" + message
        Crashlytics.crashlytics().log(message)
    }
    
    /** Records a user ID (identifier) that's associated with subsequent fatal and non-fatal reports.
     *
     * If you want to associate a crash with a specific user, we recommend specifying an arbitrary
     * string (e.g., a database, ID, hash, or other value that you can index and query, but is
     * meaningless to a third-party observer). This allows you to facilitate responses for support
     * requests and reach out to users for more information.
     */
    static func set(userID: String?, userName: String?) {
        Crashlytics.crashlytics().setUserID(userID)
        Crashlytics.crashlytics().setCustomKeysAndValues([
            "user-id": userID ?? "",
            "user-name": userName ?? ""
        ])
    }
    
    /**
     Custom keys help you get the specific state of your app leading up to a crash. You can associate arbitrary key/value pairs with your crash reports, then use the custom keys to search and filter crash reports in the Firebase console.
     */
    static func setCustomValue(_ value: Any?, forKey key: String) {
        Crashlytics.crashlytics().setCustomValue(value, forKey: key)
    }

    static func setCustomKeysAndValues(_ keysAndValues: [AnyHashable : Any]) {
        Crashlytics.crashlytics().setCustomKeysAndValues(keysAndValues)
    }
}
