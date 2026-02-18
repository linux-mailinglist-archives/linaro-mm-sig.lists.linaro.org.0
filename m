Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJm6BXIS4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:46:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EDD411F33
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:46:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C69A74044D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:46:40 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 785593F7EC
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 09:42:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=PXy072Ag;
	dkim=pass header.d=redhat.com header.s=google header.b=Af2ktgSO;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771407748;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pbLBL9om1fu4jfoAPaZMybNUHZLF4uVBzJp7dWB+x3o=;
	b=PXy072AglHqM0DGevzwlx32vn9nMyhcJ9EhAfQx3MHLS5eEfsna5F+eXTusJMwDdHdLWpn
	AAx8QInQqT661KWrsjyhI75zBtnPXqQ2RC8yjKrrZwXCf0LTlb9y2LbCZbfSObaFUJvfPL
	PRg12vz9E83CdU46dzgUZFx6tfLQEeE=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-507-Z6nYnep-P-q1bKT2gPxU9w-1; Wed, 18 Feb 2026 04:42:26 -0500
X-MC-Unique: Z6nYnep-P-q1bKT2gPxU9w-1
X-Mimecast-MFC-AGG-ID: Z6nYnep-P-q1bKT2gPxU9w_1771407745
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-4837b6f6b93so31897055e9.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 01:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771407745; x=1772012545; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pbLBL9om1fu4jfoAPaZMybNUHZLF4uVBzJp7dWB+x3o=;
        b=Af2ktgSOJb4FJfBhSDEtDJeEV2+jOXXv+n8CiqijUw/eYKGRf9k7x1LrgCOs7FauEy
         HUbHGzMjKO19EEyUi0Nj3f2eVSuqgjG8pQwJbqSGgN37YjB4dAyhjrIbFXnBPFIRH4kl
         nbj8HNNQwMdXhRrTLCNWdw2OpB904PUqO6Ve5SrJGpGeN4m1+YN3PuOUL2WgezCCx7Xb
         PuBdbhAAqq88PpEdKsKOSxiDNDd5frw9SiGRhCJcg43M/fg4Z2aw2etBzS/2f+O+3LB/
         7Z2D6F/4AA40BYWI85BJfjkP5SsSqiaU2jswn6Xg99lAj6+zXyrkiee7+zeasDXMYoUX
         zK+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771407745; x=1772012545;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pbLBL9om1fu4jfoAPaZMybNUHZLF4uVBzJp7dWB+x3o=;
        b=L7NUkQTxxev77O8v1V2oiB2pQn2Mz/CWZJfbWNDlNIRsyTIdnf2PNBKQm8B/xpqdq2
         bRdRZRhcydMaJv22bEqxTr6ZBZwiFVBQilY1UwPYyP2uCuBMRp46xcHhSGlSImzAggFy
         5FAAJPilXCfAISuiEXWERQvyqLYJ6+w2PZ4F0Er5Jp3TkDu4wBj/zTZNSeraSse6wK+I
         r0DYKgqQFSPfeokmAlBTO7arR77q8jPeWvzNvS6UlLFXFkiQKc0fjQBpyRcN62ZJ5PI7
         ZQZ26nBbfMK045EkCk6FFHtLnw9nwB9w++wQR+fanzs7S4lEkyqSQxFfJIplNAEVY4Kg
         EqWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwD3K3b74CwaoXTxFnT4c2VTaEGPpUeiEHU3Cm3cIED+EGx+OHkZTW1/diiHN8wwicSmg7KPhWEbh5/2f8@lists.linaro.org
X-Gm-Message-State: AOJu0YxiTFGchBzgdom83xAXcila4p7lhFZizW7ZjdCQep8ei77xMnbq
	0ty6mijNckTmHHRL77/3iMswOMNrpkEVpNiREjJRU0I9x4lrkj+0QF85iS4XDUbXJMnotg5mJTn
	V7Ufy50A6YToZhLhVjAh2N5lvfJOlclUln4GHJO+T6mWsDh/G/yvFeDKU6oWwB/+SxcKh
X-Gm-Gg: AZuq6aJZA78I3JoyODzOQxdZlqxJN4qxzWhPyyY6eOf9cqbpQlEWMYITbGVhjmz0KJk
	s645lZm1T0w6kZ6YShgs6jBP+9L3lp7MXi7auxswAA0Osy0RQX0E2fSvl+4y3ayI0oIPpl1+iol
	VBEIkxSyWs57xffe6J9K5Ir+ee/4DI6mVHvljdamfR4xIedsj9C3pQ+i/pi4lNqQL3h+Yq38+tA
	KREWAuII5j7cO8wqLIMRmrd4Bu3czglHmBJ/8dRJ6XS2TXxiCfu3FR4YeNMoMPDu2iUW8KllK+G
	8y40qqOooI4ttvFbem5XkE3VXydztc3iR+5JWGAskSqKePvK/qLZPafZKUnyv0IeIceUud7SXQ=
	=
X-Received: by 2002:a05:600c:528f:b0:483:702f:4641 with SMTP id 5b1f17b1804b1-48379b8c45fmr250986145e9.3.1771407744678;
        Wed, 18 Feb 2026 01:42:24 -0800 (PST)
