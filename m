Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBzFHDBc5mmtvAEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:02:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8324306CB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:02:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EFEE040501
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:02:38 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 775E13F952
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Mar 2026 12:30:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=X0wPEB93;
	dkim=pass header.d=redhat.com header.s=google header.b=lFBbDTuZ;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mripard@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772713810;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=n4h7C/mVddSBf5SlRktQxYvLNWZ3n2LVuIMNQt34HFE=;
	b=X0wPEB93IEajUz0A2g6HSP7hGEjVZfKf5SQk+w47OE41tznRCbdnVt+dqNrgHdEKyQC+Rv
	d7POpEKcmrQq6Fn2dhGPPDi2xfAtXXhZNkB7u1qSIlHjwmqZR8bhypsoMhC/PL1Fqb8o5P
	Upl3T6egc0NgIPcbguYIPtLQ8+gxYVo=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-14-Tiv9brdSPIed6QpOWaDTgg-1; Thu, 05 Mar 2026 07:30:09 -0500
X-MC-Unique: Tiv9brdSPIed6QpOWaDTgg-1
X-Mimecast-MFC-AGG-ID: Tiv9brdSPIed6QpOWaDTgg_1772713808
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-48071615686so62850585e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Mar 2026 04:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772713808; x=1773318608; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=n4h7C/mVddSBf5SlRktQxYvLNWZ3n2LVuIMNQt34HFE=;
        b=lFBbDTuZngNOlQAuOSR5H9b/ev9InbMcyNIPTe9HNrujTiyBUjzJMpL/o+NEjUFW3k
         IhEcfCrjmWt0o/XgP8Jt1Fx6+TB4SgKOhu3ymDrxRun8Xpge2L3D1xfhnUL0fE4/3zOx
         OeWA/tW9e2hTFGVy/Aifmg5nYCtqcfL309/iXo4ytijM9GkmGRDKxDPnR9pZZIoWYwLO
         1dkty0SGqM0bKPEkYDv/YIWNya7LJuUxrekXKLKFFWqhiVtujtrYWcIrDVUQ15fdSTuC
         jnA8NWQrE5GzmEC/RlqWhR0HOBcx5v41xIJE7jZruWYT96y7tpKiRQNSDKtZ0ZG9F0jB
         pPyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772713808; x=1773318608;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n4h7C/mVddSBf5SlRktQxYvLNWZ3n2LVuIMNQt34HFE=;
        b=LbHtYZMjSTnDlvTM83eF+mEFYBhy/ixq97Vprp1JtbM0TNmDFXLwRa15mL4zHvMju5
         Q4CITgMHeNstMuXBviUgVE37BlIT+Set9P80kqUAxtxz1hIcgBBPyzx2SzT+1VEqlN0X
         LOZjnoddBF+FxwQNoomnVwM7v2gcvGPWXc8YL1S9LfuwNakDGxpwxPNq6ZTDUb3s+TaH
         q9Lya+BiAObAv1rBm5xUf2KkQUSR0mShnZdKm4rX11x4bHZazSiqOVU8DBO8hE9SE7lD
         QT2SfV586SHTrUUBjrdpTVGJVm3NEZz8tBNeH0p+d/LiPWIV2y5RMCa9Qxs5gy1UX0kI
         EdOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMXqUcNbOVPciY7pnOxSEXmSByf0+BL+Gro9loWpF7rZx5BPKgviB3t02O0U4A+pLQq2ItvigGkOn3Jquz@lists.linaro.org
X-Gm-Message-State: AOJu0YyEzdwUSoU++03qgu6BZSyHPeuPcbC5PPp6iH2X2YyS1vNUvnVH
	1TpN06GIuY6B3bJOozpJ14US7O7moSRvV0EgTRMc+H0q0yKPo/ZgFlEBe12lWeuw3JO2moQBSED
	5O3nh4coqU4lUtpq1gnPO/saUiJ4VhMIh1vjXXjc3gj/JWpQWdn/le9S2QUxca5MhS9gJ
X-Gm-Gg: ATEYQzw3IOCxaKEb/mtaTYenwT7N1gZ5Uo6z7EpXe6y5Z/hqitH9I+AxZXL4ZDtVP6i
	blWww5YA521I4KHGv7rtsFWsGlk5eW3YxjBQ9dxQurBrq/R8Keg92NFLI10JkIQakLbpDLvUmi8
	vEUVfDfefnEN1T22qF7jr9qAFgr6r1t0aZ/IbYI/MNnnCu3T12ys9USMbq5nkShwqQT3zDt+orJ
	fO/ccQCyKn37HnRfMdoXadfyXjQsgEykJpIK7EfUaaZ0Qng2HlRdInils+y4TaslagsIV0HvXNS
	bOCd1dnypwlxt9s7NtKeIX3W6uTIWYP2DDw6GuUclTwmFCoh0nVZmgQiTQebKieM6Ko2iAce5Q=
	=
