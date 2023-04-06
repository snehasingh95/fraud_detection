package src.constants;
import java.util.function.Consumer;

import src.services.RuleService;

public class Constants {
    public enum RULE {
        RULE_1(x->RuleService.applyRule1(), ""),
        RULE_2(x->RuleService.applyRule2(), "");

        private Consumer<Void> rule;
        private String outputSchema;

        RULE(Consumer<Void> rule, String outputSchema){
            this.rule = rule;
            this.outputSchema = outputSchema;
        }

        public void applyRule(){
            this.rule.accept(null);
        }

        public String getOutputSchema() {
            return outputSchema;
        }

        public String getName() {
            return this.toString();
        }

    }

}
