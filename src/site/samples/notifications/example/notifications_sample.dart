import "dart:async" as BB;import "dart:html" as h;class q{static const  s="Chrome";static const  t="Safari";final  n;final  minimumVersion;const q(this.n,[this.minimumVersion]);}class u{const u();}class v{final  name;const v(this.name);}class AB{const AB();}const j=0;const k="http://www.blogger.com/img/icon_logo32.gif"; l(){if(h.window.notifications.checkPermission()==j){i();}else{h.window.notifications.requestPermission().then((CB)=>i);}} i(){new BB.Timer(const Duration(milliseconds:1000),()=>m());} m(){var g=h.window.notifications.createNotification(k,"Hello World","You've been notified!");g.onDisplay.listen((o)=>print("notification.on.display"));g.onClose.listen((o)=>print("notification.on.close"));g.show();} main(){h.query('#say-hello').onClick.listen((g)=>l());}