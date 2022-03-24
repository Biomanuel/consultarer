enum ChatTitles{
  AllOConversations,
  MessageORequest,
}

String getChatTitle(ChatTitles tabBarTitle){
  return tabBarTitle.toString().replaceAll("ChatTitles.", "").replaceAll('O', ' ');
}
// String getChatTitleCapitalized(ChatTitles tabBarTitle){
//   String transType = getChatTitle(tabBarTitle);
//   return transType.replaceFirst(transType.substring(0, 1), transType.substring(0, 1).toUpperCase());
// }