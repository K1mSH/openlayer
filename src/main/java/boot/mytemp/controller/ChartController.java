package boot.mytemp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChartController {

    @GetMapping("/chart")
    public String viewC3Chart(){
        return "views/c3chart/c3chart";
    }

}
