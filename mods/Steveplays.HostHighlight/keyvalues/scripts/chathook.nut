global function SP_AddCallback

void function SP_AddCallback() {
    AddCallback_OnReceivedSayTextMessage(OnReceivedSayTextMessage_Callback)
}

ClServer_MessageStruct function OnReceivedSayTextMessage_Callback(ClServer_MessageStruct message) {
    if (NSIsPlayerIndexLocalPlayer(message.player.GetPlayerIndex())) {
        // This player is the server host, add the "[SERVER HOST] " prefix
        message.message = StringReplace(message.message, message.player.GetName(), "[SERVER HOST] " + message.player.GetName(), true, false)
    }

    return message
}
