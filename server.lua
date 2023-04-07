addEvent("giveCashMoney", true)
addEventHandler("giveCashMoney", root,
    function(money)
    	givePlayerMoney ( source, money )
    end
)

addEvent("takeMoneyBalance", true)
addEventHandler("takeMoneyBalance", root,
    function(money)
    	takePlayerMoney ( source, money )
    end
)

function msgBox (player, scrtype, message, type)
    triggerClientEvent(player, "Notify", player, type, message)
end