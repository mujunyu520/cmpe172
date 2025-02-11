import abstract_factory.*;

public aspect Tesla {
    // Introductions
    private AbstractFactory Main.autoFactory = new TeslaFactory() ;
    public void Main.processOrder() {
    	autoFactory.takeOrder( "Sample Order" ) ;
    	autoFactory.buildOrder() ;
    }    
    
    // PointCut & Advice
    after(Main obj): target(obj) && call(void Main.print(..)) {
    	obj.processOrder() ;
    }    
    
    
}