package web.util.filter;

import java.io.CharArrayWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

public class SimpleResponseWrapper extends HttpServletResponseWrapper {

	protected PrintWriter out;
	protected CharArrayWriter output;

	public SimpleResponseWrapper(HttpServletResponse response) {
		super(response);
		output = new CharArrayWriter();
	}

	@Override
	public PrintWriter getWriter() throws IOException {
		return new PrintWriter(output);
	}

	@Override
	public String toString() {
		return output.toString();
	}
}
