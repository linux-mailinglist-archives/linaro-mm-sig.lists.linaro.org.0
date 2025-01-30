Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3B3A22E19
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jan 2025 14:47:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E8B64413B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jan 2025 13:47:16 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 8E7603F3DF
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jan 2025 13:47:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=AVevpFFh;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id ABBB95C5D67;
	Thu, 30 Jan 2025 13:46:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC69DC4CED2;
	Thu, 30 Jan 2025 13:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738244821;
	bh=1HcMWa+Krm0evLloVfTaMDioU4vbaxg54rfXDQtmf5g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AVevpFFhICWy5gdtLgxOYly145CXHa5QtjLlFolUZN+6Efeki+9DKjDK0k9iHYnZt
	 HTmak8Jk9KLr+REnfRqTz1TBJ6KIXUaXNYWY5rDo56lLO0k8IqwGpTbyxy6fBnir23
	 ql5N7/J69pa99ob9XyApcvDrxaIv+4jixqjLJyLgK6yRTKYcmr1U7yuKkkXDmTi3ap
	 J0eiKCsuxxZxlhqs3/ByKvITUC6Mmd4yrPtMCJAua+9IfntoHx0/3K5NiG8s1bZiFx
	 4czILs0mdAHc9YVe9nglJKrrI3UsXriubNyT9XtI9MVCYRwvoyVn1rgISbaqaMT9zb
	 yERv6witqaUiQ==
Date: Thu, 30 Jan 2025 14:46:57 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Florent Tomasin <florent.tomasin@arm.com>
Message-ID: <3ykaewmjjwkp3y2f3gf5jvqketicd4p2xqyajqtfnsxci36qlm@twidtyj2kgbw>
References: <cover.1738228114.git.florent.tomasin@arm.com>
MIME-Version: 1.0
In-Reply-To: <cover.1738228114.git.florent.tomasin@arm.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8E7603F3DF
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,google.com,amd.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[31];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	DNSWL_BLOCKED(0.00)[139.178.84.217:from];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: 7JX3QCYVUOQSXDOCZGDZULFSXGFFH5CS
X-Message-ID-Hash: 7JX3QCYVUOQSXDOCZGDZULFSXGFFH5CS
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-ker
 nel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/5] drm/panthor: Protected mode support for Mali CSF GPUs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7JX3QCYVUOQSXDOCZGDZULFSXGFFH5CS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============5654516375789143039=="


--===============5654516375789143039==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="34o7hfemb7lyu5o2"
Content-Disposition: inline


--34o7hfemb7lyu5o2
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RFC PATCH 0/5] drm/panthor: Protected mode support for Mali CSF
 GPUs
MIME-Version: 1.0

Hi,

I started to review it, but it's probably best to discuss it here.

On Thu, Jan 30, 2025 at 01:08:56PM +0000, Florent Tomasin wrote:
> Hi,
>=20
> This is a patch series covering the support for protected mode execution =
in
> Mali Panthor CSF kernel driver.
>=20
> The Mali CSF GPUs come with the support for protected mode execution at t=
he
> HW level. This feature requires two main changes in the kernel driver:
>=20
> 1) Configure the GPU with a protected buffer. The system must provide a D=
MA
>    heap from which the driver can allocate a protected buffer.
>    It can be a carved-out memory or dynamically allocated protected memor=
y region.
>    Some system includes a trusted FW which is in charge of the protected =
memory.
>    Since this problem is integration specific, the Mali Panthor CSF kernel
>    driver must import the protected memory from a device specific exporte=
r.

Why do you need a heap for it in the first place? My understanding of
your series is that you have a carved out memory region somewhere, and
you want to allocate from that carved out memory region your buffers.

How is that any different from using a reserved-memory region, adding
the reserved-memory property to the GPU device and doing all your
allocation through the usual dma_alloc_* API?

Or do you expect to have another dma-buf heap that would call into the
firmware to perform the allocations?

The semantics of the CMA heap allocations is a concern too.

Another question is how would you expect something like a secure
video-playback pipeline to operate with that kind of interface. Assuming
you have a secure codec, you would likely get that protected buffer from
the codec, right? So the most likely scenario would be to then import
that dma-buf into the GPU driver, but not allocate the buffer from it.

Overall, I think a better abstraction would be to have a heap indeed to
allocate your protected buffers from, and then import them in the
devices that need them. The responsibility would be on the userspace to
do so, but it already kind of does with your design anyway.

Maxime

--34o7hfemb7lyu5o2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ5uC0QAKCRAnX84Zoj2+
dkA4AYDYrS5bk2TFxito0yjOXO6So47lFz5UzaXuosDfn5WUytk/shyJlNgqK8Qe
ytvE2GkBgNtOW+4ZQtCmW9i1X2peM2q+jrrnhD6soQun0iSdlrVLjvNIXKHT4ViO
p7LJbwkZTQ==
=pw8X
-----END PGP SIGNATURE-----

--34o7hfemb7lyu5o2--

--===============5654516375789143039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============5654516375789143039==--
