package spiderhub.web.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import spiderhub.model.Project;

import spiderhub.model.dao.ProjectDao;
import spiderhub.model.dao.UserDao;

@Controller
@SessionAttributes("project")
public class ProjectController {
	@Autowired
	private ProjectDao projectDao;

	@Autowired
	private UserDao userDao;

	@RequestMapping("/projects/list.html")
	public String projects(ModelMap models) {
		models.put("projects", projectDao.getProjects());
		return "projects/list";
	}

	@RequestMapping("/projects/view.html")
	// optional required = false
	public String view(@RequestParam(required = false) Integer id, ModelMap models) {
		// get user from database and pass it to JSP
		models.put("project", projectDao.getProject(id));
		return "projects/view";

	}

	@RequestMapping(value = "/projects/add.html", method = RequestMethod.GET)
	public String add(ModelMap models) {
		models.put("project", new Project());
		return "projects/add";
	}

	@RequestMapping(value = "/projects/add.html", method = RequestMethod.POST)
	public String add(@ModelAttribute Project project) {
		project = projectDao.saveProject(project);
		return "redirect:list.html";
	}

	@RequestMapping(value = "/projects/edit.html", method = RequestMethod.GET)
	public String edit(@RequestParam Integer id, ModelMap models) {
		models.put("project", projectDao.getProject(id));
		return "projects/edit";
	}

	@RequestMapping(value = "/projects/edit.html", method = RequestMethod.POST)
	public String edit(@ModelAttribute Project project, SessionStatus status) {
		project = projectDao.saveProject(project);
		status.setComplete();
		return "redirect:list.html";
	}

	@RequestMapping(value = "/projects/disable.html", method = RequestMethod.GET)
	public String disable(@RequestParam Integer id, ModelMap models) {
		models.put("project", projectDao.getProject(id));
		return "projects/disable";
	}

	@RequestMapping(value = "/projects/disable.html", method = RequestMethod.POST)
	public String disable(@ModelAttribute Project project, SessionStatus status) {
		project = projectDao.saveProject(project);
		status.setComplete();
		return "projects/list";
	}

	@RequestMapping(value = "/projects/addUser.html", method = RequestMethod.GET)
	public String addUser(@RequestParam Integer id, ModelMap models) {
		models.put("users", userDao.getUsertoAddInProject());
		models.put("project", projectDao.getProject(id));
		return "projects/addUser";
	}

	@RequestMapping(value = "/projects/addUser.html", method = RequestMethod.POST)
	public String addUser(@ModelAttribute Project project) {
		project = projectDao.saveProject(project);
		return "redirect:list.html";
	}
}
