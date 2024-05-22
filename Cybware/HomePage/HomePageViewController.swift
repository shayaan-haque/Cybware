//
//  HomePageViewController.swift
//  Cybware
//
//  Created by Batch-2 on 21/05/24.
//

import UIKit

class HomePageViewController: UIViewController ,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return DataModel.firstSection.count
        case 1:
            return DataModel.section1.count
        case 2 :
            return DataModel.section2.count
        case 3 :
            return DataModel.section3.count
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section{
    case 0:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstSection", for: indexPath) as! FirstSectionCollectionViewCell
                let data = DataModel.firstSection[indexPath.item]
                cell.imageView.image = UIImage(named: data.imageName)
                cell.textLabel.text = data.textName
                return cell
    case 1:
               let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Progress", for: indexPath) as! ProgressCollectionViewCell
                let data = DataModel.section1[indexPath.item]
                cell.imageView.image = UIImage(named: data.imageName)
                cell.textLabel.text = data.subjectName
               return cell
            
    case 2:
               let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Certificate", for: indexPath) as! CertificateCollectionViewCell
            let data = DataModel.section2[indexPath.item]
            cell.imageView.image = UIImage(named: data.imageName)
               return cell
            
    case 3:
               let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Highlights", for: indexPath) as! HighlightsCollectionViewCell
            let data = DataModel.section3[indexPath.item]
            cell.imageView.image = UIImage(named: data.imageName)
            cell.newsDate.text = formatDate(data.date)
            cell.newsHeadline.text = data.title
            cell.newsSource.text = data.source
               return cell

            
    default:
            fatalError("Unexpected section index")
    }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    required init?(coder: NSCoder)
    {
        super.init(coder: coder)
        self.tabBarItem.title = "Homepage"
        self.tabBarItem.image = UIImage(systemName: "homekit")
    }
    
    @IBOutlet var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let FirstSectionNib = UINib(nibName: "FirstSection", bundle: nil)
        collectionView.register(FirstSectionNib, forCellWithReuseIdentifier: "FirstSection")
        
        let ProgressNib = UINib(nibName: "Progress", bundle: nil)
        collectionView.register(ProgressNib, forCellWithReuseIdentifier: "Progress")
        
        let highlightsNib = UINib(nibName: "Highlights", bundle: nil)
        collectionView.register(highlightsNib, forCellWithReuseIdentifier: "Highlights")
        
        let certificateNib = UINib(nibName: "Certificate", bundle: nil)
        collectionView.register(certificateNib, forCellWithReuseIdentifier: "Certificate")
        
        collectionView.setCollectionViewLayout(generateLayout(), animated: true)
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func generateLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout {
            (section,env) -> NSCollectionLayoutSection? in
            switch section {
                
            case 0:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.9))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.90), heightDimension: .absolute(70))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPagingCentered
                return section
                
            case 1:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.9))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.90), heightDimension: .absolute(100))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPagingCentered
                return section
                
            case 2:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
//                item.contentInsets.bottom = 15
                item.contentInsets.leading = 15
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.90), heightDimension: .absolute(250))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPagingCentered
                
                return section
                
            case 3:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
//                item.contentInsets.bottom = 15
                item.contentInsets.leading = 15
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .absolute(350))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
//                section.orthogonalScrollingBehavior = .groupPagingCentered
                
                return section

            default:
                return nil
            }
        }
        return layout
    }

    // Helper function to format the date
        private func formatDate(_ date: Date) -> String {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            formatter.timeStyle = .none
            return formatter.string(from: date)
        }
    
}
