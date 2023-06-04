package com.jhomlala.better_player

class BetterPlayerTrack {
    var type: Int = 0
    var name: String = ""
    var index: Int = 0
    var isSupported: Boolean = false

    constructor(type: Int, name: String, index: Int, isSupported: Boolean) {
        this.type = type
        this.name = name
        this.index = index
        this.isSupported = isSupported
    }
}