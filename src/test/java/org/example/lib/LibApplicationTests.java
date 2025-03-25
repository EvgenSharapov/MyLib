package org.example.lib;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Import;
@Disabled
@Import(TestcontainersConfiguration.class)
@SpringBootTest
class LibApplicationTests {

    @Test
    void contextLoads() {
    }

}
