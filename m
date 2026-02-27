Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJjgLswY4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:13:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3F041270A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:13:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5D77445845
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:13:47 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id A130F3F6F0
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 09:15:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=R9CTuJ9i;
	dkim=pass header.d=redhat.com header.s=google header.b=YLGSc3Hg;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772183702;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=SN/V8YGuTcxY85kDU89KkD1e6w8cvJs3/3Dd7L0T5yk=;
	b=R9CTuJ9i7ITbFT/y855/nbacwtvwU6vOVh3VBc3zUvgPd1s+rJgGzoMZgzVctn2eSJVOpN
	zUMKiTRH1UxNCbWlGGN9h1S46bNzAlmkjdnT9QkHfVREsu4vxCX/9Jhn4/ri4pUG+Nnp4N
	nGVJdsOXmQhr5nN8O9AJ2jggs2e08Xc=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-64-izhzEN_7OXa34ehQ55fvoQ-1; Fri, 27 Feb 2026 04:15:00 -0500
X-MC-Unique: izhzEN_7OXa34ehQ55fvoQ-1
X-Mimecast-MFC-AGG-ID: izhzEN_7OXa34ehQ55fvoQ_1772183699
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-4398fed3552so1606609f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 01:15:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772183699; x=1772788499; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SN/V8YGuTcxY85kDU89KkD1e6w8cvJs3/3Dd7L0T5yk=;
        b=YLGSc3Hg2BKw9MPCjaxt2dvir8aXhC3jySLAlLNFpnzK7fLxFs1E4+E168Q4bzQk/T
         FNDelEVe2WrLAF/PzyLfd+nZ47u8rw+vLpPML6JFhT/OYwWjtAOT1QB3EZG6+jF6eL9x
         2VHbpo38c4HaI2Hg4uPM/lKkX2HJ40o4h7YQibeueUfyiQv2V1Ogc2wOuRH6SwzIYbjP
         zOxV22egvEY7URP0Dq4k79KxQ+We02dr345D0Ur3lG5orwhUjtqJxGv99b439fdRzRct
         /eS3yUYSF4dwU5d7IctKBGKrQQ1AwgQ6lPzyDF28wSq5ibJefOPnqRKF1ss3MOe6IAB9
         HWkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772183699; x=1772788499;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SN/V8YGuTcxY85kDU89KkD1e6w8cvJs3/3Dd7L0T5yk=;
        b=HqVdnKh/yTOQ27RF3II7LzXtRqlmT03GsB0tMCrxxEs9XGBHYOKdzlM48pZz9a+osE
         jrcdfB4iYgZILPRuWR4noWtMhCnQ+3C0sFPZztdJmj+mbFtvprmQn26uVtI2SivqRG9s
         n34vvTP5Y0TcLC85eAFjhr23NfyRnTQvBpmYdrtB0Dv2By+ntN6ZMRDAZsMOssDD5tfo
         fP1RqlXJYJ6JFwHvZtw7+vFDZGGRciluWMsynIoL547V5ckWL89xjccRdUEG3GgOlPUg
         bSwPPIae/0KZ/ZE7mrOt5drEVIL2yzRo7qefakytOqovPIgvcg+y9vflh3lCxKhr40nH
         OVpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOUjbBcEl7Seiq4N7dVNOc4WD543SzJtPxjANc1T71tt2U8xC/GQW/xtVH1J9QE07oyyMNNwpbwtkE9Z/a@lists.linaro.org
X-Gm-Message-State: AOJu0YwWEDG+Mk/4XhrSW1iBzBGsleXRJj125cMX+jWhtOegmd7UQI+n
	usB7SyuInOETD+KBRpfnZsdZKUgMr59N+Akmu9dVF6Ux3Db1mvLydSFoHHRXCX8pV2fmGeqDtq4
	VqhPmXqExJOZRX6tI5qaPkCHr2a6LCA5zq22qWRitDZEuQoQqu6Mn94EsYnVEYi+sZMnU
X-Gm-Gg: ATEYQzwbyjQcmfhTRo1+CnoWIJGuF08d9X4YQWe/g2xc6bRoZk7AtUvY8+p9S4Rc7ck
	/XrszyBEZ2sF9GM/OVm5D5gy+BzQ/hPEE4RVJiH2na7xT8j0e03SMoo7b9g2sbeE5DAPOsYZTOv
	FHXghBhD7odonidi9gcP60ZRjs1bD74/dTkSvyx6KgSgAbta7w9M3ZUHGzMynHGzH3XGrNz/ur/
	5vgY6j67o0PP8VVcHOFGzlDgavVl01Xe3DR+ZuU1L6oRF6HQVyOuFEfFTpIDvInVrS7sDyv5qm9
	RTuLRsGRws8oj0phPO2VgpZJ6WEUzIZ8hED+OoVQHk1Bkt9hB1nL5YaFXIMraMX/YJL1OEZgNA=
	=
X-Received: by 2002:a05:6000:26cb:b0:432:c0e8:4a33 with SMTP id ffacd0b85a97d-4399de14d4cmr3501755f8f.22.1772183698401;
        Fri, 27 Feb 2026 01:14:58 -0800 (PST)
