programa {
    funcao inicio() {
        inteiro visitas[5][7]
        cadeia nomesAreas[5], nomesDias[7] = {"Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sabado"}
        
        escreva("Digite os nomes das areas:\n")
        para(inteiro i = 0; i < 5; i++) {
            escreva("Nome ", i+1, ": ")
            leia(nomesAreas[i])
        }
        escreva("\nDigite o numero de visitas em cada dia:\n")
        para(inteiro i = 0; i < 5; i++) {
            escreva("\nArea: ", nomesAreas[i], "\n")
            para(inteiro j = 0; j < 7; j++) {
                escreva("Numero de visitas ", nomesDias[j], ": ")
                leia(visitas[i][j])
            }
        }
        escreva("\nResumo visitas:\n")
        para(inteiro i = 0; i < 5; i++) {
            escreva(nomesAreas[i], "\t")
            para(inteiro j = 0; j < 7; j++) {
                escreva(visitas[i][j], "\t")
            }
            escreva("\n")
        }
        inteiro diaMaisVisitado = encontrarDiaMaisVisitado(visitas)
        inteiro totalVisitasDia = calcularTotalDia(visitas, diaMaisVisitado)
        escreva("\nRESULTADOS:")
        escreva("\nDia mais visitado: ", nomesDias[diaMaisVisitado])
        escreva("\nTotal de visitas no dia: ", totalVisitasDia)
    }
    funcao inteiro encontrarDiaMaisVisitado(inteiro visitas[][]) {
        inteiro totalPorDia[7]
        inteiro maiorTotal = 0
        inteiro diaMaisVisitado = 0
        
        para (inteiro j = 0; j < 7; j++) {
            totalPorDia[j] = 0
        }
        para (inteiro j = 0; j < 7; j++) {
            para (inteiro i = 0; i < 5; i++) {
                totalPorDia[j] = totalPorDia[j] + visitas[i][j]
            }
        }
        para (inteiro j = 0; j < 7; j++) {
            se (totalPorDia[j] > maiorTotal) {
                maiorTotal = totalPorDia[j]
                diaMaisVisitado = j
            }
        }
        retorne diaMaisVisitado
    }
    funcao inteiro calcularTotalDia(inteiro visitas[][], inteiro dia) {
        inteiro total = 0
        para(inteiro i = 0; i < 5; i++) {
            total += visitas[i][dia]
        }
        retorne total
    }
}