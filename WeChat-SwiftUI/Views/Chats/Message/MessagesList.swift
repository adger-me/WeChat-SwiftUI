import SwiftUI

struct MessagesList: View {
  let messages: [Message]

  var body: some View {
    List {
      ForEach(messages) {
        MessageRowText(message: $0)
          .listRowInsets(.init(top: 8, leading: 12, bottom: 8, trailing: 12))
      }
    }
  }
}

struct MessagesList_Previews: PreviewProvider {
  static var previews: some View {
    MessagesList(messages: [Message.textTemplate, Message.textTemplate2])
  }
}