//
//  MovieYearReleaseView.swift
//  MovieApp-UIKit
//
//  Created by Muhammed Hanifi Alma on 22.09.2021.
//

import UIKit

import MarkerKit

final class MovieYearReleaseView: UIView {

    private let frameImageView = UIImageView(image: Image.by(assetId: .iconReleaseFrame))
    private let yearLabel = UILabel(font: .systemFont(ofSize: 15, weight: .light), lines: 1, alignment: .center)

    override var intrinsicContentSize: CGSize {
        return CGSize(width: 61, height: 21)
    }

    override init(frame: CGRect) {
        super.init(frame: .zero)

        add(subviews: frameImageView, yearLabel)

        yearLabel.mrk.center(to: frameImageView)
    }

    func setupWith(date: Date?) {
        guard let releaseDate = date else {
            yearLabel.text = nil
            return
        }
        let year = Calendar.current.component(.year, from: releaseDate)
        yearLabel.text = "\(year)"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
