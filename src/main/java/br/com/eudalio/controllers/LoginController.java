package br.com.eudalio.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.eudalio.model.Usuario;
import br.com.eudalio.repository.UsuarioRepository;

@Controller
public class LoginController {
	
	@Autowired
	private UsuarioRepository usuarioRepository;

	@RequestMapping("/show_login")
	public ModelAndView show_login(){
		ModelAndView mv = new ModelAndView();
		mv.addObject("usuario", new Usuario());
		mv.setViewName("form_login");
		return mv;
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(Model model, String error, String logout){
		if(error != null)
			model.addAttribute("error", "Usuário e/ou senha inválidos.");
		
		if(logout != null)
			model.addAttribute("msg", "Deslogou");
		
		return "form_login";
	}
	
//	@RequestMapping(value="/cadastrar", method = RequestMethod.POST)
//	public String login(@Valid @ModelAttribute("usuario") Usuario usuario, BindingResult res, HttpServletRequest request, final RedirectAttributes red ) {
//		if(!res.hasFieldErrors("login") && !res.hasFieldErrors("senha")){
//			Usuario userlogin = usuarioRepository.findByUsername(usuario.getUsername());
//			if(userlogin != null && usuario.getSenha().equals(userlogin.getSenha()));
//				request.getSession().setAttribute("usuario", userlogin);
//				request.setAttribute("usuario", usuario);
//				return "redirect:/chamados";
//		}
//		
//		String msgerro = "Usuário e/ou senha incorretos";
//		red.addFlashAttribute("erro", msgerro);
//		return "redirect:/";
//	}
}
  