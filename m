Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBxRAYUK4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:12:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CC511411709
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:12:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DEA3F443EE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:12:51 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 597D03F789
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Dec 2025 15:59:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=OyuHZIEK;
	dkim=pass header.d=redhat.com header.s=google header.b=cQJ8Fc58;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1766159945;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NuVKMRCOXiL/q8JSNbJx7Vrep0Xak1sDKET9rwhN+f4=;
	b=OyuHZIEKOnyfHa/vpYEk6ZyMvAfy8VigjrgqwaEa/wQKOO4d0gKBOKYEnA86aQJ+KN9gV9
	ggRJapH84X+KQuCDTPJ3YBq+/mJRN845FLOVNN7SDAVveV6x/4tBfvDkfv1H23G0olb/Yo
	70VZup5SY3ehCfEzQrJZki5pHUZDSsg=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-518-HF9e8erMMAqsJhRW0TUU9Q-1; Fri, 19 Dec 2025 10:59:01 -0500
X-MC-Unique: HF9e8erMMAqsJhRW0TUU9Q-1
X-Mimecast-MFC-AGG-ID: HF9e8erMMAqsJhRW0TUU9Q_1766159940
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-430fdc1fff8so969338f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Dec 2025 07:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1766159940; x=1766764740; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NuVKMRCOXiL/q8JSNbJx7Vrep0Xak1sDKET9rwhN+f4=;
        b=cQJ8Fc58CLVih3saPemcOZQf1jrEbh8jrOWTOv3keZOehlxAh+QNCwHkl4sTbA9qeS
         qwBrc/h36TYoItcNBkjNsLuQfI+OZfw9vscqj4cNPEWNXOIc6uS3YDMMR2r+nOWKAEMl
         0kl0SFH3prgjI5KfQM9SXBc7oX6Ejq9TLUDmkEnYEQ0d5EeF1WgXjBySRjt1O9CxFzhy
         1j8RlNFGqr9pNa7YKvPIdZQ/1yJmlBhivqf2R230hss8eYX4tFZY0oHMOldWh7Ah3cKA
         8fnill7j2FMXbDSEnJGNQ0CtgUPckGbD4k71MFh9VJBVEAajMtAVjm7javJ0lJx2d+yk
         AIdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766159940; x=1766764740;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NuVKMRCOXiL/q8JSNbJx7Vrep0Xak1sDKET9rwhN+f4=;
        b=CY/Z3jJsCiYl7lV+qkGtjqWL55bd+OUrWJa6jMtmktMYi6QM3+EU5K7ABI+YkFrHtM
         r+a0bEDb2coHLeJcduif7sR7qht3eeoGlGoqGQzkb0UJAoyihIS/BlT4V3R2ufcMernL
         X7tOxzYoKlod2bQMs8ZEowBA+omIM4BdAkbL1KrYdOEqrF6dLrPxW4FB1ViSCmNJJdLP
         5vtvttgPvMk6RZRK/Cu8P0nXhdTamiT2ZC3zarGBtqQOEBczfUk3Fw49fn42s0bc3UKu
         Mk6/rPFW0HY5zBJ9xWDFWICAE8PYdH73I3J5WXmEdlgYhBEu/jXdeRt8Bd+gYhE8U5QE
         /JLQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtI4uDiYALGL9jWqlLpwCnbDIilRsmOyaLpJ+uAoDI7p2s2BaCXOXEivQs+u8GNhNFnSQ4o+J2Co2cLkMY@lists.linaro.org
X-Gm-Message-State: AOJu0YziRB4trN3CBAiSdUEPY6zNtqUzp8Shbtch9qytrBjz2HmsheG3
	Kkjjlr2Mmm7+ZW7GRnV1CqRs19/ApqGn/Zf9zObJHBYainbbAWjsT16rd1xrNhBYK+uFLEZii5P
	kqNQt4Zd/BgFu+LDzFh3QoqkSGqQcbhIO5gf0veZRI+/nqr+UMZDBdOF2PU7j41hBzg00
X-Gm-Gg: AY/fxX73SFKsWLj25T8Fj414azZXK+0QstnU6OVeH0H1dMvQoFS3uwDzkwCrr2iD/Vt
	9TzYJsoJ2WoN3yXfRRqpr91l7NUw2ozFkY7CgD6fLzylAfok7J96e6sxkwU5SlsT3B4im99ct6g
	PiS0NbCnIQKIEqa+aN0/BfL9qpYnjWTaBX9+njOyxWWpg+c9e39IpNkJUf2B5PTBHr3mKi8+gS+
	ZJnr70lm46c1eQQ+TcITs4pDhR4BIsHmi4OExAOjR8tR0BR6dQI4+zusxcJkvwwWd7ly7kQcTZ7
	g8ZVapV39BLIqXaAzkBa1ZtCQy4GKJYRbIwNzehd3UkW9u0Gbb+tkFq4pf5TXA==
