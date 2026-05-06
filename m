Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPBpGP9fBGpxHgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:26:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 04382532377
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:26:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1465F3F820
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:26:54 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 7391B3F72F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 09:51:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=RI27SDbK;
	dkim=pass header.d=redhat.com header.s=google header.b=Q9Twe3FO;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mripard@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1778061063;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=vfrATgQHWoLdism2lue+ijTptYIlhESry+/AqSEnFWE=;
	b=RI27SDbKKDguoKKMbbzFH5qRa0MoeviY4xlJbsMLl7Jt2poMo0opihyY+5fM0OXw/908LH
	q/xE0FtLRnYeCQ12+/v9O6t3tHmcJJlYGKjnmSlZ/9egSs6XULXLM9/6AwIzW8uIald+Pq
	jIwPdQqSoD6Nn9J29NX6ai1uqB5WTng=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-102-rISbz3ynMW24YiflahnwhQ-1; Wed, 06 May 2026 05:51:01 -0400
X-MC-Unique: rISbz3ynMW24YiflahnwhQ-1
X-Mimecast-MFC-AGG-ID: rISbz3ynMW24YiflahnwhQ_1778061060
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-4411a2c034fso4709197f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 06 May 2026 02:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1778061060; x=1778665860; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vfrATgQHWoLdism2lue+ijTptYIlhESry+/AqSEnFWE=;
        b=Q9Twe3FOYJVBZnXSuf3D3cKNEporNHOBK7W1Vxxsa3T761tq9jnCWfuWhIS7hkh17U
         Hv7XoH24QpWFftw8Whyirngu+dFvXRx39+u0UjA3MvHT/eC+a18HpNRSBgcHIlyEP9GI
         0APUyU/FldCaOcpeO0qWwOOlhhYhzMPvtjRqs4wuKfN7s++is2rC7xfXKgfeSdkoIiqN
         jhSF0tK1PGRjtbVsGoKEbarUKXFA0C8jLGtt71AqgUN+1IIBOgANqc9VU7fr9yJyxmrw
         EL9xFjL/KFRTeeZtifGN037p531ntxh5dCeCQTOdx9FKp9VA/m8SLOIydjFkwPj7K8BY
         gY1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778061060; x=1778665860;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vfrATgQHWoLdism2lue+ijTptYIlhESry+/AqSEnFWE=;
        b=nKOa+DRSsnKsJYdvN3JTovoh+z9JZigFT4JxF9ekpgvHCmeZfZQJC0WMLESZ9vu/Wl
         GZt2g8SwO3v1+C851QWsG4e1b4271mFU55LhyqmwJCgaoEpiUy1kymcs2pZ3515vBE6J
         GNxaWXdA5OHyMSBZK1Q7B3X85iOzqujAW4IJlPcUSeq5xvIUM3b4/55dl9PXZHVyEWre
         xj6wLdNaAEkpma8FcSYhq6phSCZ/QJZrfBizX4TZdnF15KINHkILyaJs8hXFHa+IIx4Q
         loeyLGeYXj4+E6bShD8HLpq3vCOzN/vYyfDRzkLfQ8Qyru1KV6ZXDQ0o9/eqpxaExHYI
         7m0Q==
X-Forwarded-Encrypted: i=1; AFNElJ8s6NM8xd1ihaPSWntTDHVsuilMEIkopyEL88DJ58uKux8AhW3Rd3wQ2+yX82CTA6ujOtzujYxu2YXdqH7g@lists.linaro.org
X-Gm-Message-State: AOJu0YyyGiTiOZHpQIp/aUYQMLpCaaiFoNCk/FmnNSscDi2by2JhSmAR
	5bd/qQxEz/nAFerHg3pmS/xA18AWBdhEnk/E11/mZbEzDBkJXoZnM5im4t/VICfhaeyedsHPVWm
	i/uQFKpjLCpbRboaH0BPXu3+wmHXuNQHvm+g6jdJMSsjFRy9OJ6OqKiEGl5sLt0KQXerQ
