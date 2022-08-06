//
//  NewsDataModel.swift
//  PlayoAssignment
//
//  Created by MAC  on 06/08/22.
//

import Foundation

// MARK: - NewsDataModel
struct NewsDataModel: Codable {
    let status: String?
    let totalResults: Int?
    let articles: [Article]?
}

// MARK: - Article
struct Article: Codable {
    let source: Source?
    let author, title, articleDescription: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?

    enum CodingKeys: String, CodingKey {
        case source, author, title
        case articleDescription = "description"
        case url, urlToImage, publishedAt, content
    }
}

// MARK: - Source
struct Source: Codable {
    let id: String?
    let name: String?
    
    enum CodingKeys: String, CodingKey {
        case id  = "techcrunch"
        case name = "TechCrunch"
    }
}
