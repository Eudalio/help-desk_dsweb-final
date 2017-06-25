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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.eudalio.model.Chamado;
import br.com.eudalio.repository.ChamadoRepository;

@Controller
public class ChamadoController {
	
	@Autowired
	private ChamadoRepository chamadoRepository;
	
	
	
	@RequestMapping("/chamados")
	public String lista(Model model){
		List<Chamado> lista = chamadoRepository.findAll();
		model.addAttribute("chamados", lista);
		return "lista_chamados";
	}
	
	@RequestMapping("/chamados/add")
	public String adicionaForm(Model model){
		model.addAttribute("chamado", new Chamado());
		model.addAttribute("acao", "/chamados");
		return "insere_chamado";
	}
	
	@RequestMapping("/chamados/{codigo}/update")
	public String atualizaForm(@PathVariable Integer codigo, Model model){
		System.out.println("Código: " + codigo);
		Chamado c = chamadoRepository.findOne(codigo);
		System.out.println("Chamado: " + c);
		model.addAttribute("chamado", c);
		model.addAttribute("acao", "/chamados");
		return "altera_chamado";	
	}
	
	@PostMapping("/chamados")
	public String addChamado(@Valid Chamado chamado, BindingResult result, 
			Model model, RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			model.addAttribute("chamado", chamado);
			if (chamado == null) {
				model.addAttribute("acao", "/chamados/add");
				return "insere_chamado";
			} else {
				model.addAttribute("acao", "/chamados/" + chamado.getCodigo() + "/update");
				return "altera_chamado";
			}
		}
		
		if (chamado == null) {
			chamadoRepository.save(chamado);
			redirectAttributes.addFlashAttribute("msg", "Chamado inserido com sucesso.");
		} else {
			chamadoRepository.save(chamado);
			redirectAttributes.addFlashAttribute("msg", "Chamado atualizado com sucesso.");
		}
		return "redirect:/chamados";
	}

	@RequestMapping("/chamados/{codigo}/delete")
	public String deleteChamado(@PathVariable Integer codigo, RedirectAttributes redirectAttributes) {
		System.out.println("codigo: " + codigo);
		Chamado chamado = new Chamado(codigo);
		System.out.println("chamado: " + chamado);
		chamadoRepository.delete(chamado);
		redirectAttributes.addFlashAttribute("msg", "Chamado removido com sucesso.");
		return "redirect:/chamados";
	}
}
