//
//  RMCharacterVC.swift
//  RickAndMorty
//
//  Created by Royston Vishal on 02/03/25.
//

import UIKit

class RMCharacterVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Character"
        
    // MARK: - Check API response
//        let request = RMRequest(endpoint: .character)
//        print(request.url)
//        
//        RMService.shared.execute(request: request, expecting: GetAllCharactersResponse.self) { result in
//            switch result {
//            case .success(let model):
//                print(String(describing: model.info.count))
//                print(String(describing: model.results[0].name))
//            case .failure(let error):
//                print(String(describing: error))
//            }
//        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
