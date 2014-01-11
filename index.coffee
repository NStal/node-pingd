RS = require("raw-socket")
socket = RS.createSocket ({protocol: RS.Protocol.ICMP});
socket.on "message",(buffer,source)->
    if buffer[20] is 8
        console.log "recieve #{buffer.length} from #{source}"
        console.log "full package ",buffer.toString("base64")

