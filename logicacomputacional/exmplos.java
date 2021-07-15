import javax.swing.JOptionPane;

class Main {
  public static void main(String[] args) {
    String s = "Errou!";
    int acertos = 0;
    String resposta1 = JOptionPane.showInputDialog(null,"Qual a piada do pintinho doidão?");
    if(resposta1.equals("miau")){
      s = "Acertou";
      acertos ++;
    }
    JOptionPane.showMessageDialog(null, s);

    String resposta2 = JOptionPane.showInputDialog(null,"O que é um ponto amarelo no alto de um prédio?");
    if(resposta2.equals("fandangos suicida")){
      s = "Acertou";
      acertos ++;
    }
    else{
      s = "Errou";
    }
    JOptionPane.showMessageDialog(null, s);
    JOptionPane.showMessageDialog(null, "Você acertou "+acertos+" respostas!");    
  }
}
