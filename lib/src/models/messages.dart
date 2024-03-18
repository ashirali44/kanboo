List<ChatGameMessage> chatMessages = [
  ChatGameMessage(
    gameName: 'FFIA 01',
    lastMessage: 'Perfect 👌',
    unreadCount: 2,
    lastMessageTime: 'Today',
  ),
  ChatGameMessage(
    gameName: 'FIFA Leader Game',
    lastMessage: 'How\'s it going? 😀',
    unreadCount: 0,
    lastMessageTime: 'Yesterday',
  ),
  ChatGameMessage(
    gameName: 'FIFA New',
    lastMessage: 'Sure! Let\'s meet tomorrow.',
    unreadCount: 5,
    lastMessageTime: '9:10',
  ),
  ChatGameMessage(
    gameName: 'Game 4',
    lastMessage: 'Sounds good!',
    unreadCount: 1,
    lastMessageTime: 'Yesterday',
  ),
  ChatGameMessage(
    gameName: 'Game 5',
    lastMessage: 'See you later!',
    unreadCount: 0,
    lastMessageTime: '9:10',
  ),
  ChatGameMessage(
    gameName: 'Game 6',
    lastMessage: 'I\'ll be there.',
    unreadCount: 0,
    lastMessageTime: 'Yesterday',
  ),
  ChatGameMessage(
    gameName: 'Game 7',
    lastMessage: '👍',
    unreadCount: 0,
    lastMessageTime: '9:10',
  ),
  ChatGameMessage(
    gameName: 'Game 8',
    lastMessage: 'No problem!',
    unreadCount: 3,
    lastMessageTime: 'Yesterday',
  ),
  ChatGameMessage(
    gameName: 'Game 9',
    lastMessage: 'Let\'s do it!',
    unreadCount: 0,
    lastMessageTime: '9:10',
  ),
  ChatGameMessage(
    gameName: 'Game 10',
    lastMessage: 'Sure thing.',
    unreadCount: 0,
    lastMessageTime: 'Yesterday',
  ),
  ChatGameMessage(
    gameName: 'Game 11',
    lastMessage: 'I agree.',
    unreadCount: 0,
    lastMessageTime: '9:10',
  ),
  ChatGameMessage(
    gameName: 'Game 12',
    lastMessage: 'Can\'t wait!',
    unreadCount: 0,
    lastMessageTime: 'Yesterday',
  ),
  ChatGameMessage(
    gameName: 'Game 13',
    lastMessage: 'Let\'s meet at 10.',
    unreadCount: 0,
    lastMessageTime: '9:10',
  ),
  ChatGameMessage(
    gameName: 'Game 14',
    lastMessage: 'Awesome!',
    unreadCount: 0,
    lastMessageTime: 'Yesterday',
  ),
  ChatGameMessage(
    gameName: 'Game 15',
    lastMessage: '😄',
    unreadCount: 0,
    lastMessageTime: '9:10',
  ),
  ChatGameMessage(
    gameName: 'Game 16',
    lastMessage: 'Sounds good to me.',
    unreadCount: 0,
    lastMessageTime: 'Yesterday',
  ),
  ChatGameMessage(
    gameName: 'Game 17',
    lastMessage: 'Let\'s meet there.',
    unreadCount: 0,
    lastMessageTime: '9:10',
  ),
  ChatGameMessage(
    gameName: 'Game 18',
    lastMessage: 'I\'ll join.',
    unreadCount: 0,
    lastMessageTime: 'Yesterday',
  ),
  ChatGameMessage(
    gameName: 'Game 19',
    lastMessage: 'Great idea!',
    unreadCount: 0,
    lastMessageTime: '9:10',
  ),
  ChatGameMessage(
    gameName: 'Game 20',
    lastMessage: 'Count me in!',
    unreadCount: 0,
    lastMessageTime: 'Yesterday',
  ),
];

class ChatGameMessage {
  final String gameName;
  final String lastMessage;
  final int unreadCount;
  final String lastMessageTime;

  ChatGameMessage({
    required this.gameName,
    required this.lastMessage,
    required this.unreadCount,
    required this.lastMessageTime,
  });
}
