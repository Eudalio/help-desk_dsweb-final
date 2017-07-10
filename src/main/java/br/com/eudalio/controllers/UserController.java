package br.com.eudalio.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.eudalio.model.Chamado;
import br.com.eudalio.model.Usuario;
import br.com.eudalio.service.UsuarioService;

@Controller
public class UserController {
	@Autowired
	private UsuarioService usuarioService;

	@RequestMapping("/form_usuario")
	public ModelAndView cadastrar_usuario(){
		ModelAndView mv = new ModelAndView();
		mv.addObject("usuario", new Usuario());
		mv.setViewName("cadastrar_usuario");
		return mv;
//		return "usuario/cadastrar";
	}
	
	@RequestMapping("/usuarios")
	public String listaUsuarios(Model model){
		List<Usuario> lista = usuarioService.getLista();
		model.addAttribute("usuario", lista);
		return "lista_usuarios";
	}
	
	@RequestMapping("/usuarios/add")
	public String adicionaForm(Model model){
		model.addAttribute("usuario", new Usuario());
		return "insere_usuario";
	}
	
	@RequestMapping("/usuarios/{id}/update")
	public String atualizaForm(@PathVariable Integer id, Model model){
		Usuario usuario = usuarioService.findById(id);
		model.addAttribute("usuario", usuario);
		return "altera_usuario";	
	}
	
	@RequestMapping("/usuarios/{id}/delete")
	public String deleteUsuario(@PathVariable Integer id, RedirectAttributes redirectAttributes) {
		Usuario usuario = new Usuario(id);
		usuarioService.delete(usuario);
		redirectAttributes.addFlashAttribute("msg", "Usuário removido com sucesso.");
		return "redirect:/usuarios";
	}
	
	@PostMapping("/usuarios")
	public String addUsuario(@Valid Usuario usuario, BindingResult result, 
			Model model, RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			model.addAttribute("usuario", usuario);
			if (usuario == null) {
				model.addAttribute("/chamados/add");
				return "insere_usuario";
			} else {
				model.addAttribute("/usuarios" + usuario.getId() + "/update");
				return "altera_usuario";
			}
		}
		
		if (usuario == null) {
			usuarioService.save(usuario);
			redirectAttributes.addFlashAttribute("msg", "Usuário inserido com sucesso.");
		} else {
			usuarioService.save(usuario);
			redirectAttributes.addFlashAttribute("msg", "Usuário atualizado com sucesso.");
		}
		return "redirect:/usuarios";
	}
	
}
