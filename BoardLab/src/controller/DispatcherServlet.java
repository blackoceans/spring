package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HandlerMapping mapping;
       
    public DispatcherServlet() {
        super();
        System.out.println("==>DispatcherServlet ����");
    }
    
    @Override
    public void init() throws ServletException {
        //���� ������ mapping ��ü�� �ʱ�ȭ
        mapping = new HandlerMapping();
    }    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		process(request, response);
	}

	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"));
		
		//HandlerMapping�� ��û�Ͽ� path�� �´� Controller�� ����
		//��, Mapping�� path ������ ��ϵǾ� �ִ� Controller�� ���� �� 
		Controller ctrl = mapping.getController(path);
		//Controller�� �Լ� ȣ���ؼ� ��ü���� ������ �̷�� �� �� �ֵ��� ó��
		String viewPage = ctrl.handlerRequest(request, response);
		
		//���� �������� ������� �Ǵ� view ȭ������ �����̷�Ʈ(Redirect)
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	}
	
	
}