Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFiAO2kS4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:46:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A18411F24
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:46:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9EEFB4096C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:46:32 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 333ED3F806
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 08:55:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=RqjqFZSN;
	dkim=pass header.d=redhat.com header.s=google header.b=OZKxum8J;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771404958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/9otZd25ocNn9HUDGmNAX0+CEXD0GlGASUVcWCKDTQI=;
	b=RqjqFZSNAbdqH0dOqsy55Xud/vJdmvz1tzkXueNqmjNvTZhtI2DLJa0UALI5NDoLiATY5B
	70YEqAvLFEUuyUycH912YOhipUYpbFvfL8z/zUdtxNwLl47gfi9OI9LJsODsJNNzRp9/3T
	iCiXBBc/orJlAz3NmnwGaI5CCBk36FM=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-217-PivQ_5VTPkO4HEJ_EK7gRQ-1; Wed, 18 Feb 2026 03:55:57 -0500
X-MC-Unique: PivQ_5VTPkO4HEJ_EK7gRQ-1
X-Mimecast-MFC-AGG-ID: PivQ_5VTPkO4HEJ_EK7gRQ_1771404956
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-435ab907109so3396502f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 00:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771404956; x=1772009756; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/9otZd25ocNn9HUDGmNAX0+CEXD0GlGASUVcWCKDTQI=;
        b=OZKxum8JHt4IO827FZLX3qosKnRiU3Eqng3SLAzuP4OlJGsJ04aPXOdczrH/BSp1kE
         G0W0E0Krh2hLmz/s+Pu5IaECz7m00uKAvc0t88R5Z/IUPzoFBgkGZiq4iZgV/4phKU9H
         WkfeBSKBpRq2a/YEVItJXx7TK5wnProFb4N26vfWlLYosro2/jdpZu5QM0y+VWvQ5ZRo
         6JZHDMU9Zfhp123B83OlKUwjmrXbYSo5MVG8xue10LHNLfB0T5wASfWo4wPUUx8jdFC/
         VCWUTr2q4kpguqvdy40SSmCkZDPIS23D4d+GgX57wGVmwrvdZlSXrmIw711hp5UgbX18
         TLWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771404956; x=1772009756;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/9otZd25ocNn9HUDGmNAX0+CEXD0GlGASUVcWCKDTQI=;
        b=AN/B/PIpqCxqSOg7VAgOxobc22A4yefxqL4kdVxot3sPdEwDBDuikL9uaIjbS6+sRn
         r3YDJXzDMTUE2YdgJfIo+0KSQ6lyqIkoXz7c49xMO3GGHgypkDSSJezihs3jt5Sesxi7
         yVtpN98gor81GGeeewhznFwyXDZGw3fXuFa2vr4Cm4zk1kSZl1A4TqEnDVMUni+9j5tH
         nNXQ30ra2FJRUpR82/7ZCgKhxbUTY8PfEbvRE3PcmaAnkPg/CJ8NE/BztI0KiXZuzG+F
         v9JuXhZZ8RoZ5b3qe+ZXtsor9DP9vn7AN75AVJNquMj6+bBxCHWMchuoHxpgl1BzB9JY
         ZopQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3kkAY5sECAycPZZSl/+RwMkEGTWyqxeQa4uVcX8uv3ZJ9Q8Ap14Agp2vitNjYjHleNJkorzFRQNVxTcW4@lists.linaro.org
X-Gm-Message-State: AOJu0YzyeGca+hXTne8jVsPOGpkyI/8NN7NfJD79S3Q1lsmyH8t6qUJU
	KrxWLMF6q741YjklrMQRRdxR/F6sGok4FMQO/F/ZVhEb2hlB3Wb/v3+vfuvpLExiRu9Daj8EwmE
	/qOcz141TaCjqkM/qX+HjhhcyY+XQN8gyIwgVl5czepUSCNqhpchqwwfk6LMIxR6g1vtF
X-Gm-Gg: AZuq6aJLpDRu5iWQl/GA1Xm2ciXFcA/l8VF9CkP/70Ynwwlp6MeabYqDd1g36HyquVv
	RLKN/5+UyV8uRC8nyzePpPZ9CANxGdDWMr01ShTsmesvjcZz4EVpqjJLVRywxZUKSGQyVGTCHKO
	t82tuUGJg/vyjMx8woZbNIsBAEQSriYN9gpODDBxZaI5kkcu5lySF4EZziMD7qgtMS3qZI1tQcf
	hvgWun9aFrOtUKsgWnvnN5FSYscBmT/hZNWmTOFridJjpVyNVLSJ9+93+rQTsYdgasZ857TDC8S
	GAl7cX0V7JoL6mYuYY/1DUWvQgOlijyVF3w+XkfUc+5Vww7uNr1apBrq5dWxVwzhb2bS1p00Lw=
	=
X-Received: by 2002:a05:6000:26cf:b0:435:95dc:b8ca with SMTP id ffacd0b85a97d-43958e4c9a0mr1686376f8f.40.1771404955691;
        Wed, 18 Feb 2026 00:55:55 -0800 (PST)
X-Received: by 2002:a05:6000:26cf:b0:435:95dc:b8ca with SMTP id ffacd0b85a97d-43958e4c9a0mr1686327f8f.40.1771404955056;
        Wed, 18 Feb 2026 00:55:55 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac8209sm41853724f8f.30.2026.02.18.00.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 00:55:54 -0800 (PST)
