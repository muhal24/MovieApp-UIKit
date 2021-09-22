//
//  MovieExtentions.swift
//  MovieApp-UIKit
//
//  Created by Muhammed Hanifi Alma on 22.09.2021.
//

import Foundation
import UIKit

extension Collection {

    /// Gets element from collection safely.
    ///
    /// - Parameter index: Index of element.
    subscript(safe index: Index) -> Iterator.Element? {
        if indices.contains(index) {
            return self[index]
        }
        return nil
    }
}

extension DateFormatter {

    /// Date formatter as a date decoding strategy.
    static let yyyyMMdd: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
    }()
}

extension JSONDecoder {

    /// Default JSON Decoder for The Movies DB.
    static let theMovieDB: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(.yyyyMMdd)
        return decoder
    }()
}

extension UIColor {
    
    open class var primaryColor: UIColor {
        return UIColor(red: 237/255, green: 189/255, blue: 57/255, alpha: 1.0)
    }
}

extension UIImageView {
    
    /// Convinience method for initialization with specified content mode.
    ///
    /// - Parameters:
    ///   - image: The inititial image.
    ///   - contentMode: Options to specify how a view adjusts its content when its size changes.
    convenience init(_ image: UIImage? = nil, contentMode: UIView.ContentMode) {
        self.init(image: image)
        self.contentMode = contentMode
    }
}

extension UILabel {

    /// Convenient factory method for UILabel declaration.
    ///
    /// - Parameters:
    ///   - font: Font of the label.
    ///   - color: Text color of the label.
    ///   - backgroundColor: Background color of the label.
    ///   - lines: Number of lines.
    ///   - alignment: Text alignment.
    convenience init(font: UIFont,
                     color: UIColor = .black,
                     backgroundColor: UIColor = .clear,
                     lines: Int = 0,
                     alignment: NSTextAlignment = .left) {
        self.init()

        self.font            = font
        self.textColor       = color
        self.backgroundColor = backgroundColor
        self.numberOfLines   = lines
        self.textAlignment   = alignment
    }
}

extension UIView {

    /// Adds the set of subviews to current view.
    ///
    /// - Parameter subviews: The set of subviews.
    func add(subviews: UIView...) {
        subviews.forEach(addSubview)
    }
}

