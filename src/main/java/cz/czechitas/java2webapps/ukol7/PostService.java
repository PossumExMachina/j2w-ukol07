package cz.czechitas.java2webapps.ukol7;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class PostService {
    private final PostRepository postRepository;

    @Autowired

    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    public Page<Post> list(Pageable pageable) {
        return postRepository.findAll(pageable);
    }

    public Post singlePost(String slug){
        return postRepository.findPostBySlug(slug);
    }
}
