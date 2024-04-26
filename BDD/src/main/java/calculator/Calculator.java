package calculator;

public class Calculator {
    public int add(int a, int b) {
        return a + b;
    }

    public int calculate(int value1, int value2, String op) throws Exception {
        switch (op){
            case "*":
                return value1 * value2;
            case "/":
                return value1 / value2;
            case "^":
                return (int) Math.pow(value1, value2);
            default:
                throw new Exception("Invalid Operation");
        }
    }
}