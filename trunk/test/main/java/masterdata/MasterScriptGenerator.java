package masterdata;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MasterScriptGenerator {

	public static final String BASE = "/Users/santoshm/rediff/ws/tmpws/backyardApps/test/masterdata/";
	public static int channelTemplate = 1;
	public static Map<String, String> hm = new HashMap<String, String>();
	static {
		hm.put("news", "1");
		hm.put("cricket", "2");
		hm.put("election", "3");
		hm.put("getahead", "4");
		hm.put("money", "5");
		hm.put("movies", "6");
		hm.put("sports", "7");
	}

	public static void main(String args[]) throws Exception {
		/*generate("Publication.txt", "master_publication", null);
		generate("Microsite.txt", "master_microsite", null);
		generate("Publishoptions.txt", "master_publish_options", null);

		generate("GAC.txt", "master_gac", null);
		generate("Region.txt", "master_region", null);
		generate("Source.txt", "master_source", null);

		generate("Channel.txt", "master_channel", "channel");*/
		generate("SlideChannelTemplate.txt", "master_channel_template", "slide");
		generate("StoryChannelTemplates_updated.txt", "master_channel_template", "story");

		// sort("Region.txt");
	}

	public static void sort(String fileName) throws Exception {
		File file = new File(BASE + fileName);
		FileReader fr = new FileReader(file);
		BufferedReader br = new BufferedReader(fr);

		List<String> list = new ArrayList<String>();
		String str = br.readLine();
		while (str != null) {
			list.add(str);
			str = br.readLine();
		}

		Collections.sort(list);

		for (String string : list) {
			System.out.println(string);
		}
	}

	public static void generate(String fileName, String table, String type) throws Exception {

		File file = new File(BASE + fileName);
		FileReader fr = new FileReader(file);
		BufferedReader br = new BufferedReader(fr);

		int i = 1;
		String str = br.readLine();
		while (str != null) {

			if (type != null && type.equalsIgnoreCase("channel")) {

				str = str.trim();
				String displayName = str;
				if (str.equalsIgnoreCase("Getahead")) {
					displayName = "Get Ahead";
				}

				if (!str.equalsIgnoreCase("")) {
					System.out.println("d = { '_id' : '" + hm.get(str.toLowerCase()) + "', 'id' : '" + hm.get(str.toLowerCase()) + "', 'ftp_name' : '" + str.toLowerCase() + "', 'display_name' : '" + displayName + "', 'key_name' : '" + str.toUpperCase() + "'}");
					System.out.println("db." + table + "." + "insert(d)");
				}

			} else if (type != null && type.equalsIgnoreCase("story")) {

				str = str.trim();
				String split[] = str.split("\\s");
				str = split[0];
				String templateType = split[1];

				if (!str.endsWith("xsl")) {
					str = str + ".xsl";
				}

				String xid = getXid(str);
				if (!str.equalsIgnoreCase("") && xid != null) {
					System.out.println("d = { '_id' : '" + channelTemplate + "', 'id' : '" + channelTemplate + "', 'xid' : '" + xid + "', 'display_name' : '" + str + "', 'key_name' : '" + str + "', 'type' : '" + type + "', 'extra' : '" + templateType + "' }");
					System.out.println("db." + table + "." + "insert(d)");
					channelTemplate++;
				}

			} else if (type != null && type.equalsIgnoreCase("slide")) {
				str = str.trim();
				if (!str.endsWith("xsl")) {
					str = str + ".xsl";
				}

				String xid = getXid(str);
				if (!str.equalsIgnoreCase("") && xid != null) {
					System.out.println("d = { '_id' : '" + channelTemplate + "', 'id' : '" + channelTemplate + "', 'xid' : '" + xid + "', 'display_name' : '" + str + "', 'key_name' : '" + str + "', 'type' : '" + type + "', 'extra' : 'slide-show' }");
					System.out.println("db." + table + "." + "insert(d)");
					channelTemplate++;
				}
			} else {

				str = str.trim();
				if (!str.equalsIgnoreCase("")) {
					System.out.println("d = { '_id' : '" + i + "', 'id' : '" + i + "', 'display_name' : '" + str + "', 'key_name' : '" + str + "'}");
					System.out.println("db." + table + "." + "insert(d)");
				}
			}

			str = br.readLine();
			i++;

		}

		System.out.println("\n\n");
	}

	public static String getXid(String str) {

		String xidReturn = null;
		if (str.startsWith("news")) {
			xidReturn = hm.get("news");
		} else if (str.startsWith("cricket")) {
			xidReturn = hm.get("cricket");
		} else if (str.startsWith("election")) {
			xidReturn = hm.get("election");
		} else if (str.startsWith("getahead")) {
			xidReturn = hm.get("getahead");
		} else if (str.startsWith("money")) {
			xidReturn = hm.get("money");
		} else if (str.startsWith("movies")) {
			xidReturn = hm.get("movies");
		} else if (str.startsWith("sports")) {
			xidReturn = hm.get("sports");
		}

		return xidReturn;
	}
}
