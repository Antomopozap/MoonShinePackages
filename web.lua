local web = {
    host = function (path, port)
        import("System.Net")

    local Server = HttpListener()
    Server.Prefixes:Add("http://localhost:"..port.."/")
    Server:Start()

    os.execute('start http://localhost:'..port.."/")
    print('Server open at: http://localhost:'..port.."/" )

    while true do
        local Context = Server:GetContext()
        local Response = Encoding.UTF8:GetBytes(file.read('index.html'))
    
        Context.Response.ContentLength64 = Response.Length
        Context.Response.OutputStream:Write(Response, 0, Response.Length)
    
        Context.Response:Close()
    end
    
    end

}
return web