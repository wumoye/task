html = '
<html>
<body>
<p><a href="zipcode.php?pref=13&city=1131160&id=49058">minami ikebukuro</a></p>
<p><a href="zipcode.php?pref=14&city=1131161&id=49059">minami ootsuka</a></p>
<p><a href="zipcode.php?pref=15&city=1131162&id=49060">minami nagasaki</a></p>
<p><a href="zipcode.php?pref=16&city=1131163&id=49061">mejiro</a></p>
</body>
</html>
'

test1 = "\">(.+?)<\/a>"

def scan(text,tr)
    text.scan(/#{tr}/) do |p|
        puts p
    end
end
scan(html,test1)


def scan_ar(text,tr,array)
    text.scan(/#{tr}/) do |p|
        array.push(p)
    end
end

pref = []
city = []
test2 = "pref=(.+?)&city"
test3 = "city=(.+?)&id"

scan_ar(html,test2,pref)
scan_ar(html,test3,city)
p pref
p city 