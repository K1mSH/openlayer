package boot.mytemp.controller;

import ch.qos.logback.core.net.SyslogOutputStream;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OpenLayersController {

    @GetMapping("/map")
    public String viewMap(){
        //System.out.println("map");
        return "views/openlayers/openlayers";
    }

    @GetMapping("/")
    public String viewAnotherMap(){
        //System.out.println("map");
        return "views/openlayers/map";
    }
}
