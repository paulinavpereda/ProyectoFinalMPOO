struct AyudaSwift{
  //  arreglo de diccionarios

  var diccionarioArray: [[String : Double]]
  //var diccionarioTupla: [(String:Int)]

  init(){
    diccionarioArray = []
  }

  mutating func addItem(cadena: String, numerito: Double){
    let mini_dict = [cadena : numerito]
    //let mini_tupla = (cadena, numerito)
    diccionarioArray.append(mini_dict)
  }

  func showItems(){
    for mini_dict in diccionarioArray{
      print(mini_dict)
    }
  }

  mutating func removeItem(cadena: String, numerito: Double){
    var i = 0;
    for var dicto in diccionarioArray{
      if let valor = dicto[cadena]{
        let total = valor - numerito
        print(cadena, total, i)
        dicto[cadena] = total
        diccionarioArray[i] = dicto
      } 
      i += 1
    }
  }
}

var dictPrueba = AyudaSwift()
dictPrueba.addItem(cadena: "hola", numerito: 3.4)
dictPrueba.addItem(cadena: "adios", numerito: 1.1)
dictPrueba.addItem(cadena: "bad", numerito: 8.2)
dictPrueba.addItem(cadena: "good", numerito: 10.3)

dictPrueba.showItems()

dictPrueba.removeItem(cadena: "hola", numerito:1.0)
dictPrueba.removeItem(cadena: "good", numerito:5.0)

dictPrueba.showItems()