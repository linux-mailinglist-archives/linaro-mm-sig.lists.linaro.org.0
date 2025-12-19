Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAztH14K4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:12:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A0A4116D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:12:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5D9E143BFE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:12:13 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 7B81640099
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Dec 2025 10:19:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=FpNhUZOU;
	dkim=pass header.d=redhat.com header.s=google header.b=N4N6zXDN;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1766139560;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=n+Sjh7UuYFLIovf/XxlzAidLiUL3k2dY2RdNBAzDrDc=;
	b=FpNhUZOUC81ql5ptF8dqy1pu+8kqqMuibACzm9NTcpudYVPO4s3KgGYyhcQIryOTHkUuwb
	7sRaaL5xzQRpSKu+7rbRJmBdRbscO2WzQqSezrRNFKQUrDHHiSOs+vJAqVN/iLciznZK1V
	REQMkToL5Lfc0HELFpkfj3XilWP9lHw=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-526-wK_XM5eTMLyCHR6d_Ko-ng-1; Fri, 19 Dec 2025 05:19:18 -0500
X-MC-Unique: wK_XM5eTMLyCHR6d_Ko-ng-1
X-Mimecast-MFC-AGG-ID: wK_XM5eTMLyCHR6d_Ko-ng_1766139557
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-430fc83f58dso858374f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Dec 2025 02:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1766139557; x=1766744357; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=n+Sjh7UuYFLIovf/XxlzAidLiUL3k2dY2RdNBAzDrDc=;
        b=N4N6zXDNwJojE8Q4lvfPChADEfbBm7mKSoQAcYVYVYIPmn2tTnGaC2QRsDCZnYl2mY
         2kAWe/uXCrvKxqiHNoVt0JCgNy0TJFNxKTaPR4hpxFC4tuL2oyCTDTtTlct5WieKs1vH
         Eo0CQAnNaLItkN7MJjcRBFBWNK9cbji2mdGcExv5K49J8veMkifmDxAjicTMpCKj+2FL
         3bIJHhi5n22x+87ET2yB+uMUsf/FHm0n2cCGVv4ksnQnP+sbkuvCE9RwN6IZvA35aKst
         CVO6OIYdfkMlP8zIpyJ+677huGkrO7ZygOvO0FICtNIZpydPIZ+GlwQitI2/LFdT3vkq
         mHog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766139557; x=1766744357;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n+Sjh7UuYFLIovf/XxlzAidLiUL3k2dY2RdNBAzDrDc=;
        b=ftKH5xeqXlrqpoSRUKvljFsT+XkyXjUfmW+cKO57hu8j7xjenq8X9fRHtJkMaRSrbG
         5aN3PA/lB/pYloCGATh5RmxD6TpbK/iKA7adJuBuIy/NAxMjhL9evbOpnFa2cidXawbB
         5ix3aqB7P8xNC2ttc+AdegtubNjI436hijFSiME8zKaDxN7g3fjzQkDNSRiyJuOX/XEl
         74n/0ElMVdENfT+lgCDlW9p3bZGPWc//1Ote0EYE4swFhnkbkaizuZuzn5G33pSXgQ9n
         dzAz5a4PqQaMHVfEI8fVw41GYhCNYITi1GUF/iVRMEnm7nJZnBMzfuH8E7WsYrMvMoRm
         Vujw==
X-Forwarded-Encrypted: i=1; AJvYcCXmZtOgqC6nb2J7TUQ8zQca4iQIDtENB5OHBwwlwcnujJ/8rV9hXU3VUacNV7elFjOvycdafGd3qCEENdR5@lists.linaro.org
X-Gm-Message-State: AOJu0YyBQZJE87m7AxeTCdbHmDi9RGHBNMiAuxu7utuX8y9UwTIz6Qs1
	CeDLSSzgNosxI2lFkCGxOC7mq4+fup93shvsGG1a4aZEf8IDTtTIOrzvSxY1v7kTiSEIULTh1Vm
	412wU2IXIp7hLC2g3aAbkZfQoD8EKyrgJ1DM4HsXGD9klP2/i3gzU5sLCoYFjnXKqmxnK
