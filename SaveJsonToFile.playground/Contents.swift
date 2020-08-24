import UIKit

// Writing string to file
let jsonString = "{\"location\": \"the moon\"}"

if let documentDirectory = FileManager.default.urls(for: .documentDirectory,
                                                    in: .userDomainMask).first {
    let pathWithFileName = documentDirectory.appendingPathComponent("myJsonString.json")
    do {
        try jsonString.write(to: pathWithFileName,
                             atomically: true,
                             encoding: .utf8)
    } catch {
        // Handle error
    }
}

// Writing data to file
if let jsonData = jsonString.data(using: .utf8),
    let documentDirectory = FileManager.default.urls(for: .documentDirectory,
                                                     in: .userDomainMask).first {
    let pathWithFileName = documentDirectory.appendingPathComponent("myJsonData")
    do {
        try jsonData.write(to: pathWithFileName)
    } catch {
        // handle error
    }
}
