Send SMS with a Curl One-Liner
==============================

Sending a text through a Web-to-SMS gateway is fine, but like, 99% of the time,
a web-based GUI is overkill. That goes for way more than just text messages too.
I certainly don't bother with web-based e-mail clients if I don't have to. So
instead of dealing with the WWW's nonsense, for outgoing text messages you can
use this simple Curl one-liner to talk to a Web-to-SMS gateway known as
TextBelt.

        curl http://textbelt.com/text -d "number=$NUMBER" -d "message=$SHORTMESSAGE"

Or, for quick access, you can add it to your .bash_aliases file!

        send_text(){
          \curl http://textbelt.com/text -d "number=$1" -d "message=$2"
        }
        alias sms=send_text
