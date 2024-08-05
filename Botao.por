programa
{
	inclua biblioteca Objetos --> o
	inclua biblioteca Arquivos --> a
	inclua biblioteca Graficos --> g
	inclua biblioteca Sons --> s
	inclua biblioteca Mouse --> m
	inclua biblioteca Teclado --> t
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(1920, 1010)
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
		enquanto(nao t.tecla_pressionada(t.TECLA_ESC))
		{
			TelaInicio()
		}
		
	}

	funcao TelaInicio()
	{
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
		Botao(800, 500, 200, 100, falso, verdadeiro, "clique")
		g.renderizar()
	}

	funcao Botao(inteiro Px, inteiro Py, inteiro L, inteiro A, logico R, logico P, cadeia texto)
	{
		inteiro px = m.posicao_x()
		inteiro py = m.posicao_y()
		
		g.definir_cor(g.COR_AZUL)
		g.desenhar_retangulo(Px-2, Py-2, L+4, A+4, R, P)
		g.definir_cor(g.COR_PRETO)
		se(px >= Px e py <= Py+A e px <=Px+L e py >= Py )
		{
			g.definir_cor(g.COR_VERMELHO)
		}
		g.desenhar_retangulo(Px, Py, L, A, R, P)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_texto(Px+(L/2.5), Py+(A/2.5), texto)
		Botao_Click_Inicio(Px, Py, L, A)
	}

	funcao Botao_Click_Inicio(inteiro Px, inteiro Py, inteiro L, inteiro A)
	{
		inteiro px = m.posicao_x()
		inteiro py = m.posicao_y()
		
		se(m.botao_pressionado(m.BOTAO_ESQUERDO) e px >= Px e py <= Py+A e px <=Px+L e py >= Py )
		{
			CaixaDeTexto(u.sorteia( 1, 1900), u.sorteia( 1, 1000), 20, "ola mundo")
		}
		
	}

	funcao CaixaDeTexto(inteiro px, inteiro py, inteiro l, cadeia texto)
	{
		g.definir_cor(g.COR_PRETO)
		g.desenhar_texto(px, py, texto)
	}

	funcao CaixaEntrada()
	{
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1516; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */