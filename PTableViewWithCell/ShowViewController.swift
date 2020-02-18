
import UIKit

class ShowViewController: UIViewController {

    @IBOutlet weak var ShowAge: UILabel!
    @IBOutlet weak var ShowName: UILabel!
    @IBOutlet weak var Showimg: UIImageView!
    
    var img:UIImage?
      var Name:String = ""
      var Age:String = ""
      
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    Showimg.image = img
    ShowName.text = Name
    ShowAge.text = Age

    }
}
