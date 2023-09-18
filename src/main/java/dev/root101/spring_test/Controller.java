package dev.root101.spring_test;

import io.swagger.v3.oas.annotations.*;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;

@Tag(name = "Test Controller", description = "Test")
@RestController
@RequestMapping()
public class Controller {

    @GetMapping()
    @Operation(
            summary = "Test.",
            description = "Show a 'Hellou word' text."
    )
    public String test() {
        return "Hellou world";
    }
}
