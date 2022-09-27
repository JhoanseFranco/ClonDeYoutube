//
//  PlaylistModel.swift
//  ClonDeYoutube
//
//  Created by jhoan sebastian franco cardona on 26/09/22.
//

import Foundation

struct Playlist: Decodable{
    let kind: String
    let etag: String
    let nextPageToken: String
    let pageInfo: PageInfo
    
    struct PageInfo: Decodable{
        let totalResults: Int
        let resultsPerPage: Int
    }
    
    let items: [Item]
    
    struct Item: Decodable{
        let kind: String
        let etag: String
        let id: String
        let snippet: Snippet
        
        struct Snippet: Decodable{
            let publishedAt: String
            let channelId: String
            let title: String
            let description: String
            let thumbnails: Thumbnails
            
            struct Thumbnails: Decodable{
                let medium: Medium
                
                struct Medium: Decodable{
                    let url: String
                    let width: Int
                    let height: Int
                }
            }
            let channelTitle: String
            let localized: Localized
            
            struct Localized: Decodable{
                let title: String
                let description: String
            }
        }//Snippet
        let contentDetails: ContentDetails
        
        struct ContentDetails: Decodable{
            let itemCount: Int
        }
    }//Items
}
