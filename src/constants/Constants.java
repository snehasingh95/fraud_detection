package src.constants;
import java.util.function.Consumer;

import src.services.RuleService;

/**
 * Stores all constants used in the entire project
 */

public class Constants {
    
    public final static String OUTPUT_FILE_PATH = "output/";

    public enum RULE {
        RULE_1(x->RuleService.applyRule1(x), "abnormal_amount_frauds"),
        RULE_2(x->RuleService.applyRule2(x), "mismatch_state_frauds");

        private Consumer<String> rule;
        private String tableName;

        RULE(Consumer<String> rule, String tableName){
            this.rule = rule;
            this.tableName = tableName;
        }

        public void applyRule(){
            this.rule.accept(this.tableName);
        }

        public String getTableName() {
            return tableName;
        }

        public String getName() {
            return this.toString();
        }

    }

}
