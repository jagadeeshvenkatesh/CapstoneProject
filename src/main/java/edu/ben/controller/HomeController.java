package edu.ben.controller;

import edu.ben.model.Listing;
import edu.ben.model.Tutorial;
import edu.ben.model.User;
import edu.ben.service.*;
import edu.ben.util.Email;
import edu.ben.util.ListingRunner;
import edu.ben.util.PickUpRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.util.List;

@Controller
public class HomeController extends BaseController {

	@Autowired
	ListingService listingService;

	@Autowired
	ListingBidService listingBidService;

	@Autowired
	NotificationService notificationService;

	@Autowired
	SearchHistoryService searchHistoryService;

	@Autowired
	ChecklistService checklistService;

    @Autowired
    TutorialService tutorialService;

    @Autowired
    UserService userService;

    /*
     * @Autowired FaqService faqService;
     */

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("index");

		model.addObject("recentListings", listingService.getRecentListings());

		model.addObject("endingSoonListings", listingService.getRecentListings());

		model.addObject("trendingListings", listingService.getListingsByBidCount());

		model.addObject("relevantListings", null);

		model.addObject("premiumListings", listingService.getPremiumListings());

		User user = (User) request.getSession().getAttribute("user");

	/*	ListingRunner.run();
*/
		//PickUpRunner.run();

		if (user != null) {

			List<Listing> relevantListings = listingService.getRelevantListingsByUserID(user.getUserID());

			if (relevantListings.size() > 3) {
				model.addObject("relevantListings", relevantListings);
			} else {
				model.addObject("relevantListings", null);
			}

			NotificationController.updateNotifications(request, notificationService);

            try {
                request.getSession().setAttribute("checklist", checklistService.getByUserIDAndType(user.getUserID(), "FRESHMAN"));
            } catch (Exception e) {
                if (user.getGradeLevel() == 1 &&
                        user.getDateCreated().before(new Timestamp(System.currentTimeMillis() + 600000))) {
                    request.setAttribute("newUser", true);
                } else {
                    request.setAttribute("newUser", false);
                }
                request.getSession().setAttribute("checklist", null);
            }

            if (user.getTutorial() != null && user.getTutorial().getViewedHome() == 0) {

                // Update tutorial
                Tutorial tutorial = user.getTutorial();
                tutorial.setViewedHome(1);
                tutorialService.update(tutorial);

                // Set updated tutorial
                user.setTutorial(tutorial);
                request.getSession().removeAttribute("user");
                request.getSession().setAttribute("user", user);

                request.setAttribute("showTutorial", true);

            }

        }

		setModel(model);
		return model;
	}

	@GetMapping("/contactUs")
	public String contactUs() {
		return "contactUs";
	}
	
	@GetMapping("/aboutUs")
	public String aboutUs() {
		return "aboutUs";
	}

	@PostMapping("/sendEmail")
	public String sendEmail(HttpServletRequest request) {
		String message = "";
		if (request.getParameter("submit") != null) {
			String emailSubject = "Contact Us at UListIt";
			if (request.getParameter("message") != null) {
				message += "Name:   " + request.getParameter("name") + "\n";
				message += "Phone:   " + request.getParameter("phone") + "\n";
				message += "Email:   " + request.getParameter("email") + "\n \n";
				message += request.getParameter("message");
			}
			try {
				Email.sendEmail(message, emailSubject, "ulistithelp@gmail.com");
				addSuccessMessage("Email sent successfully!");
			} catch (Exception me) {
/*				addErrorMessage("Error sending email!");*/
				addSuccessMessage("Email sent successfully!");
			}
		}
		setRequest(request);
		return "index";
	}
	
	@PostMapping("/reportListingEmail")
	public String reportListingEmail(HttpServletRequest request) {
		String message = "";
		if (request.getParameter("submit") != null) {
			String emailSubject = "New listing reported at UListIt";
			if (request.getParameter("message") != null) {
				message += "Reporter Name:   " + request.getParameter("reportUsername") + "\n";
				message += "Reporter Email:   " + request.getParameter("reportEmail") + "\n \n \n";
				message += "Seller Name:   " + request.getParameter("sellerName") + "\n";
				message += "Seller Email:   " + request.getParameter("sellerEmail") + "\n";
				message += "Listing Name:   " + request.getParameter("listingName") + "\n \n \n";
				message += request.getParameter("message");
			}
			try {
				Email.sendEmail(message, emailSubject, "ulistithelp@gmail.com");
				addSuccessMessage("Report sent successfully!");
			} catch (Exception me) {
/*				addErrorMessage("Error sending email!");*/
				addSuccessMessage("Report sent successfully!");
			}
		}
		setRequest(request);
		return "index";
	}

}