X-Received: by 2002:a05:600c:528f:b0:483:702f:4641 with SMTP id 5b1f17b1804b1-48379b8c45fmr250985705e9.3.1771407744101;
        Wed, 18 Feb 2026 01:42:24 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4836ff00332sm354774195e9.2.2026.02.18.01.42.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 01:42:23 -0800 (PST)
Date: Wed, 18 Feb 2026 10:42:22 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Thierry Reding <thierry.reding@kernel.org>
Message-ID: <20260218-voracious-orchid-malamute-febce0@houat>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
 <20260122161009.3865888-7-thierry.reding@kernel.org>
 <20260123-meteoric-butterfly-of-imagination-fd691f@houat>
 <aY3nov29aBGWw93Y@orome>
MIME-Version: 1.0
In-Reply-To: <aY3nov29aBGWw93Y@orome>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XZM263SGYSWPQG3SI4XXV37QEARNTHNB
X-Message-ID-Hash: XZM263SGYSWPQG3SI4XXV37QEARNTHNB
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:27 +0000
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, Sumit Garg <sumit.garg@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 06/10] dma-buf: heaps: Add support for Tegra VPR
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XZM263SGYSWPQG3SI4XXV37QEARNTHNB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4378977049757511232=="
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
	NEURAL_HAM(-0.00)[-0.448];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: C1EDD411F33
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============4378977049757511232==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="4auwmrzja7jm6td5"
Content-Disposition: inline


--4auwmrzja7jm6td5
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 06/10] dma-buf: heaps: Add support for Tegra VPR
MIME-Version: 1.0

On Thu, Feb 12, 2026 at 03:50:09PM +0100, Thierry Reding wrote:
> On Fri, Jan 23, 2026 at 02:30:14PM +0100, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Thu, Jan 22, 2026 at 05:10:05PM +0100, Thierry Reding wrote:
> > > From: Thierry Reding <treding@nvidia.com>
> > >=20
> > > NVIDIA Tegra SoCs commonly define a Video-Protection-Region, which is=
 a
> > > region of memory dedicated to content-protected video decode and
> > > playback. This memory cannot be accessed by the CPU and only certain
> > > hardware devices have access to it.
> > >=20
> > > Expose the VPR as a DMA heap so that applications and drivers can
> > > allocate buffers from this region for use-cases that require this kind
> > > of protected memory.
> > >=20
> > > VPR has a few very critical peculiarities. First, it must be a single
> > > contiguous region of memory (there is a single pair of registers that
> > > set the base address and size of the region), which is configured by
> > > calling back into the secure monitor. The memory region also needs to
> > > quite large for some use-cases because it needs to fit multiple video
> > > frames (8K video should be supported), so VPR sizes of ~2 GiB are
> > > expected. However, some devices cannot afford to reserve this amount
> > > of memory for a particular use-case, and therefore the VPR must be
> > > resizable.
> > >=20
> > > Unfortunately, resizing the VPR is slightly tricky because the GPU fo=
und
> > > on Tegra SoCs must be in reset during the VPR resize operation. This =
is
> > > currently implemented by freezing all userspace processes and calling
> > > invoking the GPU's freeze() implementation, resizing and the thawing =
the
> > > GPU and userspace processes. This is quite heavy-handed, so eventually
> > > it might be better to implement thawing/freezing in the GPU driver in
> > > such a way that they block accesses to the GPU so that the VPR resize
> > > operation can happen without suspending all userspace.
> > >=20
> > > In order to balance the memory usage versus the amount of resizing th=
at
> > > needs to happen, the VPR is divided into multiple chunks. Each chunk =
is
> > > implemented as a CMA area that is completely allocated on first use to
> > > guarantee the contiguity of the VPR. Once all buffers from a chunk ha=
ve
> > > been freed, the CMA area is deallocated and the memory returned to the
> > > system.
> > >=20
> > > Signed-off-by: Thierry Reding <treding@nvidia.com>
> >=20
> > Aside from the discussion on CMA, it doesn't look like the heap defines
> > anywhere the attributes of the allocated buffers this heap provides.
>=20
> Attributes like what? Where would you expect the driver to define this?
> I don't see anything in struct drm_heap_export_info that sounds like
> what you expect, nor does the allocation ABI provide any means of
> reporting attributes.
>=20
> There's also not a whole lot to this, other than that the memory
> allocated by this can't be accessed by anything other than a select set
> of devices. You can't have any CPU access to these buffers (the hardware
> will refuse to let the CPU read from this memory) either, which is
> hinted at by the fact that no mmap() operations are allowed.
>=20
> Can you elaborate what you're looking for?

Are the buffers you're getting when allocating cacheable? uncacheable?
mappable? physically or virtually contiguous? etc.

See
https://docs.kernel.org/userspace-api/dma-buf-heaps.html#heaps

Maxime

--4auwmrzja7jm6td5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaZWJdwAKCRAnX84Zoj2+
duX+AYCJXsCjOrlEdYQB6RhYNSa4Pv3CLkFQFr1nVSSBelNLtgkkxbQHuCJrRHFs
/M4ii7YBgMXgh8YAl2SPDy/1KeWGMmlbxnWoeLENw02uUWqVixSx2Xv05JLfe8V/
j/WNZ8aHOg==
=vKsS
-----END PGP SIGNATURE-----

--4auwmrzja7jm6td5--


--===============4378977049757511232==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4378977049757511232==--