X-Received: by 2002:a05:6000:26cb:b0:432:c0e8:4a33 with SMTP id ffacd0b85a97d-4399de14d4cmr3501597f8f.22.1772183697160;
        Fri, 27 Feb 2026 01:14:57 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c76b20bsm5748279f8f.35.2026.02.27.01.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 01:14:56 -0800 (PST)
Date: Fri, 27 Feb 2026 10:14:56 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Robin Murphy <robin.murphy@arm.com>
Message-ID: <20260227-gleaming-saffron-binturong-580b3f@houat>
References: <20260224-b4-dmabuf-heap-coherent-rmem-v1-1-dffef43298ac@redhat.com>
 <d05a81ff-c6af-4621-9593-d06f80220e34@arm.com>
MIME-Version: 1.0
In-Reply-To: <d05a81ff-c6af-4621-9593-d06f80220e34@arm.com>
X-Spamd-Bar: -------
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WVUGMQCWZ6LCT7BRYYGMOVAHQYU77VAO
X-Message-ID-Hash: WVUGMQCWZ6LCT7BRYYGMOVAHQYU77VAO
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:05 +0000
CC: Albert Esteve <aesteve@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: Add Coherent heap to dmabuf heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WVUGMQCWZ6LCT7BRYYGMOVAHQYU77VAO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0789464076017777272=="
X-Spamd-Result: default: False [1.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1159];
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
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[redhat.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.970];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[xyz:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 4A3F041270A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============0789464076017777272==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="hjogu5z26zgaiwsw"
Content-Disposition: inline


--hjogu5z26zgaiwsw
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] dma-buf: heaps: Add Coherent heap to dmabuf heaps
MIME-Version: 1.0

Hi Robin,

On Thu, Feb 26, 2026 at 03:22:05PM +0000, Robin Murphy wrote:
> On 24/02/2026 7:57 am, Albert Esteve wrote:
> > Add a dma-buf heap for DT coherent reserved-memory
> > (i.e., 'shared-dma-pool' without 'reusable' property),
> > exposing one heap per region for userspace buffers.
>=20
> Despite the "shared" naming of the compatible, these kinds of reservations
> are often for highly device-specific purposes, and sometimes may not even=
 be
> accessible to other devices at all, so it's far from clear that there's a
> generic use-case for connecting them to dma-buf. Certainly it doesn't seem
> like a good idea to unconditionally create heaps for *everyting*, and give
> userspace free reign to mess with things it doesn't necessarily understand
> (especially where usage-specific restrictions implied by "no-map" are
> involved) and which may break drivers.

So, let's take a step back. We want to enable cgroup memory accounting
for any buffer allocation done through an ioctl, so DRM dumb buffers,
BOs, v4l2 buffers, dma-buf heap allocations, etc.

system memory would be tracked by the memcg cgroup memory, dedicated
memory pool through dmem, and CMA is kind of up in the air at the
moment, but probably both.

That means that when calling dma_alloc_attrs (or one of its variants),
you would not know which cgroup controller it's going to account into,
and thus enforcing limits becomes difficult.

So the plan discussed last year with the DRM (and then v4l2) maintainers
was to get away from using dma_alloc_attrs entirely and rely on the
heaps instead. Heap drivers would always allocate from the same cgroup
controller, so it's easier that way.

So, in order to get there, we need to create a heap instance for every
possible dma_alloc_attrs backend.

We have that for CMA and GFP already, but we're missing coherent (and
maybe more?).

> Most drivers that accomodate a memory-region expect to manage it themselv=
es,
> so I would think it should be up to the drivers to opt into delegating
> "their" pool to userspace by registering it as a heap. Or at very worst, =
at
> least some additional DT compatible or property to indicate that it really
> is safe and desirable to use a given pool in a truly shared manner.

I'm not sure a DT property is going to work there, because then we're
going to have drivers bypassing cgroup accounting forever. That being
said, I think we can work with the opt-in option you were mentioning.
That way, we could do it at the DRM/v4l2 framework level and roll it out
for all those drivers, without affecting the other framework and drivers
that could use it.

> Otherwise, If we just present some heaps named "memory@xyz" to userspace
> (arch/arm64/boot/dts/ti/k3-j784s4-j742s2-ti-ipc-firmware-common.dtsi is a
> fun example), do we really expect it to maintain exhaustive
> platform-specific knowledge of which actual device(s) they belong to and
> what they're for?

That ship has kind of sailed already. I'm not pleased about it either,
but it was the outcome of the discussion last time.

> And if it does try to just mess around and allocate and map stuff, how
> does the dma-buf layer also have all of that usage-specific detail to
> know what memory attributes are safe to map with etc.?

Sorry, I'm not quite sure what you mean by that. Did you mean how we
have to care about caching for example, or something else?

Maxime

--hjogu5z26zgaiwsw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaaFgiwAKCRAnX84Zoj2+
dqyJAYC1uBydtbMfbpOFtGCNJsHB17IA4OH5sJIk3fS2LDU/EQuKyKw7R/VeibN4
q57PX2IBf2dgDshYL8OBvoLDgsJkfFUj0iSSKlBoDlKgHznvB/qC6QhahQoiJcKe
NX2SEVA1rQ==
=liUf
-----END PGP SIGNATURE-----

--hjogu5z26zgaiwsw--


--===============0789464076017777272==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0789464076017777272==--

