//
//  ViewController.swift
//  TMDB JSON Alamofire
//
//  Created by Артем Билый on 13.09.2022.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    lazy var tableView: UITableView = {
        let tablewView = UITableView(frame: view.bounds, style: .insetGrouped)
        return tablewView
    }()
    
    var movies: [Movies] = []
    var genres: [Genre] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        let request = AF.request("https://api.themoviedb.org/3/trending/all/week?api_key=b3187cf196a7681dee8805cdcec0d6ba", method: .get)
        request.responseDecodable(of: MainPageTrending.self) { response in
            do {
                self.movies = try response.result.get().results
                self.tableView.reloadData()
            } catch {
                print("Error: \(error)")
            }
        }
        
        let requestGenres = AF.request("https://api.themoviedb.org/3/genre/movie/list?api_key=b3187cf196a7681dee8805cdcec0d6ba&language=en-US", method: .get)
        requestGenres.responseDecodable(of: Genres.self) { response in
            do {
                self.genres = try response.result.get().genres
                self.tableView.reloadData()
            } catch {
                print("Error: \(error)")
            }
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            var currentGenre = "\nGenre: "
            for id in movies[indexPath.row].genreIDS {
                for genre in genres {
                    if id == genre.id {
                        currentGenre == "\nGenre: " ? (currentGenre += genre.name) : (currentGenre += ", " + genre.name)
                    }
                }
            }
            
            let cell = UITableViewCell()
            
            var configuration = cell.defaultContentConfiguration()
            configuration.image = UIImage(systemName: "film")
            configuration.text = (((movies[indexPath.row].originalTitle ?? movies[indexPath.row].name) ?? movies[indexPath.row].title) ?? "") + currentGenre
            
            cell.textLabel?.numberOfLines = 0
            cell.textLabel?.font = UIFont(name: "Arial", size: 16)
            cell.contentConfiguration = configuration
            return cell
            
        default:
            let cellGenres = UITableViewCell()
            
            var configuration = cellGenres.defaultContentConfiguration()
            configuration.image = UIImage(systemName: "star.circle.fill")
            configuration.text = genres[indexPath.row].name
            cellGenres.contentConfiguration = configuration
            return cellGenres
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return movies.count
        default: return genres.count
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case 0:
            let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 50))
        
            let label = UILabel()
            label.frame = CGRect.init(x: 0, y: 0, width: headerView.frame.width, height: headerView.frame.height)
            label.text = "🍿 Top Films this week"
            label.textAlignment = .justified
            label.font = .systemFont(ofSize: 32)
            
            headerView.addSubview(label)
    
            return headerView
            
        default:
            let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 50))
            let label = UILabel()
            label.frame = CGRect.init(x: 5, y: 5, width: headerView.frame.width, height: headerView.frame.height)
            label.text = "🎬 List of ganres"
            label.font = .systemFont(ofSize: 32)
            label.textAlignment = .justified
            
            headerView.addSubview(label)
            
            return headerView
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}
