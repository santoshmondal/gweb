package in.async.strutspractice.fupload;

import java.io.File;

import com.opensymphony.xwork2.ActionSupport;

public class FileUpload extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String year;
	private File fileUpload;
	private String fileUploadContentType;
	private String fileUploadFileName;

	public String fileUpload() {

		/*
		 * return new StreamResult(new ByteArrayInputStream(
		 * fileUploadFileName.getBytes()));
		 */
		return SUCCESS;
	}

	public File getFileUpload() {
		return fileUpload;
	}

	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
	}

	public String getFileUploadContentType() {
		return fileUploadContentType;
	}

	public void setFileUploadContentType(String fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}

	public String getFileUploadFileName() {
		return fileUploadFileName;
	}

	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

}
