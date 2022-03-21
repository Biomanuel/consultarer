enum TabBarTitle{
  consultAUser,
  inquiry_request,
}

String getTabBarTitle(TabBarTitle tabBarTitle){
  return tabBarTitle.toString().replaceAll("TabBarTitle.", "").replaceAll('_', '/').replaceAll('A', ' ');
}
String getTabBarTitleCapitalized(TabBarTitle tabBarTitle){
  String transType = getTabBarTitle(tabBarTitle);
  return transType.replaceFirst(transType.substring(0, 1), transType.substring(0, 1).toUpperCase());
}