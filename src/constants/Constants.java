package src.constants;
import java.util.function.Consumer;

import src.services.RuleService;

public class Constants {
    public enum RULE {
        RULE_1(x->RuleService.applyRule1(), ""),
        RULE_2(x->RuleService.applyRule2(x), "mismatch_state_frauds");

        private Consumer<String> rule;
        private String table_name;

        RULE(Consumer<String> rule, String table_name){
            this.rule = rule;
            this.table_name = table_name;
        }

        public void applyRule(){
            this.rule.accept(this.table_name);
        }

        public String getTableName() {
            return table_name;
        }

        public String getName() {
            return this.toString();
        }

    }

}
