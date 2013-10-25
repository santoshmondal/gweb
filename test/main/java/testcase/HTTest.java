package testcase;


public class HTTest {

	private static final String MAILLINE = ":1:D:19:2012-01-25 19:00:46:29:email@rediffmailpro.com:Inbox:48:mail_nfs_path:1325442741.S.6051.20893.pro237-140:180:/newprohome2/680/rediffmailpro.com/-hostalerts/email/Inbox/1325442741.S.6051.20893.H.TktyeXN0YWxDbGVhckBrcnlwdG9zLmluAE5vdGlmaWNhdGlvbiBmcm9tIEtyeXB0b3MgLSBbIEhlYWx0aCA_.pro237-140:1:I:19:2012-01-25";
	private static final char SPL = ':';

	public static void main(String args[]) {

		for (int i = 0; i < MAILLINE.length();) {

			char ch = MAILLINE.charAt(i);

			String keyChars = "";
			while (ch != SPL) {
				keyChars += ch;

				ch = MAILLINE.charAt(++i);
			}

			if (!keyChars.equals("")) {

				int KEY = Integer.parseInt(String.valueOf(keyChars));
				int startIndex = i + 1;
				int endIndex = i + 1 + KEY;

				String value = "";
				if (MAILLINE.length() > endIndex) {
					value = MAILLINE.substring(startIndex, endIndex);
				} else {
					value = MAILLINE.substring(startIndex);
				}

				System.out.println("KEY::" + KEY + "::VALUE::" + value);

				i = endIndex;
			} else {
				i++;
			}
		}
	}
}
