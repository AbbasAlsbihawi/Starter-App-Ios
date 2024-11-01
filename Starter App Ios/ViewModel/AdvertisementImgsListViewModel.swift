//
//  SongListViewModel.swift
//  Starter App Ios
//
//  Created by Abbas on 29/06/2024.
//

import SwiftUI


import Combine
import Foundation
class AdvertisementImgsListViewModel: ObservableObject {
    @Published var search: String = ""
    @Published var responseData: HomeResponseData?
    @Published var state: FetchState = .start {
        didSet {
            print("state is: \(state)")
        }
    }

    private let service = APIServices()
    private var subscriptions = Set<AnyCancellable>()

    let limit = 20
    var page = 1
     

    init() {
        
//        self.search = search
        $search
            .removeDuplicates()
            .dropFirst()
            .debounce(for: .seconds(0.5), scheduler: RunLoop.main)
            .sink { [weak self] term in
                self?.clear()
                self?.fetchHome(for: term)
            }
            .store(in: &subscriptions)
         

    }

    private func clear() {
        state = .start
        page = 1
        responseData = nil
    }

    func loadMore() {
        fetchHome(for: search)
    }

    func fetchHome(for searchTerm: String) {
//        guard !searchTerm.isEmpty else {
//            print("hi .. searchTerm:\(searchTerm)")
//            return }
        guard state == .start else { return }

        state = .isLoading

        service.fetchHome(search: searchTerm, skip: page, take: limit) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let responseDataResult):
                    print(responseDataResult.advertisementImgs)
                    self?.responseData = responseDataResult
                    self?.page += 1
                    self?.state = (responseDataResult.advertisementImgs.count == self?.limit) ? .start : .loadedAll
                case .failure(let error):
                    self?.state = .error("Could not load: \(error.localizedDescription)")
                    print(error)
                }
            }
        }
    }
    
    
    func fetch() {
//        fetchHome1(for: search)
    }

    private func fetchHome1(for searchTerm: String) {

      service.fetchHome(search: searchTerm, skip: page, take: limit) { [weak self] result in

        DispatchQueue.main.async {
          switch result {
          case .success(let pageResult):
              print(pageResult.advertisementImgs)
              self?.responseData = pageResult
              self?.page += 1
              self?.state = (pageResult.advertisementImgs.count >= 0) ? .start : .loadedAll
              

//            var songs = pageResult.results
//
//            if !songs.isEmpty {
//              _ = songs.removeFirst()
//            }
//
//            self?.songs = songs.sorted(by: { $0.trackNumber < $1.trackNumber })
//            self?.state = .start

          case .failure(let error):

            self?.state = .error(error.localizedDescription)

          }
        }

      }
    }
}
