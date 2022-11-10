public  class FutureMethod {
    @future
    public static void myFutureMethod(String fName, Integer age ) {
        System.debug('My name is '+ fname + '.And my age '+ age + '.');

    }

    public static void newFutureMethod(String fName, Integer age ) {
        System.debug('My name is '+ fname + '.And my age '+ age + '.');

    }
}

//FutureMethod.myFutureMethod('Nurdan' ,33);
//FutureMethod.newFutureMethod('Nurdan' ,33);