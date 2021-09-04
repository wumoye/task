text = '
    <html>
    <body>
    my name is <b>sato</b>.my name is <b>suzuki</b>.
    my name is <b>tanaka</b>.
    this is a <p>pen</p>.
    this is a <p>book</p>.
    </body>
    </html>
'

test1 = "<b>(.+?)<\/b>"
test2 = "<p>(.+?)<\/p>"

def aa(ttt,ww)
    ttt.scan(/#{ww}/) do |p|
        puts p
    end
end

aa(text,test1)
aa(text,test2)