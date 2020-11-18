import UIKit

func pegaFone(handler: (String) -> Void) {
    print("indo pegar fone")
    handler("fone2")
    print("pegando fone")
    print("peguei o fone")
}

pegaFone(handler: { (msg) in
    print("espetando", msg)
})
