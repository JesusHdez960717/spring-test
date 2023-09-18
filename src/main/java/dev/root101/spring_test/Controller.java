package dev.root101.spring_test;

import io.swagger.v3.oas.annotations.*;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;

@Tag(name = "Account Controller", description = "Account")
@RestController
@RequestMapping("/test")
public class Controller {

    @GetMapping()
    @Operation(
            summary = "Test.",
            description = "Busca detalles de una cuenta."
    )
    public String test() {
        return "Hellou world";
    }
}