Date: Wed, 18 Feb 2026 09:55:53 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Thierry Reding <thierry.reding@kernel.org>
Message-ID: <20260218-lean-faithful-beaver-2efd77@houat>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
 <20260122161009.3865888-5-thierry.reding@kernel.org>
 <20260123-active-witty-rabbit-0fc5b9@houat>
 <aY3j57xvdOY09EwQ@orome>
MIME-Version: 1.0
In-Reply-To: <aY3j57xvdOY09EwQ@orome>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Y3MSWH2O7IX7EEHLLHB67IDKAFC3U6QL
X-Message-ID-Hash: Y3MSWH2O7IX7EEHLLHB67IDKAFC3U6QL
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:26 +0000
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, Sumit Garg <sumit.garg@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 04/10] mm/cma: Allow dynamically creating CMA areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y3MSWH2O7IX7EEHLLHB67IDKAFC3U6QL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0577192764067715200=="
X-Spamd-Result: default: False [2.89 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1375];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,google.com,linux-foundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.817];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 92A18411F24
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============0577192764067715200==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="sfzhuutowl7gwtka"
Content-Disposition: inline


--sfzhuutowl7gwtka
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 04/10] mm/cma: Allow dynamically creating CMA areas
MIME-Version: 1.0

On Thu, Feb 12, 2026 at 03:44:11PM +0100, Thierry Reding wrote:
> On Fri, Jan 23, 2026 at 02:25:16PM +0100, Maxime Ripard wrote:
> > On Thu, Jan 22, 2026 at 05:10:03PM +0100, Thierry Reding wrote:
> > > From: Thierry Reding <treding@nvidia.com>
> > >=20
> > > There is no technical reason why there should be a limited number of =
CMA
> > > regions, so extract some code into helpers and use them to create ext=
ra
> > > functions (cma_create() and cma_free()) that allow creating and freei=
ng,
> > > respectively, CMA regions dynamically at runtime.
> > >=20
> > > The static array of CMA areas cannot be replaced by dynamically creat=
ed
> > > areas because for many of them, allocation must not fail and some cas=
es
> > > may need to initialize them before the slab allocator is even availab=
le.
> > > To account for this, keep these "early" areas in a separate list and
> > > track the dynamic areas in a separate list.
> > >=20
> > > Signed-off-by: Thierry Reding <treding@nvidia.com>
> >=20
> > AFAIU, this won't create a new cma heap when registering. This goes
> > against the recent work we did to create one for every cma region.
> >=20
> > I guess, since you have a driver that would explicitly handle that
> > region, we should create some kind of opt-out mechanism, but by default,
> > we should still create such a heap.
>=20
> It sounds like there's a bit of a conflict between what you want to
> achieve and what this series attempts to do.

It's not ongoing really, it's part of 6.19.

> The way I see it, the CMA code is more of a helper that gives you a
> specific functionality set. Exposing each CMA area as a heap that
> userspace can allocate from seems like a bad idea to me.
>
> Without knowing anything specific about a CMA area you don't know if it
> makes sense to expose it as a heap. Given that there is very little
> information associated with a CMA area there's only so much guessing
> that you can do. I think it'd be more sensible to make CMA areas opt-in
> to have a heap created for them rather than requiring opt-out. Exposing
> a heap publicly applies only to a (potentially) small subset of all CMA
> areas, albeit at the moment it may seem that that is what it's primarily
> used for.

Do you have any specific example in mind except for that driver?

So, the reason why we did that was, mostly, to allow proper cgroup
memory accounting through dmem. In order to enable it in DRM and v4l2,
it was agreed upon that we would switch the use of dma_alloc_* to rely
on the heaps instead, where the memory accounting is greatly simplified.

So we want any reserved memory region a device can allocate from to have
a heap.

So I do think we need the call to register a heap in rmem_cma_setup.

That being said...

> In fact, for this particular driver nobody must allocate from any of the
> CMA regions associated with the heap driver outside of that heap driver,
> simply because the heap driver maintains meta data about these CMA
> regions for things to work. If we allow access to it from anywhere,
> things are eventually going to explode.

=2E.. I also agree that having it in dma_contiguous_reserve() might be
overdoing it, and I assume it would solve the issue with your driver?

> > That being said, it's not clear to me why the heap driver uses CMA in
> > the first place.
>=20
> We use CMA as a way of reclaiming memory if needed. The heap that we
> create is meant to be resizable, so that when nothing uses the heap, the
> memory can be reused for other purposes. However, when memory is
> allocated from the heap, we need to reclaim that memory for the heap and
> relocate any buffers allocated from the region somewhere else. CMA does
> all of that for us, so it seemed like the logical choice for this.

Ack, thanks!
Maxime

--sfzhuutowl7gwtka
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaZV+lAAKCRAnX84Zoj2+
dlYJAYC4+jPKHkn42l5qLnxTY3EvbGxcZHDH6RVzs/0th5A4+2dTD8lM8sIBBgPj
qui+8ooBf0t6WS1apZEC3zF8JlGWCr77XkBnVp5ZaozpXhqmNBMCQy7tm7z3cF/c
XrmTT30Bzg==
=yW5/
-----END PGP SIGNATURE-----

--sfzhuutowl7gwtka--


--===============0577192764067715200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0577192764067715200==--

