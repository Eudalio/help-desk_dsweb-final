package br.com.eudalio.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController
{

   @RequestMapping("/")
   public ModelAndView index()
   {
      return new ModelAndView("redirect:/show_login");
   }
}
