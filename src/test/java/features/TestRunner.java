package features;


import com.intuit.karate.junit5.Karate;


public class TestRunner {

    @Karate.Test
    Karate getAPITest(){
        return Karate.run("test").relativeTo(getClass()).tags("@wip");
    }

}
