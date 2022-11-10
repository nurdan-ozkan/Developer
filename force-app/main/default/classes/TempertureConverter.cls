public  class TempertureConverter {
    public static Decimal FahrenheitToCelcius(Decimal fn) {
        Decimal cl = (fn-32)*5/9;
        return cl;
    }
}
