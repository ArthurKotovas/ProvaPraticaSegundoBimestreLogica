programa{
	funcao inicio(){
		real saldos[5], rendimentos[5]
		
		para(inteiro i = 0; i < 5; i++){
			escreva("Digite o saldo ", i+1, ": R$ ")
			leia(saldos[i])
		}
		
		escreva("\n=== ORIGINAIS ===\n")
		para(inteiro i = 0; i < 5; i++){
			escreva("Conta ", i+1, ": R$ ", saldos[i], "\n")
		}
		
		para(inteiro i = 0; i < 5; i++){
			rendimentos[i] = saldos[i] * 0.015
			saldos[i] = saldos[i] + rendimentos[i]
		}
		
		escreva("\n=== RENDIMENTOS ===\n")
		para(inteiro i = 0; i < 5; i++){
			escreva("\nConta ", i+1, ":")
			escreva("\nSaldo anterior: R$ ", saldos[i] - rendimentos[i])
			escreva("\nRendimento: R$ ", rendimentos[i])
			escreva("\nSaldo novo: R$ ", saldos[i])
			escreva("\n------------------------")
		}
	}
}