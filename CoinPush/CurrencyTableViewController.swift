//
//  CurrencyTableViewController.swift
//  CoinPush
//
//  Created by Bijan Massoumi on 7/13/17.
//  Copyright © 2017 Goods and Services. All rights reserved.
//

import UIKit
<<<<<<< HEAD

class CurrencyTableViewController: UITableViewController {

    var currencies = [CurrencyConversion]()
=======
import Alamofire

class CurrencyTableViewController: UITableViewController {

    var currencyPairs = [CurrencyConversion]()
>>>>>>> b38c3d4630da25dbc73e9476a069ff0c72d7b26b
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

<<<<<<< HEAD
    
    //MARK: Actions
    
    
    
=======
>>>>>>> b38c3d4630da25dbc73e9476a069ff0c72d7b26b
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

<<<<<<< HEAD
=======
    
    //MARK: Actions
    @IBAction func unwindToCurrencyList(sender: UIStoryboardSegue) {
        if let source = sender.source as?
            ViewController, let conversionData = source.conversion {
            
            //add a new conversion to list
            let newIndexPath = IndexPath(row: currencyPairs.count, section: 0)
            currencyPairs.append(conversionData)
            tableView.insertRows(at: [newIndexPath], with: .automatic)

        }
        
    }
    
    

    
    
>>>>>>> b38c3d4630da25dbc73e9476a069ff0c72d7b26b
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
<<<<<<< HEAD
        return currencies.count
=======
        return currencyPairs.count
>>>>>>> b38c3d4630da25dbc73e9476a069ff0c72d7b26b
    }
    
    

    
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "CurrencyTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? CurrencyTableViewCell else {
            fatalError("The dequeued cell is not an instance of CurrencyTableViewCell.")
        }
<<<<<<< HEAD
        let currencyData = currencies[indexPath.row]
    
        cell.coinIcon =  UIImage(named: currencyData.fromCurrency)
    
        
    

        return cell
    }
 

=======
        let conversionData = currencyPairs[indexPath.row]

        cell.coinIcon.image =  UIImage(named: conversionData.fromTag)
        cell.titleLabel.text = helper.labelDict[conversionData.fromTag]
        cell.priceLabel.text = helper.symbolDict[conversionData.toTag]! + "0.00"
        cell.deltaLabel.text = "0.00" + "%"
    
        return cell
    }
    //MARK: private methods
    private func getPriceLabels(request: String){
        Alamofire.request(request, method: .post, parameters: nil, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
                //to get status code
                if let status = response.response?.statusCode {
                    switch(status){
                    case 201:
                        print("example success")
                    default:
                        print("error with response status: \(status)")
                    }
                }
                //to get JSON return value
                if let result = response.result.value {
                    let JSON = result as! NSDictionary
                    print(JSON)
                }
        }
    
    }
    
    
>>>>>>> b38c3d4630da25dbc73e9476a069ff0c72d7b26b
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