X-Received: by 2002:a05:600c:1e0d:b0:483:3380:ca11 with SMTP id 5b1f17b1804b1-485198c81e4mr91451365e9.33.1772713807341;
        Thu, 05 Mar 2026 04:30:07 -0800 (PST)
X-Received: by 2002:a05:600c:1e0d:b0:483:3380:ca11 with SMTP id 5b1f17b1804b1-485198c81e4mr91450615e9.33.1772713806762;
        Thu, 05 Mar 2026 04:30:06 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851ad1656bsm39645565e9.24.2026.03.05.04.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 04:30:05 -0800 (PST)
Date: Thu, 5 Mar 2026 13:30:05 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Albert Esteve <aesteve@redhat.com>
Message-ID: <20260305-antique-flying-gopher-4cbe34@houat>
References: <20260303-b4-dmabuf-heap-coherent-rmem-v2-0-65a4653b3378@redhat.com>
 <20260303-b4-dmabuf-heap-coherent-rmem-v2-4-65a4653b3378@redhat.com>
 <20260303-rigorous-cow-of-saturation-23f87b@houat>
 <CADSE00+jCZSHi=OLbmOebBwnue5tjG7AFPKN76CbYDWYBcP+AA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADSE00+jCZSHi=OLbmOebBwnue5tjG7AFPKN76CbYDWYBcP+AA@mail.gmail.com>
X-Spamd-Bar: ------
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FDDEUZB2EZZFTQ66JIUEZPVPNYW24AGX
X-Message-ID-Hash: FDDEUZB2EZZFTQ66JIUEZPVPNYW24AGX
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:02:17 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/6] dma-buf: heaps: Add Coherent heap to dmabuf heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FDDEUZB2EZZFTQ66JIUEZPVPNYW24AGX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6441787904341519300=="
X-Spamd-Result: default: False [1.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[1108];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.297];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: DD8324306CB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============6441787904341519300==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="hngdcoke4k7khock"
Content-Disposition: inline


--hngdcoke4k7khock
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 4/6] dma-buf: heaps: Add Coherent heap to dmabuf heaps
MIME-Version: 1.0

On Tue, Mar 03, 2026 at 03:47:14PM +0100, Albert Esteve wrote:
> On Tue, Mar 3, 2026 at 2:20=E2=80=AFPM Maxime Ripard <mripard@redhat.com>=
 wrote:
> > On Tue, Mar 03, 2026 at 01:33:47PM +0100, Albert Esteve wrote:
> > > Add a dma-buf heap for DT coherent reserved-memory
> > > (i.e., 'shared-dma-pool' without 'reusable' property),
> > > exposing one heap per region for userspace buffers.
> > >
> > > The heap binds the heap device to each memory region so
> > > coherent allocations use the correct dev->dma_mem, and
> > > it defers registration until module_init when normal
> > > allocators are available.
> > >
> > > Signed-off-by: Albert Esteve <aesteve@redhat.com>
> > > ---
> > >  drivers/dma-buf/dma-heap.c            |   4 +-
> > >  drivers/dma-buf/heaps/Kconfig         |   9 +
> > >  drivers/dma-buf/heaps/Makefile        |   1 +
> > >  drivers/dma-buf/heaps/coherent_heap.c | 426 ++++++++++++++++++++++++=
++++++++++
> > >  include/linux/dma-heap.h              |  11 +
> > >  include/linux/dma-map-ops.h           |   7 +
> > >  6 files changed, 456 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> > > index 88189d4e48561..ba87e5ac16ae2 100644
> > > --- a/drivers/dma-buf/dma-heap.c
> > > +++ b/drivers/dma-buf/dma-heap.c
> > > @@ -390,8 +390,8 @@ struct dma_heap *dma_heap_add(const struct dma_he=
ap_export_info *exp_info)
> > >
> > >       heap =3D dma_heap_create(exp_info);
> > >       if (IS_ERR(heap)) {
> > > -             pr_err("dma_heap: failed to create heap (%d)\n", PTR_ER=
R(heap));
> > > -             return PTR_ERR(heap);
> > > +             pr_err("dma_heap: failed to create heap (%ld)\n", PTR_E=
RR(heap));
> > > +             return ERR_CAST(heap);
> >
> > This looks unrelated and should possibly be squashed into the previous
> > patch that introduces dma_heap_create()?
> >
> > > +static int coherent_heap_init_dma_mask(struct device *dev)
> > > +{
> > > +     int ret;
> > > +
> > > +     ret =3D dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(64));
> > > +     if (!ret)
> > > +             return 0;
> > > +
> > > +     /* Fallback to 32-bit DMA mask */
> > > +     return dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
> > > +}
> >
> > Why do you need to mess with the DMA mask? I'd expect that device to be
> > able to access everything.
>=20
> When I tested I was getting: "reserved memory is beyond device's set
> DMA address range", so I tested if it was fixed with
> dma_coerce_mask_and_coherent() and/or dma_set_mask_coherent(). I did
> not debug the value of coherent_dma_mask, but given the error I assume
> it was not set properly? Ultimately, using the 64 bit mask fixed it,
> and I added a 32-bit fallback to ensure support for 32-bit systems.

