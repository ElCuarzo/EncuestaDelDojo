package com.elcuarzo.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class Controlador {
	@GetMapping("/")
	public String indesBase() {
		return "index.jsp";
	}
	
	@GetMapping("/resultado")
	public String resultadosPagina() {
		return "resultados.jsp";
	}
	
	@GetMapping("/resultadosjava")
	public String resultadosJava() {
		return "resultados_java";
	}
	
	@PostMapping("/mostrarResultados")
	public String procesaInformacion(@RequestParam(value="nombre") String nombre,
									 @RequestParam(value="comentario") String comentario,
									 @RequestParam(value="dojo") String dojo,
									 @RequestParam(value="lenguaje") String lenguaje,
									 HttpSession sesion) {
		System.out.println(nombre);
		System.out.println(comentario);
		System.out.println(dojo);
		System.out.println(lenguaje);
		if(comentario == "") {
			comentario = "No estoy pensando en nada realmente...";
			sesion.setAttribute("comentario", comentario);
		}
		else {
			sesion.setAttribute("comentario", comentario);
		}
		if (lenguaje.equals("Java")) {
			sesion.setAttribute("nombre", nombre);
			sesion.setAttribute("dojo", dojo);
			sesion.setAttribute("lenguaje", lenguaje);
			return "/resultados_java.jsp";
		}
		else {
			sesion.setAttribute("nombre", nombre);
			sesion.setAttribute("dojo", dojo);
			sesion.setAttribute("lenguaje", lenguaje);
			return "/resultados.jsp";
		}
	}
}
