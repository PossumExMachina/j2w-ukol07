package cz.czechitas.java2webapps.ukol7;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PostController {
    private final PostService postService;

    public PostController(PostService postService) {
        this.postService = postService;
    }


    @GetMapping("/")
    public ModelAndView zakladniSeznam(Pageable pageable) {
        return new ModelAndView("index")
                .addObject("post", postService.list(pageable));
    }

    @GetMapping("/post/{slug}")
    public ModelAndView onePost(@PathVariable String slug) {
        return new ModelAndView("post")
                .addObject("post", postService.singlePost(slug));
    }

}
