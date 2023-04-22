local WebBridge = {

    node = function (data)
        file.write('bin/index.js', data)
        os.execute('node bin/index.js')
        debug.sleep(0.1)
        os.remove("bin/index.js")
    end,

    html= function (data)
        file.write('bin/index.html', data)
        os.execute('start bin/index.html')
        debug.sleep(0.1)
        io.read();
        os.remove("bin/index.html")
    end,

    py = function (data)
        file.write('bin/index.py', data)
        os.execute('python bin/index.py')
        debug.sleep(0.1)
        os.remove("bin/index.py")
    end
}
return WebBridge