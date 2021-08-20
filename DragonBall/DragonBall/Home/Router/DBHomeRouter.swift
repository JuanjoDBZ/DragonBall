//
//  DBHomeRouter.swift
//  DragonBall
//
//  Created by Juan Esquivel on 14/07/21.
//  
//

import Foundation
import UIKit

class DBHomeRouter {
    public var view: DBHomeVC
    private var presenter: DBHomePresenter
    private var interactor: DBHomeInteractor
    init() {
        self.view = DBHomeVC()
        self.presenter = DBHomePresenter()
        self.interactor = DBHomeInteractor()
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
    }
}
extension DBHomeRouter: DBHomeRouterProtocol {
    /* Para mostrar una nueva pantalla con navigation controller.
    func showNewView() {
        Crea una instancia del router de la vista que quieres mostrar
        let newView = NewViewRouter(in: window)
        newView.showView()
    }*/
    func goToSales() {
        let salesViewController = DBSalesRouter().view
        self.view.navigationController?.pushViewController(salesViewController, animated: true)
    }
    func goToReferral() {
        let referralViewController = DBReferralRouter().view
        self.view.navigationController?.pushViewController(referralViewController, animated: true)
    }
    func goToWarehouse() {
        let warehouseViewController = DBWarehouseRouter().view
        self.view.navigationController?.pushViewController(warehouseViewController, animated: true)
    }
    func goToQuotation() {
        let quotationViewController = DBQuotationRouter().view
        self.view.navigationController?.pushViewController(quotationViewController, animated: true)
    }
    func goToShipping() {
        let shippingViewController = DBShippingRouter().view
        self.view.navigationController?.pushViewController(shippingViewController, animated: true)
    }
    func goToProfile() {
        let profileViewController = DBProfileRouter().view
        self.view.navigationController?.pushViewController(profileViewController, animated: true)
    }
}

