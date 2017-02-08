package com.ironyard.controller;

import com.ironyard.data.Movie;
import com.ironyard.repo.MovieRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by jasonskipper on 2/7/17.
 */
@Controller
public class MovieController {

    @Autowired
    MovieRepo MovieRepo;

    @RequestMapping(path = "/secure/movie/create", method = RequestMethod.POST)
    public String createMovie(Model dataToJsp,
                              @RequestParam String name,
                              @RequestParam String description,
                              @RequestParam String category,
                              @RequestParam String mpaaRating,
                              @RequestParam String posterUrl,
                              @RequestParam Double rating){

        Movie tmp = new Movie(name, description , category, mpaaRating, rating, posterUrl);

        MovieRepo.save(tmp);
        //if saved add message
        if(tmp.getId()>0) {
            dataToJsp.addAttribute("msg_success",
                    String.format("Movie '%s' Created, You're a Director", name));
        }
        return "/secure/create";
    }


    @RequestMapping(path = "/secure/movies")
    public String listMovies(Model xyz){
        String destination = "home";
        Iterable found = MovieRepo.findAll();

        // convert to lists because i like them
        Iterator<Movie> itr = found.iterator();
        List<Movie> data = new ArrayList();
        while(itr.hasNext()){
            data.add(itr.next());
        }

        // put list into model
        xyz.addAttribute("mList", data);

        // go to jsp
        return destination;
    }
}