So you don't need to handle the fallback because
dma_coerce_mask_and_coherent will truncate the generated mask to
dma_addr_t, which is 64bits on 64 bits platforms, and 32 bits on 32 bits
platforms.

https://elixir.bootlin.com/linux/v6.19.3/source/kernel/dma/mapping.c#L908

But I think my point was more than there's nothing specific to the
coherent heap itself: the device allocated for the heap should have the
right mask for any heap, so it's something I'd rather put in
dma_heap_add.

> > > +static int __coherent_heap_register(struct reserved_mem *rmem)
> > > +{
> > > +     struct dma_heap_export_info exp_info;
> > > +     struct coherent_heap *coh_heap;
> > > +     struct device *heap_dev;
> > > +     int ret;
> > > +
> > > +     if (!rmem || !rmem->name)
> > > +             return -EINVAL;
> > > +
> > > +     coh_heap =3D kzalloc_obj(*coh_heap);
> > > +     if (!coh_heap)
> > > +             return -ENOMEM;
> > > +
> > > +     coh_heap->rmem =3D rmem;
> > > +     coh_heap->name =3D kstrdup(rmem->name, GFP_KERNEL);
> > > +     if (!coh_heap->name) {
> > > +             ret =3D -ENOMEM;
> > > +             goto free_coherent_heap;
> > > +     }
> > > +
> > > +     exp_info.name =3D coh_heap->name;
> > > +     exp_info.ops =3D &coherent_heap_ops;
> > > +     exp_info.priv =3D coh_heap;
> > > +
> > > +     coh_heap->heap =3D dma_heap_create(&exp_info);
> > > +     if (IS_ERR(coh_heap->heap)) {
> > > +             ret =3D PTR_ERR(coh_heap->heap);
> > > +             goto free_name;
> > > +     }
> > > +
> > > +     heap_dev =3D dma_heap_get_dev(coh_heap->heap);
> > > +     ret =3D coherent_heap_init_dma_mask(heap_dev);
> > > +     if (ret) {
> > > +             pr_err("coherent_heap: failed to set DMA mask (%d)\n", =
ret);
> > > +             goto destroy_heap;
> > > +     }
> > > +
> > > +     ret =3D of_reserved_mem_device_init_with_mem(heap_dev, rmem);
> > > +     if (ret) {
> > > +             pr_err("coherent_heap: failed to initialize memory (%d)=
\n", ret);
> > > +             goto destroy_heap;
> > > +     }
> > > +
> > > +     ret =3D dma_heap_register(coh_heap->heap);
> > > +     if (ret) {
> > > +             pr_err("coherent_heap: failed to register heap (%d)\n",=
 ret);
> > > +             goto destroy_heap;
> > > +     }
> >
> > I guess it's more of a comment about your previous patch, but it's not
> > clear to me why you needed to split dma_heap_add into dma_heap_create /
> > _register. Can you expand a bit?
>=20
> So first I tried to just use dma_heap_add() and then use the heap_dev
> afterward to call of_reserved_mem_device_init_with_mem(), but if that
> call failed, the error path required some kind dma_heap_remove()
> function as the heap was already registered by then.
>=20
> In the CMA heap for example, dma_heap_add() is invoked at the end of
> the `init` function. Therefore, you do not have this issue, if it
> failed it means the heap was not added and you just need to clean
> everything else.
>=20
> However, performing a remove() does not sound like something that can
> be done safely. I've spent some time thinking on alternatives, but
> splitting felt the best pattern.
>=20
> This way I can:
> 1. Create the device
> 2. Call of_reserved_mem_device_init_with_mem
> 3. Register the heap
>=20
> This places registration at the end, making every error path and
> cleanup easy to handle.
>=20
> Also, the `dma_heap_add()` code already seemed to handle these two
> parts/phases implicitly with device_create(), so splitting felt
> architecturally sound.

That makes sense, thanks!

Maxime

--hngdcoke4k7khock
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaal3SAAKCRAnX84Zoj2+
dn3QAX9E8YO33rmROOTGm7jbkHqsOZ8TA0MZtGRMovqQZMantYBJIMKP5dURZuMJ
oYoU8x4BgLjR9qQ/3rZv2lePDmMzvq1bRUaeUiPuJqKtDmMVvUOIXTdhGEcO1s7+
wnCWMipN7A==
=F33u
-----END PGP SIGNATURE-----

--hngdcoke4k7khock--


--===============6441787904341519300==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6441787904341519300==--

