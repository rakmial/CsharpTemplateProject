using Microsoft.AspNetCore.Mvc;
using TemplateClass.Models;

namespace TemplateProject.Controllers
{
  public class HomeController : Controller
  {

    [Route("/")]
    public ActionResult TemplateClass() { 
      TemplateClass model = new TemplateClass();
      model.Property = "";
      return View(model);
     }

     [Route("/form")]
     public ActionResult Form() { return View(); }

     [Route("/receivesPost")]
     public ActionResult ReceivesPost(string property)
     {
       TemplateClass model = new TemplateClass();
       model.Property = property;
       return View(model);
     }
  }
}