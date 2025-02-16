import XCTest

class IMCUITests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        continueAfterFailure = false
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    @MainActor
    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        
        // Simula a entrada do peso
        let ex75TextField = app.textFields["Ex: 75"]
        ex75TextField.tap()
        ex75TextField.tap()  // Para garantir o foco completo
        ex75TextField.typeText("60")
        
        // Simula a entrada da altura
        let heightTextField = app.textFields["Ex: 1.75"]
        heightTextField.tap()
        heightTextField.tap()
        
        heightTextField.typeText("1.60")
        
        // Aqui você pode adicionar a verificação do resultado do cálculo
        // Exemplo: verificando se o botão de calcular foi clicado e o valor do IMC está correto
        let calculateButton = app.buttons["Calcular"]
        calculateButton.tap()
        
    }
}

