import UIKit
import  VisionKit


@objc(NtlDocumentCameraHelper)
class NtlDocumentCameraHelper: UIViewController {
    private func configueDocumentView(){
        let scanningDocumentVC = VNDocumentCameraViewController()
        scanningDocumentVC.delegate = self
        self.present(scanningDocumentVC, animated: true, completion:nil)
    }
}
 
extension NtlDocumentCameraHelper:VNDocumentCameraViewControllerDelegate{
    func documentCameraViewController(_ controller:VNDocumentCameraViewController,didFinishWith scan:VNDocumentCameraScan) {
        for pageNumber in 0..<scan.pageCount{
            let image = scan.imageOfPage(at: pageNumber)
            print(image)
        }

        controller.dismiss(animated: true, completion: nil)
    }
}
