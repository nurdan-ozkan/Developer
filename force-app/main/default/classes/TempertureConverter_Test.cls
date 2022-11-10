@istest
public class TempratureConvertor_Test {
    @istest
    public static void showCelcius(){
     Decimal result = TempratureConvertor.FahrenheitToCelcius(75);
        System.assertEquals(23.8888888888888888888888888888889, result, 'Values are not matching');
        
    }

}