X-Received: by 2002:a05:600c:8710:b0:475:da13:2568 with SMTP id 5b1f17b1804b1-47d19592102mr31215145e9.25.1766159940203;
        Fri, 19 Dec 2025 07:59:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGz4saKUE5xlJBqdu6Gk7rmDOjerDoiXpYwJNHDHvTSpuZXU0uy6ESaJF6LqfbEUnkQVRXGsw==
X-Received: by 2002:a05:600c:8710:b0:475:da13:2568 with SMTP id 5b1f17b1804b1-47d19592102mr31214855e9.25.1766159939720;
        Fri, 19 Dec 2025 07:58:59 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d192e88f5sm49165545e9.0.2025.12.19.07.58.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 07:58:59 -0800 (PST)
Date: Fri, 19 Dec 2025 16:58:58 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20251219-cuddly-platinum-cormorant-ae6d0e@houat>
References: <20251211193106.755485-2-echanude@redhat.com>
 <CABdmKX2MPhw121ZG8V+f-XoOReUsCdmcug-cWDg=3WZcJ=NHHA@mail.gmail.com>
 <20251215-sepia-husky-of-eternity-ecf0ce@penduick>
 <07cdcce2-7724-4fe9-8032-258f6161e71d@amd.com>
 <20251215-garnet-cheetah-of-adventure-ca6fdc@penduick>
 <ef52d9e9-6abe-421a-98f8-f96353652e1e@amd.com>
 <20251219-large-daffy-monkey-74665d@houat>
 <5eda1755-865c-4bb0-a1a0-a4e6dac5388c@amd.com>
MIME-Version: 1.0
In-Reply-To: <5eda1755-865c-4bb0-a1a0-a4e6dac5388c@amd.com>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SVT6DO65SQKLWB77LXW7AMA6GTUC4WPL
X-Message-ID-Hash: SVT6DO65SQKLWB77LXW7AMA6GTUC4WPL
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:05 +0000
CC: "T.J. Mercier" <tjmercier@google.com>, Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SVT6DO65SQKLWB77LXW7AMA6GTUC4WPL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3803655355912171443=="
X-Spamd-Result: default: False [1.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[2832];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[redhat.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.659];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: CC511411709
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============3803655355912171443==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="62gvz4x3u7aurz3v"
Content-Disposition: inline


--62gvz4x3u7aurz3v
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] dma-buf: system_heap: account for system heap allocation
 in memcg
MIME-Version: 1.0

On Fri, Dec 19, 2025 at 02:50:50PM +0100, Christian K=F6nig wrote:
> On 12/19/25 11:25, Maxime Ripard wrote:
> > On Mon, Dec 15, 2025 at 03:53:22PM +0100, Christian K=F6nig wrote:
> >> On 12/15/25 14:59, Maxime Ripard wrote:
> ...
> >>>>> The shared ownership is indeed broken, but it's not more or less br=
oken
> >>>>> than, say, memfd + udmabuf, and I'm sure plenty of others.
> >>>>>
> >>>>> So we really improve the common case, but only make the "advanced"
> >>>>> slightly more broken than it already is.
> >>>>>
> >>>>> Would you disagree?
> >>>>
> >>>> I strongly disagree. As far as I can see there is a huge chance we
> >>>> break existing use cases with that.
> >>>
> >>> Which ones? And what about the ones that are already broken?
> >>
> >> Well everybody that expects that driver resources are *not* accounted =
to memcg.
> >=20
> > Which is a thing only because these buffers have never been accounted
> > for in the first place.
>=20
> Yeah, completely agree. By not accounting it for such a long time we
> ended up with people depending on this behavior.
>=20
> Not nice, but that's what it is.
>=20
> > So I guess the conclusion is that we shouldn't
> > even try to do memory accounting, because someone somewhere might not
> > expect that one of its application would take too much RAM in the
> > system?
>=20
> Well we do need some kind of solution to the problem. Either having
> some setting where you say "This memcg limit is inclusive/exclusive
> device driver allocated memory" or have a completely separate limit
> for device driver allocated memory.

A device driver memory specific limit sounds like a good idea because it
would make it easier to bridge the gap with dmem.

Happy holidays,
Maxime

--62gvz4x3u7aurz3v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaUV2PQAKCRAnX84Zoj2+
doBbAYCwC6GM+nDbVQ+qPSj3EG6TPcebfy5+uYyIL8SOICJl/3ohBlkB/AN0k0qs
+sZn+aYBewZWQxkmfc2iSOFLjm35fV4hD2oDDGu74kWLPPrJefPelEf0OooFJoux
CX9E84nf8Q==
=seo3
-----END PGP SIGNATURE-----

--62gvz4x3u7aurz3v--


--===============3803655355912171443==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3803655355912171443==--

