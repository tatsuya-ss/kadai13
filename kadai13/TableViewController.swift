//
//  TableViewController.swift
//  kadai13
//
//  Created by 坂本龍哉 on 2021/01/07.
//

import UIKit

final class TableViewController: UITableViewController {
    
    private let fruits = ["りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル","りんご","みかん","ばなな","パイナップル"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //identifierの設定
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: CustomCellId.Id)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //xibで作成したセルを使用。
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCellId.Id, for: indexPath) as! CustomTableViewCell
        if indexPath.row % 2 == 0 {
            cell.configure(isChecked: false, name: fruits[indexPath.row])
        } else {
            cell.configure(isChecked: true, name: fruits[indexPath.row])
        }
        return cell
    }
}
