[Ring](https://ring.cx/) Secure, Distributed Messaging, a Better Alternative to a Phone Number
==============================================================================================

Many of the difficulties incurred by people who want to stop using mobile
phones, or even just mobile voice and text plans, are related to the difficulty
of contacting people who do use mobile phones with voice and text plans as
their primary form of communication. With the age of smartphones, however, it
has become possible for people to create apps which supplement the functionality
of the device, including adding things like instant messaging over the internet
or, in the case of the Ring messaging system, a distributed network providing
functionality that is like telephony but which doesn't require a central
authority to assign unique names and numbers. There are in fact many messaging
systems which can be used in much the same way as Ring, and many of them will
be included here, Ring is just the first one I'm writing about.

What are the Key Differences between Ring and SMS messages?
-----------------------------------------------------------

Ring is designed to be similar to use to other messaging systems, but under the
hood, it's pretty different. One thing you'll quickly notice is that Ring uses
identifiers that are long and complicated compared to phone numbers. This is
because in order to guarantee that all the identifiers are unique, all the
identifiers have to have a sufficient amount of randomness. This is achieved
using cryptographic techniques, and it helps Ring achieve the following three
properties.

###Ring is "Distributed"

Ring does not use a central server to help you find your contacts, instead it
uses a Distributed Hash Table known as OpenDHT. This means that once you have
joined the Ring network, you can always find contacts by using their Ring ID
and you can't be denied service by denying you access to Ring's services. The
job of being the service is in some senses shared by every "Peer" in the Ring.

As an aside, Peer-to-Peer technology and philosophy has gotten a COMPLETELY
UNDESERVED bad rep due to it's frequent association with the file sharing
community. Fuck that. You are a PEER. You deserve to be treated like a PEER.
Subordinating you to a corporation that wants to tell you how to communicate is
downright sick. Use Peer-to-Peer technology wherever possible, just respect
people's privacy and property.

###Ring is "Authenticated"

Ring users, once they have shared their contact information and confirmed their
identities initially, can guarantee that the subsequent conversations with the
same ring ID are being carried on with someone who has the private key
corresponding to that ID. Anything else, and messaging just won't work and
therefore, Ring guarantees to the maximum known extent that you will be talking
to the person that you think you are talking to.

Similarly, if you are using a device which doesn't have your Ring keys, you'll
be identified as a different user since your identity is verified
cryptographically. Lose your Ring keys, you'll be unable to re-create them. This
is a good thing, otherwise, someone could forge them and impersonate you.

###Ring is "Encrypted"

Ring also encrypts connections between peers, after authenticating them, using
new keys for each connection. This gives it Forward Secrecy, which means that
even if your equipment is confiscated, they cannot retrieve keys from your
device which can be used to decrypt enciphered data that had been intercepted
by some other channel.

When Ring is Installed
----------------------

Once you have Ring started up for the first time, you'll be asked to create an
account. This isn't really an account like you're used to, though, remember Ring
doesn't have a server. Instead, creating an account generates an identity for
you on the DHT, and involves generating cryptographic keys and certificates,
then downloading the data necessary to connect with the DHT, so on very old
hardware, it can sometimes take up to about 2 minutes. Usually much less though.

Once you've done that, you're ready to add contacts and make calls. Get a friend
to sign up and add their Ring ID, and make a call. It just works. That is what
Peer-to-Peer technology presents to you, simple, direct connections to people
who's identities are cryptographically authentic, with no dependencies on
external services.
