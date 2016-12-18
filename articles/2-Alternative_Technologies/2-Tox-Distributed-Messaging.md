[Tox](https://tox.chat/) Secure, Distributed Messaging, a(another) Better Alternative to a Phone Number
=======================================================================================================

Another distributed messaging application, much like Ring, is the Tox messaging
system, which consists of an open-source common library called toxcore and a
group of Tox clients which you can use to chat with authentication and with
guarantees of strong encryption algorithms. Eventually, toxcore may see itself
used as a way of communicating for applications other than simple instant
messaging clients, so the focus when developing the library is to make it as
difficult for a developer to make a mistake in implementation as possible. To
that end, it uses the NaCl/LibSodium crypto libraries to implement only
peer-reviewed, highly regarded algorithms, and implements basic functionality
of the clients with callbacks, leaving clients to implement the logic of
displaying conversations. Toxcore is reasonably easy to use to implement a chat
client well.

  * **For a TL:DR I just want an application, go here [to the Google Play Store](https://play.google.com/store/apps/details?id=chat.tox.antox) or**
  * **here [To the Jenkins releases](https://build.tox.chat/job/antox_build_android_arm_release/lastSuccessfulBuild/artifact/antox.apk)**
  * **or best of all [get F-Droid and use from the repo](https://pkg.tox.chat/fdroid/repo)**
  * *The android client for Tox is called [Antox](https://github.com/antox/antox)*

Besides the enthusiasm I feel for the Tox project and the toxcore library, it's
actually very similar to [Ring](https://ring.cx) in it's basic functionality. It
is also [distributed, authenticated, and encrypted](https://phonefree.github.io/articles/AlternativeTechnologies.html#RingDistributedMessaging),
but besides it's more focused goals it has a few differences with Ring. These
are kind of technical, if you're not interested, just go above and download
the Antox client for your Android phone.

Dissociated DHT Discovery
-------------------------

When you join the Tox distributed hash table(DHT) you do so initially with a
cryptographic ID which is NOT associated with the Tox ID displayed by your
program. This DHT ID is used to discover your friends, who are the only ones who
get your real ID. This is because if you had to connect with your long-term ID,
a person who was able to observe the whole DHT could tell when your Tox ID comes
online because the same long-term ID would be found. This allows you to expose
your online status and your real IP address only to your friends and removes
many potential concerns about the potential mass observervation of metadata over
the Tox DHT.

Group Bots
----------

Tox also has a few programs known as group bots. What they do is they run and
let people connect to them, either in a totally open way or by allowing people
to send invitations to other Tox ID's. For now, this is what makes group chats
possible and it makes it possible to host a group chat which is completely
dissociated from your regular Tox client.

Ratox!
------

Ratox is goddamn exciting. I can't believe it was defunct for so long. What
Ratox is is a Tox client which enables you to interact with Tox through a unix
like filesystem. This means that you can script your interaction with this Tox
client to use as a message drop box, or an answering machine, or any other
possible application you could imagine. It's also absolutely tiny and very
efficient, making it ideal for something like a Raspberry Pi which could be
connected to a battery to maximize the uptime of your Ratox instance.

Language Bindings
-----------------

Lastly, Tox has bindings to libtoxcore available in pretty much any language
anyone programs in, including Java, Go, Python, Vala, Ruby, Haskell,
Objective-C, and whatever the crap else. There are tools to make it easy to use
in some of those languages, some of them have multiple bindings depending on
how deeply you want to interact with the core library. These bindings all link
to the Tox core libraries written in C for now, so everyone benefits from the
updates to the core as well.

Once Tox is installed
---------------------

Now that you've got a Tox client, it's time to start exchanging ID's with people
you know in person. Encourage your friends and family to use Tox, add their ID's
and you'll be able to chat with them as long as you both have connectivit,
regardless of whether you are both on the same LAN, using wi-fi to connect to
the internet, or one or both of you have a data plan. Peer-to-Peer technology is
cool because it means that everyone using it is a first-class user no matter
where their connection originates, that's part of the beauty of it. With no
dependencies on external services, you can use Tox to chat directly to your
peers.

