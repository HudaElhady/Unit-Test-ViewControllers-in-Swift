//
//  UnitTestViewControllersTests.swift
//  UnitTestViewControllersTests
//
//  Created by huda elhady on 12/31/19.
//  Copyright © 2019 huda.elhady. All rights reserved.
//

import XCTest
@testable import UnitTestViewControllers


class UnitTestViewControllersTests: XCTestCase {
    var presenter = PresenterMock()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
     // testing system is called System Under Testing (SUT)
    func makeSUT()-> MainViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(identifier: "MainViewController") as! MainViewController
        sut.presenter = presenter
        sut.loadViewIfNeeded()
        return sut
    }

    func testViewLoadCallsPresenter() {
        //Given
        let sut = makeSUT()
        sut.onLoadView()
        XCTAssertTrue(presenter.onViewDidLoadCalled)
    }
    
    func testEditViewCallsPresenter() {
           //Given
        let sut = makeSUT()
        sut.Edit()
        XCTAssertTrue(presenter.onEditCalled)
       }
    
    func testRender() {
         let sut = makeSUT()
        let propsObject = MainViewControllerProps(fullNmae: "Huda Elhady", title: "iOS Developer")
        sut.render(props: propsObject)
        XCTAssertEqual(sut.titleLabel.text, "iOS Developer")
        XCTAssertEqual(sut.fullNameLabel.text, "Huda Elhady")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
