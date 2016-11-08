Email-to-SMS Gateways
=====================

Way cooler than the Web-to-SMS gateways, but slightly more difficult to use,
are Email-to-SMS gateways. These are portals that you can send an email to and
have it forwarded immediately(more-or-less) to a phone number. This way, you can
communicate with a phone without depending on someone else's web site and you
can do it from any email capable device without any modification to the
software. If you can send an email, you can use an Email-to-SMS gateway.

Email-to-SMS gateways are run by the service providers that provide phone plans,
which unfortunately means that in order to use an Email-to-SMS gateway you need
to know the carrier of your contact's phone service. If it's emblazoned on the
back of their phones, like on many Verizon and AT&T phones, which Email-to-SMS
gateway to use is easy to determine, though, and shouldn't deter you.

In order to use an Email-to-SMS gateway, You'll Need
----------------------------------------------------

  * a normal email account, preferably from a reputable provider.
  * a normal email client, a web client will do
  * your contact's phone number
  * your contact's carrier.

Step One: Figure out the Address
--------------------------------

First things first, you will need to figure out what the email address of your
contact's phone is. This email is automatically generated, activated, and most
importantly, assigned by the contact's phone carrier, which makes the address
easy to guess. Simply write down the phone number:

        7168675309

and look up the carrier in this [chart](https://github.com/mfitzp/List_of_SMS_gateways/blob/master/email2sms.csv)
to create something like this:

        7168675309@txt.att.net

and optionally, add it to your email contacts.

Step Two: Compose the Message Data
----------------------------------

Now, you need to compose the message like an email. You got the address of the
relevant phone in the first step, enter it in the Address field of your email
client. Next you'll need to enter something in the subject line, but there is
a little bit of variability in how it's handled. Many, perhaps most, maybe all
smartphones will display the subject as an actual subject line, but with some
flip phones, you might get mixed results. If you think you're texting a flip
phone, then what I would do is just make the subject line exactly the same as
the message body, and make them both less than 140 characters long.

Step Three: Compose the Message
-------------------------------

Once you have an address and a subject line, and if you're sure you're messaging
a smartphone, you can compose the message body(Remember, if you were messaging
a flip phone then you made the subject and the message body exactly the same, in
order to guarantee the delivery of your intended message). In this case, you
don't even have a character limit, but it's probably a good idea to keep your
messages down to a courteous length, something that you think will fit
conveniently in about 50% of a smartphone screen. They'll be presented to the
recipient exactly as you send them, not split into multiple 140-character
sections.

Depending on which carrier the person you're trying to reach with your message,
you can also trigger the sending of an MMS message over the Email-to-SMS gateway
by attaching your image or short video to the email.

Step Four: Send/Recieve
-----------------------

Finally, you can send the message you've composed. Just click the send button on
your email client and it will head on it's way through the gateway. When your
contact recieves the email, he or she will be able to send you a message at your
email address, and you'll be able to carry on a normal conversation with an SMS
user using only a normal email account.
