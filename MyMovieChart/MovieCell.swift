//
//  MovieCell.swift
//  MyMovieChart
//
//  Created by SeungYeon Yoo on 2022/05/28.
//

import UIKit
class MovieCell: UITableViewCell {
    
    @IBOutlet var title: UILabel! //영화제목
    
    @IBOutlet var opendate: UILabel! //개봉일
    
    @IBOutlet var rating: UILabel! //평점
    
    @IBOutlet var desc: UILabel! //영화설명
    
    @IBOutlet var thumbnail: UIImageView! //섬네일 이미지
    
}