X-Gm-Gg: AeBDiesjQEyhkIr9QEPgZmHTyZPc2DxqIgCR3zET9JWhPxFoJ61CJ1ZEhzctKKY19h+
	tpKE31BWE7Gc9p7CdmFdJU7ARKrVO9PUoUFdP48PX47ETDuLyMucCovX11dmI4ER/vG1BrushIe
	LYrlT2fJh0qIvdwcVjvq5rLlRPDPDEXdOgvMnW5/hh5CzZmJ5tTbT8wBNBri/h76pBNAyjoRtI5
	TF11AsnAioh7lg/DTw50KgrGcTT4DZYMWPO4mp6aOfZ5QJCh6IhFSHfjQHHcjdamkEXun2rjeuk
	zq1OnCk6lS5jQ/ZWas6S3WZmUX7VIawBTFBLP6V5K+UpyOn6UMSeMrSTYFxowPcRMNswtZO++mZ
	Su4l2TFeg
X-Received: by 2002:a5d:5f83:0:b0:446:ef9a:8f41 with SMTP id ffacd0b85a97d-4515da970a0mr4473814f8f.40.1778061060043;
        Wed, 06 May 2026 02:51:00 -0700 (PDT)
X-Received: by 2002:a5d:5f83:0:b0:446:ef9a:8f41 with SMTP id ffacd0b85a97d-4515da970a0mr4473777f8f.40.1778061059498;
        Wed, 06 May 2026 02:50:59 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45054b02abbsm10793056f8f.18.2026.05.06.02.50.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2026 02:50:58 -0700 (PDT)
Date: Wed, 6 May 2026 11:50:58 +0200
From: Maxime Ripard <mripard@redhat.com>
To: Thierry Reding <thierry.reding@kernel.org>
Message-ID: <20260506-tentacled-unicorn-of-typhoon-cb4edb@houat>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
 <20260122161009.3865888-7-thierry.reding@kernel.org>
 <20260123-meteoric-butterfly-of-imagination-fd691f@houat>
 <aY3nov29aBGWw93Y@orome>
 <20260218-voracious-orchid-malamute-febce0@houat>
 <afJSQbArB8USb6mt@orome>
MIME-Version: 1.0
In-Reply-To: <afJSQbArB8USb6mt@orome>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Z7273QBT2VET3KB4LKDQFW7VGJNWPVSS
X-Message-ID-Hash: Z7273QBT2VET3KB4LKDQFW7VGJNWPVSS
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:43 +0000
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, Sumit Garg <sumit.garg@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 06/10] dma-buf: heaps: Add support for Tegra VPR
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z7273QBT2VET3KB4LKDQFW7VGJNWPVSS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6720619366304143669=="
X-Rspamd-Queue-Id: 04382532377
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.89 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[169];
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
	NEURAL_HAM(-0.00)[-0.960];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action


--===============6720619366304143669==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="sztjivasnlwpybgk"
Content-Disposition: inline


--sztjivasnlwpybgk
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 06/10] dma-buf: heaps: Add support for Tegra VPR
MIME-Version: 1.0

Hi Thierry,

On Wed, Apr 29, 2026 at 08:49:58PM +0200, Thierry Reding wrote:
> On Wed, Feb 18, 2026 at 10:42:22AM +0100, Maxime Ripard wrote:
> > On Thu, Feb 12, 2026 at 03:50:09PM +0100, Thierry Reding wrote:
> > > On Fri, Jan 23, 2026 at 02:30:14PM +0100, Maxime Ripard wrote:
> > > > Hi,
> > > >=20
> > > > On Thu, Jan 22, 2026 at 05:10:05PM +0100, Thierry Reding wrote:
> > > > > From: Thierry Reding <treding@nvidia.com>
> > > > >=20
> > > > > NVIDIA Tegra SoCs commonly define a Video-Protection-Region, whic=
h is a
> > > > > region of memory dedicated to content-protected video decode and
> > > > > playback. This memory cannot be accessed by the CPU and only cert=
ain
> > > > > hardware devices have access to it.
> > > > >=20
> > > > > Expose the VPR as a DMA heap so that applications and drivers can
> > > > > allocate buffers from this region for use-cases that require this=
 kind
