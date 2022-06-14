package runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/resources/features",
        glue = {"stepDefinitions"},
        plugin = {"json:target/cucumber.json","json:target/cucumber-reports/Cucumber.json"},
        dryRun = false,
        publish =false,
        tags = "@AllCases"
)
public class TestRunner {
}
