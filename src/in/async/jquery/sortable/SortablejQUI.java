package in.async.jquery.sortable;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SortablejQUI
 */
@WebServlet("/SortablejQUI")
public class SortablejQUI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SESSION_LIST_ARTICLE_ORDER = "SESSION_LIST_ARTICLE_ORDER";
	private static final String REQUEST_ARTICLE_ORDER_LIST = "REQUEST_ARTICLE_ORDER_LIST";

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		List<JQArticle> list = null;

		String reqArticleOrder = request.getParameter("rOrder");
		if (reqArticleOrder != null) {

			System.out.println("New article order::" + reqArticleOrder);
			session.removeAttribute(SESSION_LIST_ARTICLE_ORDER);
			session.setAttribute(SESSION_LIST_ARTICLE_ORDER, reqArticleOrder);
		}

		String sesArticleOrder = (String) session
				.getAttribute(SESSION_LIST_ARTICLE_ORDER);
		list = getAllArticle(sesArticleOrder);

		request.setAttribute(REQUEST_ARTICLE_ORDER_LIST, list);
		RequestDispatcher rd = request.getRequestDispatcher("/jqobj/jq3.jsp");
		rd.forward(request, response);
		return;
	}

	private List<JQArticle> getAllArticle(String articleOrderList) {
		List<JQArticle> list = new ArrayList<JQArticle>();
		Map<String, JQArticle> articleMap = getArticleMap();

		if (articleOrderList != null) {

			String[] orderArr = articleOrderList.split(",");
			for (String element : orderArr) {
				list.add(articleMap.get(element));
			}

		} else {
			for (Map.Entry<String, JQArticle> obj : articleMap.entrySet()) {
				list.add(obj.getValue());
			}
		}

		return list;
	}

	private Map<String, JQArticle> getArticleMap() {
		Map<String, JQArticle> map = new LinkedHashMap<String, JQArticle>();

		String title = "Some basic title information has been published";
		String id = "sid";
		String author = "author";
		String source = "source";

		for (int i = 0; i < 10; i++) {
			map.put(id + i, new JQArticle(id + i, title + i, author + i, source
					+ i));
		}

		return map;
	}
}