X-Gm-Gg: AY/fxX6bQRAxsDnmm6JAVroi6FmElo1Xu2VP7wdnEBpWPyvLxj+rUNst6bQJ0k8X08t
	QFUkjxlj0MFddj6MkJxYhJYQVKzu3kNtHrXMEpIF3D7/q90y62SVjQvoq9meUc7AyuAJ8348LrZ
	jYMxJVNg1XKA6LeM8kV+xZLdmS7TIzmdywkGRj46shT4Al15P9FI0fFnOPefOMsy1kjke7A7Vso
	c1qHsv6Ls8bETsl8nurS7Yuuk4TviJjdmGAwbxmzz1xnErKmEEGe3A7SfX7Zby5x/IipRa38lkG
	5IfewvlyK33qTnt0Yjnr70D7EComydMHIRZPwLwnFFb8bmb0hHEYys0xtYt+KA==
X-Received: by 2002:a05:6000:1868:b0:430:fc0f:8fb9 with SMTP id ffacd0b85a97d-4324e4f9458mr2556877f8f.36.1766139556960;
        Fri, 19 Dec 2025 02:19:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHeh4Zbkr/D6P7HWKArF0jdwKfFL+l6ZrJJ1FavgfXi5moav7Q7vb1/nUNiIeSf8i+9DMCNLQ==
X-Received: by 2002:a05:6000:1868:b0:430:fc0f:8fb9 with SMTP id ffacd0b85a97d-4324e4f9458mr2556840f8f.36.1766139556391;
        Fri, 19 Dec 2025 02:19:16 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa0908sm4147867f8f.31.2025.12.19.02.19.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 02:19:15 -0800 (PST)
Date: Fri, 19 Dec 2025 11:19:15 +0100
From: Maxime Ripard <mripard@redhat.com>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <20251219-precise-tody-of-fortitude-5a3839@houat>
References: <20251211193106.755485-2-echanude@redhat.com>
 <CABdmKX2MPhw121ZG8V+f-XoOReUsCdmcug-cWDg=3WZcJ=NHHA@mail.gmail.com>
 <20251215-sepia-husky-of-eternity-ecf0ce@penduick>
 <CABdmKX1HgSzUPS1Ot93tpctgunfHt_F_XNROB6zzpu_u0oH2=A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABdmKX1HgSzUPS1Ot93tpctgunfHt_F_XNROB6zzpu_u0oH2=A@mail.gmail.com>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GEILOWLXNFFMAR6FOA5QZFQTEWXXYYE2
X-Message-ID-Hash: GEILOWLXNFFMAR6FOA5QZFQTEWXXYYE2
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:02 +0000
CC: Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Koenig <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GEILOWLXNFFMAR6FOA5QZFQTEWXXYYE2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2025572174785073551=="
X-Spamd-Result: default: False [1.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[2837];
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
	NEURAL_HAM(-0.00)[-0.655];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 54A0A4116D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============2025572174785073551==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="4cy66ljvjeto773l"
Content-Disposition: inline


--4cy66ljvjeto773l
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] dma-buf: system_heap: account for system heap allocation
 in memcg
MIME-Version: 1.0

Hi,

On Tue, Dec 16, 2025 at 11:06:59AM +0900, T.J. Mercier wrote:
> On Mon, Dec 15, 2025 at 7:51=E2=80=AFPM Maxime Ripard <mripard@redhat.com=
> wrote:
> > On Fri, Dec 12, 2025 at 08:25:19AM +0900, T.J. Mercier wrote:
> > > On Fri, Dec 12, 2025 at 4:31=E2=80=AFAM Eric Chanudet <echanude@redha=
t.com> wrote:
> > > >
> > > > The system dma-buf heap lets userspace allocate buffers from the pa=
ge
> > > > allocator. However, these allocations are not accounted for in memc=
g,
> > > > allowing processes to escape limits that may be configured.
> > > >
> > > > Pass the __GFP_ACCOUNT for our allocations to account them into mem=
cg.
> > >
> > > We had a discussion just last night in the MM track at LPC about how
> > > shared memory accounted in memcg is pretty broken. Without a way to
> > > identify (and possibly transfer) ownership of a shared buffer, this
> > > makes the accounting of shared memory, and zombie memcg problems
> > > worse. :\
> >
> > Are there notes or a report from that discussion anywhere?
>=20
> The LPC vids haven't been clipped yet, and actually I can't even find
> the recorded full live stream from Hall A2 on the first day. So I
> don't think there's anything to look at, but I bet there's probably
> nothing there you don't already know.