> > > > > of protected memory.
> > > > >=20
> > > > > VPR has a few very critical peculiarities. First, it must be a si=
ngle
> > > > > contiguous region of memory (there is a single pair of registers =
that
> > > > > set the base address and size of the region), which is configured=
 by
> > > > > calling back into the secure monitor. The memory region also need=
s to
> > > > > quite large for some use-cases because it needs to fit multiple v=
ideo
> > > > > frames (8K video should be supported), so VPR sizes of ~2 GiB are
> > > > > expected. However, some devices cannot afford to reserve this amo=
unt
> > > > > of memory for a particular use-case, and therefore the VPR must be
> > > > > resizable.
> > > > >=20
> > > > > Unfortunately, resizing the VPR is slightly tricky because the GP=
U found
> > > > > on Tegra SoCs must be in reset during the VPR resize operation. T=
his is
> > > > > currently implemented by freezing all userspace processes and cal=
ling
> > > > > invoking the GPU's freeze() implementation, resizing and the thaw=
ing the
> > > > > GPU and userspace processes. This is quite heavy-handed, so event=
ually
> > > > > it might be better to implement thawing/freezing in the GPU drive=
r in
> > > > > such a way that they block accesses to the GPU so that the VPR re=
size
> > > > > operation can happen without suspending all userspace.
> > > > >=20
> > > > > In order to balance the memory usage versus the amount of resizin=
g that
> > > > > needs to happen, the VPR is divided into multiple chunks. Each ch=
unk is
> > > > > implemented as a CMA area that is completely allocated on first u=
se to
> > > > > guarantee the contiguity of the VPR. Once all buffers from a chun=
k have
> > > > > been freed, the CMA area is deallocated and the memory returned t=
o the
> > > > > system.
> > > > >=20
> > > > > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > > >=20
> > > > Aside from the discussion on CMA, it doesn't look like the heap def=
ines
> > > > anywhere the attributes of the allocated buffers this heap provides.
> > >=20
> > > Attributes like what? Where would you expect the driver to define thi=
s?
> > > I don't see anything in struct drm_heap_export_info that sounds like
> > > what you expect, nor does the allocation ABI provide any means of
> > > reporting attributes.
> > >=20
> > > There's also not a whole lot to this, other than that the memory
> > > allocated by this can't be accessed by anything other than a select s=
et
> > > of devices. You can't have any CPU access to these buffers (the hardw=
are
> > > will refuse to let the CPU read from this memory) either, which is
> > > hinted at by the fact that no mmap() operations are allowed.
> > >=20
> > > Can you elaborate what you're looking for?
> >=20
> > Are the buffers you're getting when allocating cacheable? uncacheable?
> > mappable? physically or virtually contiguous? etc.
> >=20
> > See
> > https://docs.kernel.org/userspace-api/dma-buf-heaps.html#heaps
>=20
> The CPU doesn't have access to the contents of these buffers, so
> cacheable or uncacheable aren't really meaningful, but I guess they are
> unmappable in that sense. The buffers are physically contiguous, but I
> think "protected" is the right name for the heap since it most
> accurately describes what the purpose (and access pattern) is.

Yeah, that's what panthor has been using too:
https://lore.kernel.org/r/20260505140516.1372388-1-ketil.johnsen@arm.com

--sztjivasnlwpybgk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCafsPAQAKCRAnX84Zoj2+
duZVAX4rZKstjm4yGIoK4/qxMtpVXLGWXrhCS66Fx3Nz2VUdigwaNxKdo0VUnHgz
6sVzgJsBfRq2AlW+F/stHpXM0fMsHUXere2S6tyHKPw8gwt6dAO5rXziaIeIl7HL
rUTTJPnxiQ==
=nQPK
-----END PGP SIGNATURE-----

--sztjivasnlwpybgk--


--===============6720619366304143669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6720619366304143669==--

