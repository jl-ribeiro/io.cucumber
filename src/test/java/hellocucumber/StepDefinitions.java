package hellocucumber;

import io.cucumber.java.pt.*;

import static org.junit.Assert.*;

public class StepDefinitions {
    private int dia_max;
    private int diaMes;
    private String resultado;

    @Dado("que hoje é dia {int}")
    public void que_hoje_é_dia(Integer int1) {
        this.dia_max = int1.intValue();
    }
    @Dado("que {string} tem {string} dias")
    public void que_tem_dias(String string, String string2) {
        this.diaMes = Integer.parseInt(string2);
        this.ultimoDiaMes();
    }

    public void ultimoDiaMes() {
        resultado = (dia_max == diaMes ? "é" : "não é");
    }

    @Então("dia {int} {string} o ultimo dia do mês de {string}")
    public void dia_o_ultimo_dia_do_mês(Integer int1, String string, String string2) {
        assertEquals(string, resultado);
    }
}
