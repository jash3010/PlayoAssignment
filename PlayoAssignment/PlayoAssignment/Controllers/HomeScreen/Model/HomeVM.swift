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
    
    var newsDataARY = [Article]()
    
    func getNewsData() async{
        newsDataARY = await makeRequest()
    }
    
    func makeRequest() async -> [Article]{
        
        let url = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=63265685637341b2a1687b8eb836ad66"
        guard let apiURL = URL(string: url) else { return []}
        await self.viewController.showLoader()
        do {
            let urlRequest = URLRequest(url: apiURL)
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            let modelData = try JSONDecoder().decode(NewsDataModel.self, from: data)
            print(modelData)
            await self.viewController.hideLoader()
            return modelData.articles ?? []
        }catch{
            return []
        }
    }

}
