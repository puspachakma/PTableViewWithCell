
import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
 
        
        var imageArray = ["A","B","C"]
        var nameArray = ["Puspa","Vabna","Anu"]
        var ageArray = ["23","24","17"]
    
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
             
        return imageArray.count
            
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
                  
              cell.img.image = UIImage(named: imageArray[indexPath.row])
              
                 cell.name.text  = nameArray[indexPath.row]

            cell.age.text  = ageArray[indexPath.row]
          
                  cell.accessoryType = .disclosureIndicator
                  
              
                  
                  return cell
         
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 250
        }
    @IBOutlet weak var TableView: UITableView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
      
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
             let cell = storyboard?.instantiateViewController(identifier:  "ShowViewController") as! ShowViewController

             cell.Name = nameArray[indexPath.row]
             cell.img = UIImage(named: imageArray[indexPath.row])
             cell.Age = ageArray[indexPath.row]
             self.navigationController?.pushViewController(cell, animated: true)

    
}

}
