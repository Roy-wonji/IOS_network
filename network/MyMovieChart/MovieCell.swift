//
//  MovieCell.swift
//  MyMovieChart
//
//  Created by 서원지 on 2022/01/28.
//  Copyright © 2022 SQLPRO. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel! // 영화제목
    
    @IBOutlet var opendataLabel: UILabel! // 영화 설명
    
    @IBOutlet var descriptionLabel: UILabel! // 개봉일
    
    @IBOutlet var ratingLabel: UILabel! // 평점
    
    @IBOutlet var thumbnailImageView: UIImageView! // 섬네일 이미지
}
