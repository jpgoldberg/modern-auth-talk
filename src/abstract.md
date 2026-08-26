# Building modern authentication in the before times (2015)

## Abstract

In 2015 the password manager vendor for whom I worked needed to deploy
an authentication mechanism with very strong security properties.
Among the desired properties were

- Maintain its security even if TLS failed;
- Not reveal any client secrets to the service;
- Provide mutual authentication;
- Establish a session key;
- Service should not store any information that could be useful for password cracking.

Although there were mostly academic solutions available in principle, constraints included

- Client side implementation was needed for clients developed for
  - OS X and iOS (Objective-C)
  - Android (Java)
  - Windows (Delphi)
  - Web apps running in Safari, Internet Explorer, Edge, Firefox, Chrome
- No cryptographers employed by the organization
- Server in Golang
- Unencumbered by patents
  
This presentation discusses some of the choices and solutions we found,
the gap between what may seem deployable to academic and cryptographers on the one hand,
and the non-cryptographer software developers on the other,
and navigating to a solution under time pressure.

Although there are excellent tools and solutions that have become available
over the past decade, development teams are likely to experience similar sorts
of problems even though none of the specific details from ten years ago apply.

## About the presenter

Jeffrey Goldberg is a PhD dropout (Linguistics) from the 1980s,
and ended up following a path from
academia to system administration to information security
that was not uncommon during the last quarter of the twentieth
century.

From 2010 until retirement in 2023 he worked at 1Password, with the sometime job title of
Chief Defender Against the Dark Arts.
He is not authorized to speak on behalf of 1Password,
nor may he disclose any information that has not already been made public.
