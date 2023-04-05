package code;
import java.util.*;

import code.services.*;
// import code.constants.*;
import code.constants.Constants.RULE;

public class FraudDetection {
    public static void main(String args[]) {
        connectToDatabase();
        verifyDatabase();

        System.out.println("\nStarting Fraud Detection...");
        for(RULE r:RULE.values()){
            r.applyRule();
        }

        System.out.println("\nPrinting Fraud Transactions...");   

        for(RULE r:RULE.values()){
            System.out.println("\n############################ Fraud Transactions according to " + r.getName() + " ############################");
            UtilsService.exportTableToFile(r.getOutputSchema()+".csv", r.getOutputSchema());
            UtilsService.printTableToScreen(r.getOutputSchema());
        }
    }

    private static void connectToDatabase(){
        System.out.println("\nConnected to Database");
    }

    private static void verifyDatabase() {
        // System.out.println("Please load the MySQL Database dump as mentioned in the README files before starting Fraud Detection");
        // System.exit(0);
    }
    
}