//
//  SourceData.swift
//  CustomUITableView
//
//  Created by Артем Билый on 06.09.2022.
//

import Foundation


struct SourceData {
    var avatarImageName: String
    var postImageName: String
    var viewsCount: Int
    var description: String
    var countOfComments: Int
    var postedAt: String
    var nickname: String
}

let config1 = SourceData(avatarImageName: "elon", postImageName: "doge", viewsCount: 3_050_231, description: "Starts with a T \nEnds with an A\nESL in the middle", countOfComments: 15_532, postedAt: "2 months ago", nickname: "Elon Musk")

let config2 = SourceData(avatarImageName: "jeff", postImageName: "poster", viewsCount: 2_800_864, description: "Best of luck @Spacex with Falcon Heavy launch tommorow - hoping for a beautiful, normal flight!", countOfComments: 10_421, postedAt: "2 months ago", nickname: "Jeff Bezos")

let config3 = SourceData(avatarImageName: "joe", postImageName: "joe1", viewsCount: 14_901_321, description: "The future was going to be made right here in America. Companies like GM and Ford are building more electric vehicles here at home than ever before.", countOfComments: 25_412, postedAt: "2 months ago", nickname: "Joe Biden")


let arrayOfPosts: [SourceData] = [config3, config1, config2]
