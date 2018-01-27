//
//  StudentTableViewController.swift
//  Kevin
//
//  Created by Tang Tantivirun on 1/27/18.
//  Copyright © 2018 Tantivirun. All rights reserved.
//

import Foundation
import UIKit

class StudentTableViewController: UITableViewController {
    var sessions = [Session] ()
    
    private func loadSampleSessions() {
        //create three sessions object
        guard let session1 = Session(name: "Tang Tantivirun", subject: "Math") else { fatalError("Unable to instantiate session1")
        }
        guard let session2 = Session(name: "Victoria", subject: "Science") else { fatalError("Unable to instantiate session2")
        }
        guard let session3 = Session(name: "Rowan", subject: "Astro") else { fatalError("Unable to instantiate session3")
        }
        sessions += [session1, session2, session3]
    }
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return sessions.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "StudentTableViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celldentifier", for: indexPath)
        
        // Configure the cell...
        guard tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) is StudentTableViewCell  else {
            fatalError("The dequeued cell is not an instance of StudentTableViewCell.")
        }
        let session = sessions[indexPath.row]
        cell.nameLabel.text = sessions.name
        cell.subjectLabel.text = sessions.subject
        
        return cell
    }
    
    
}