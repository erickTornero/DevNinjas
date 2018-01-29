package com.example.proyectofinal.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.example.proyectofinal.bean.UserBean;

@Controller
@SessionAttributes("nombreUsuario")
public class ViewController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView inicio(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView model = new ModelAndView();
		model.setViewName("login");
		return model;
	}

	@RequestMapping(value = "/registrarUsuario", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView registrarUsuario(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView model = new ModelAndView();
		UserBean userBean = new UserBean();
		model.addObject(userBean);
		model.setViewName("registroUsuario");
		return model;
	}

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView getFoosBySimplePath(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView model = new ModelAndView();

		SimpleDateFormat date = new SimpleDateFormat("DD/MM/YYYY");
		String fechaSistema = date.format(new Date());

		model.addObject("fechaSistema", fechaSistema);
		model.setViewName("welcome");

		return model;
	}

	@RequestMapping(value = "/evaluacion/start", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView empezarEvaluacion(@RequestParam("inputUser") String nombreUsuario) {
		ModelAndView model = new ModelAndView();
		model.addObject("nombreUsuario", nombreUsuario);
		model.setViewName("evaluation");

		return model;
	}
}
