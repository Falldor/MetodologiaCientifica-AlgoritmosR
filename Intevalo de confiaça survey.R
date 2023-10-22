dados <- read.csv("E:/Documentos/Faculdade/S8/Metodologia/dados.csv") 

Q1 <- dados$A.quanto.tempo.você.está.em.contato.com.a.área.da.Ciência.da.Computação..em.termos.de.interesse..estudo.e.curso...
confianca <- 0.95
resultado <- t.test(Q1, conf.level = confianca)

cat("Intervalo de Confiança para a Média:",round(resultado$conf.int, 0), "\n")

Q2 <- dados$Quanto.você.tinha.de.conhecimento.sobre.a.Ciência.da.Computação.antes.de.escolher.entrar.no.curso.
resultado <- t.test(Q2, conf.level = confianca)

cat("Intervalo de Confiança para a Média:",round(resultado$conf.int, 0), "\n")

Q3 <- dados$`Você acredita que a área de Ciência da Computação é uma área apenas voltada para a comunidade masculina? `
confianca <- 0.95
resultado <- t.test(Q3, conf.level = confianca)

cat("Intervalo de Confiança para a Média:",round(resultado$conf.int, 0), "\n")

Q4 <- dados$`Você já sofreu ou já presenciou qualquer espécie de preconceito por ser mulher na área de Ciência da Computação? `
confianca <- 0.95
resultado <- t.test(Q4, conf.level = confianca)

cat("Intervalo de Confiança para a Média:",round(resultado$conf.int, 0), "\n")


Q5 <- dados$`Você acredita que faltam incentivos de iniciação na área de Ciência da Computação voltados às mulheres? `

confianca <- 0.95
resultado <- t.test(Q5, conf.level = confianca)

cat("Intervalo de Confiança para a Média:",round(resultado$conf.int, 0), "\n")

Q6 <- dados$`Você acredita na área da Ciência da Computação como uma área confortável e propícia ao desenvolvimento pessoal feminino?`
confianca <- 0.95
resultado <- t.test(Q6, conf.level = confianca)

cat("Intervalo de Confiança para a Média:",round(resultado$conf.int, 0), "\n")


