#language: pt
Funcionalidade: Hoje é o ultimo dia do mês?
    A fim de verificar o ultimo dia do mês
    E com finalidade de finalizar as pendências dentro do prazo
    Deseja-se ver se dia 30 é ou não o último dia do mês

Esquema do Cenário:
    Dado que hoje é dia 30
    E que "<Mês>" tem "<diasMês>" dias
    Então dia 30 "<Resposta>" o ultimo dia do mês de "<Mês>"
Exemplos:
    |   Mês   | diasMês | Resposta |
    |Janeiro  |   31    |  não é   |
    |Fevereiro|   28    |  não é   |
    |Março    |   31    |  não é   |
    |Abril    |   30    |     é    |
    |Maio     |   31    |  não é   |
    |Junho    |   30    |     é    |
    |Julho    |   31    |  não é   |
    |Agosto   |   31    |  não é   |
    |Setembro |   30    |     é    |
    |Outubro  |   31    |  não é   |
    |Novembro |   30    |     é    |
    |Dezembro |   31    |  não é   |