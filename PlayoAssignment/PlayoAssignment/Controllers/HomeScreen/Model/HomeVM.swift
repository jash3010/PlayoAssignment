//
//  HomeVM.swift
//  PlayoAssignment
//
//  Created by MAC  on 05/08/22.
//

import Foundation

class HomeVM {
    
    //MARK: variable
    fileprivate var viewController: HomeVC!
    fileprivate var View: HomeView!

    init(_ viewController: HomeVC?) {
        self.viewController = viewController
    }
    init(_ View: HomeView?) {
        self.View = View
    }
    
    var newsDataARY = [Article]()
    
    func getNewsData() async{
        newsDataARY = await makeRequest()
    }
    
    func makeRequest() async -> [Article]{
        
        let url = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=63265685637341b2a1687b8eb836ad66"
        guard let apiURL = URL(string: url) else { return []}
        
        do {
            let urlRequest = URLRequest(url: apiURL)
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            let modelData = try JSONDecoder().decode(NewsDataModel.self, from: data)
            print(modelData)
            return modelData.articles ?? []
        }catch{
            return []
        }
    }

}

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
