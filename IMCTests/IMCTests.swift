//
//  IMCTests.swift
//  IMCTests
//
//  Created by Luiza on 15/02/25.
//

import XCTest
@testable import IMC

class IMCTests: XCTestCase {

    var vc: ViewController! // Declaração da variável vc

    override func setUpWithError() throws {
        super.setUp()

        // Carregar o storyboard e instanciar o ViewController
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        vc = storyboard.instantiateViewController(withIdentifier: "teste") as? ViewController
        vc.loadViewIfNeeded() // Carrega a view do ViewController
    }

    override func tearDownWithError() throws {
        vc = nil // Limpa a instância após cada teste
        super.tearDown()
    }

    func testShowResultsWithIMC23() throws {
        // Configura o valor do IMC como 23
        vc.imc = 23.0
        
        // Chama a função showResults()
        vc.showResults()
        
        // Verifica se o resultado é "Peso ideal"
        XCTAssertEqual(vc.lbResult.text, "23: Peso ideal", "O resultado esperado para IMC 23 é 'Peso ideal'")
        
        // Verifica se a imagem correta foi configurada
        XCTAssertEqual(vc.ivResult.image, UIImage(named: "ideal"), "A imagem esperada para 'Peso ideal' é 'ideal'")
        
        // Verifica se a visualização de resultado está visível
        XCTAssertFalse(vc.viResult.isHidden, "A visualização de resultado não deve estar oculta")
    }
}
