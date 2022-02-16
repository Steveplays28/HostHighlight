global function HostHighlightInit

ClClient_MessageStruct function OnReceivedSayTextMessage_Callback(ClClient_MessageStruct message) {
    if (NSIsPlayerIndexLocalPlayer(message.player.GetPlayerIndex())) {
        // This player is the server host, add the "[SERVER HOST] " prefix
        message.playerName = "[SERVER HOST] " + message.playerName
    }

    return message
}

void function HostHighlightInit() {
    AddCallback_OnReceivedSayTextMessage(OnReceivedSayTextMessage_Callback)
}
