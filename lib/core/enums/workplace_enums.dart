enum WorkPlaceTitles{
  consultAUser,
  inquiry_request,
}

String getTabBarTitle(WorkPlaceTitles tabBarTitle){
  return tabBarTitle.toString().replaceAll("WorkPlaceTitles.", "").replaceAll('_', '/').replaceAll('A', ' ');
}
String getTabBarTitleCapitalized(WorkPlaceTitles tabBarTitle){
  String transType = getTabBarTitle(tabBarTitle);
  return transType.replaceFirst(transType.substring(0, 1), transType.substring(0, 1).toUpperCase());
}