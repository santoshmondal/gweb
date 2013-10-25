/*
 * package testcase;
 * 
 * import com.rediff.rest.resource.plugins.components.BaseRequestController;
 * 
 * public class PMongoTest { private final BaseRequestController
 * baseRequestController = new BaseRequestController();
 * 
 * public static void main(String args[]) { new PMongoTest().insert(); }
 * 
 * public void insert() { Plugin plugin =
 * Plugin.getPluginInfo(Constants.CF_FOLDER_NAME + Constants.FILE_SEPERATOR +
 * "subscription");
 * 
 * SubscriptionFlat sf = new SubscriptionFlat(); sf.setUsername("abc3");
 * sf.setArticleid("124"); PluginResponse pluginResponse =
 * baseRequestController.insertOrUpdate(plugin, sf, null, false);
 * 
 * String id_mongo = pluginResponse.get_id(); System.out.println("DONE::" +
 * id_mongo); } }
 */