Ack, thanks for looking at it still :)

> > The way I see it, the dma-buf heaps *trivial* case is non-existent at
> > the moment and that's definitely broken. Any application can bypass its
> > cgroups limits trivially, and that's a pretty big hole in the system.
>=20
> Agree, but if we only charge the first allocator then limits can still
> easily be bypassed assuming an app can cause an allocation outside of
> its cgroup tree.
>=20
> I'm not sure using static memcg limits where a significant portion of
> the memory can be shared is really feasible. Even with just pagecache
> being charged to memcgs, we're having trouble defining a static memcg
> limit that is really useful since it has to be high enough to
> accomodate occasional spikes due to shared memory that might or might
> not be charged (since it can only be charged to one memcg - it may be
> spread around or it may all get charged to one memcg). So excessive
> anonymous use has to get really bad before it gets punished.
>=20
> What I've been hearing lately is that folks are polling memory.stat or
> PSI or other metrics and using that to take actions (memory.reclaim /
> killing / adjust memory.high) at runtime rather than relying on
> memory.high/max behavior with a static limit.

But that's only side effects of a buffer being shared, right? (which,
for a buffer sharing mechanism is still pretty important, but still)

> > The shared ownership is indeed broken, but it's not more or less broken
> > than, say, memfd + udmabuf, and I'm sure plenty of others.
>=20
> One thing that's worse about system heap buffers is that unlike memfd
> the memory isn't reclaimable. So without killing all users there's
> currently no way to deal with the zombie issue. Harry's proposing
> reparenting, but I don't think our current interfaces support that
> because we'd have to mess with the page structs behind system heap
> dmabufs to change the memcg during reparenting.
>=20
> Ah... but udmabuf pins the memfd pages, so you're right that memfd +
> udmabuf isn't worse.
>=20
> > So we really improve the common case, but only make the "advanced"
> > slightly more broken than it already is.
> >
> > Would you disagree?
>=20
> I think memcg limits in this case just wouldn't be usable because of
> what I mentioned above. In our common case the allocator is in a
> different cgroup tree than the real users of the buffer.

So, my issue with this is that we want to fix not only dma-buf itself,
but every device buffer allocation mechanism, so also v4l2, drm, etc.

So we'll need a lot of infrastructure and rework outside of dma-buf to
get there, and figuring out how to solve the shared buffer accounting is
indeed one of them, but was so far considered kind the thing to do last
last time we discussed.

What I get from that discussion is that we now consider it a
prerequisite, and given how that topic has been advancing so far, one
that would take a couple of years at best to materialize into something
useful and upstream.

Thus, it blocks all the work around it for years.

Would you be open to merging patches that work on it but only enabled
through a kernel parameter for example (and possibly taint the kernel?)?
That would allow to work towards that goal while not being blocked by
the shared buffer accounting, and not affecting the general case either.

Maxime

--4cy66ljvjeto773l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaUUmogAKCRAnX84Zoj2+
docaAX97oRKC47EmRfraR77g2nPKkhNGbslMpV97iGWZDw9W7qVFZSWxAm3ZOecR
fdkqIH0BgJFWYMfMj1oLwlijaHOD41ueRI3Yd6gM9FpeT9i1TBtqRQpdmR+3tIkc
JQn/bUAXkA==
=H3ZY
-----END PGP SIGNATURE-----

--4cy66ljvjeto773l--


--===============2025572174785073551==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2025572174785073551==--

