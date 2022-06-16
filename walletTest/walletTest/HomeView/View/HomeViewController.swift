//
//  HomeViewController.swift
//  walletTest
//
//  Created by admin on 14.06.2022.
//

import UIKit

protocol HomeViewProtocol: AnyObject {
    func showBalance(massage: String)
}

class HomeViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var presenter: HomePresenterProtocol!
    var delegate: ContainerViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter = HomePresenter(view: self)
        
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: PersonCollectionViewCell.reuseId, bundle: nil), forCellWithReuseIdentifier: PersonCollectionViewCell.reuseId)
        collectionView.register(UINib(nibName: AddCollectionViewCell.reuseId, bundle: nil), forCellWithReuseIdentifier: AddCollectionViewCell.reuseId)
    }
    
    @IBAction func menuBtnTapped(_ sender: Any) {
        delegate?.togleMenu()
    }
    
    @IBAction func addBalanceBtnTapped(_ sender: Any) {
        presenter.addBalance()
    }
    
}
//MARK: - HomeViewProtocol
extension HomeViewController: HomeViewProtocol {
    func showBalance(massage: String) {
        print(massage)
    }
}
//MARK: - UICollectionViewDelegate, UICollectionViewDataSource
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AddCollectionViewCell.reuseId, for: indexPath) as! AddCollectionViewCell
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PersonCollectionViewCell.reuseId, for: indexPath) as! PersonCollectionViewCell
            return cell
        }
    }
}
