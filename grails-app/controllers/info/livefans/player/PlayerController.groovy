package info.livefans.player

import info.livefans.request.RequestUtils
import info.livefans.Player

class PlayerController {

	static allowedMethods = [index: "GET", show: "GET"]

    def index() { }

    def show(Long id) {
		[player: RequestUtils.secureDomainGet(Player, id)]    	
    }
}
