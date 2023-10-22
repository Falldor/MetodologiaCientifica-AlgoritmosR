dados <- read.csv("E:/Documentos/Faculdade/S8/Metodologia/AlgoritmosR/MetodologiaCientifica-AlgoritmosR//dados.csv")
colnames(dados)[5:8] <- c("Você acredita que a área de Ciência da Computação é uma área apenas voltada para a comunidade masculina? ",
                          "Você acredita que faltam incentivos de iniciação na área de Ciência da Computação voltados às mulheres? ", 
                          "Você acredita na área da Ciência da Computação como uma área confortável e propícia ao desenvolvimento pessoal feminino?",
                          "Você já sofreu ou já presenciou qualquer espécie de preconceito por ser mulher na área de Ciência da Computação? "
)

questoes <- data.frame(
  Q3 <- dados$`Você acredita que a área de Ciência da Computação é uma área apenas voltada para a comunidade masculina? `,
  Q4 <- dados$`Você já sofreu ou já presenciou qualquer espécie de preconceito por ser mulher na área de Ciência da Computação? `,
  Q5 <- dados$`Você acredita que faltam incentivos de iniciação na área de Ciência da Computação voltados às mulheres? `,
  Q6 <- dados$`Você acredita na área da Ciência da Computação como uma área confortável e propícia ao desenvolvimento pessoal feminino?`
)
library(likert)
likert_q1 <- likert(questoes, nlevels = 5)
colnames(likert_q1$results)[2:6] <- c("Discordo Totalmente", "Discordo Parcialmente", "Neutra", "Concordo Parcialmente", "Concordo Totalmente")
colnames(likert_q1$items)[1:4] <-c("Você acredita que a área de Ciência da Computação é uma área apenas voltada para a comunidade masculina? ",
                                   "Você já sofreu ou já presenciou qualquer espécie de preconceito por ser mulher na área de Ciência da Computação? ", 
                                   "Você acredita que faltam incentivos de iniciação na área de Ciência da Computação voltados às mulheres? ",
                                   "Você acredita na área da Ciência da Computação como uma área confortável e propícia ao desenvolvimento pessoal feminino?"
                                   
) 
likert_q1$results$Item[1:4] <- c("Você acredita que a área de Ciência da Computação é uma área apenas voltada para a comunidade masculina? ",
                                 "Você já sofreu ou já presenciou qualquer espécie de preconceito por ser mulher na área de Ciência da Computação? ", 
                                 "Você acredita que faltam incentivos de iniciação na área de Ciência da Computação voltados às mulheres? ",
                                 "Você acredita na área da Ciência da Computação como uma área confortável e propícia ao desenvolvimento pessoal feminino?"
                                 
)

graficoLikert <-likert.bar.plot(likert_q1,plot.percents=F,legend = "Legenda", low.color = "pink", text.size=4) + ggtitle("") + labs( x = "Questões", y = "Porcentagem") + theme_minimal() + theme(legend.position = "bottom") +
  theme(axis.text.x = element_text(size = 13))
print(graficoLikert)
