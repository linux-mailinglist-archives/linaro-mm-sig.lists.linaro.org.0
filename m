Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 77172A32306
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Feb 2025 11:01:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 36E3A410E9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Feb 2025 10:01:28 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 98965410E9
	for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Feb 2025 10:01:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=JFknMvAY;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 764BE5C5DAE;
	Wed, 12 Feb 2025 10:00:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 373AEC4CEDF;
	Wed, 12 Feb 2025 10:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739354473;
	bh=woz7pk/+ngx1fAXXik33xpEwcwvHhgnlnzWIambURC4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JFknMvAYCwTyrVf3OxL2gYhdX1gCloKqAmyPXLmtzPDsbcRVkduTdz/DV5ooCn6B8
	 4+t2DpEMJiVVr1HQy/UiPXnSvdRjYZe/W+HkI0ERWJH1/abm0dKszP95sM9O6UTc7F
	 cLOzYQhgS2NJc9exC2em9aL/Mx1QYAwOIbY8AESaYkLTGqh4r4i4tds7+BKUhmiddw
	 rV8PgQzg43sxTHsHorGuUbkQHjEZkYtDbHRc+gM3WRI8ALQ9y2UmKa7xUpmV7xI6eF
	 3dF5FTcTfKWbuXXv91blHqqWPM6YquxAfS0ysnR7v22PRyei45Pal7UpfLtSsX8Q6B
	 eI9d4Ema9btyQ==
Date: Wed, 12 Feb 2025 11:01:11 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Florent Tomasin <florent.tomasin@arm.com>
Message-ID: <20250212-naughty-chipmunk-of-potency-7e0ced@houat>
References: <cover.1738228114.git.florent.tomasin@arm.com>
 <771534be8dfa2a3bdc3876502752f518224b9298.1738228114.git.florent.tomasin@arm.com>
 <ats2unrml5a7vbpdrqrzowodrsfj44bnubpbujg2igk3imeklx@nrpmg5oeq3gz>
 <be8e6b9f-c3c6-41d1-af9c-3dcd102f0fe3@arm.com>
 <b02711c901e8acf2bc47926919de7673a0cb0b98.camel@ndufresne.ca>
 <fae8df2a-3e47-4266-aace-392c5f37581f@arm.com>
MIME-Version: 1.0
In-Reply-To: <fae8df2a-3e47-4266-aace-392c5f37581f@arm.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 98965410E9
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.67 / 15.00];
	SIGNED_PGP(-2.00)[];
	BAYES_HAM(-1.57)[92.22%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[32];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ndufresne.ca,kernel.org,collabora.com,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,google.com,amd.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: N66CB6Y5H2BW2YTRB3VWF7RMTXUE2MSR
X-Message-ID-Hash: N66CB6Y5H2BW2YTRB3VWF7RMTXUE2MSR
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Nicolas Dufresne <nicolas@ndufresne.ca>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, lina
 ro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 1/5] dt-bindings: dma: Add CMA Heap bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N66CB6Y5H2BW2YTRB3VWF7RMTXUE2MSR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8758414806610455384=="


--===============8758414806610455384==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="uxrfo3idfywaw7zh"
Content-Disposition: inline


--uxrfo3idfywaw7zh
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RFC PATCH 1/5] dt-bindings: dma: Add CMA Heap bindings
MIME-Version: 1.0

On Wed, Feb 12, 2025 at 09:49:56AM +0000, Florent Tomasin wrote:
> Note that the CMA patches were initially shared to help reproduce my
> environment of development, I can isolate them in a separate patch
> series and include a reference or "base-commit:" tag to it in the
> Panthor protected mode RFC, to help progress this review in another
> thread. It will avoid overlapping these two topics:
>=20
> - Multiple standalone CMA heaps support
> - Panthor protected mode handling

You keep insisting on using CMA here, but it's really not clear to me
why you would need CMA in the first place.

By CMA, do you mean the CMA allocator, and thus would provide buffers
through the usual dma_alloc_* API, or would any allocator providing
physically contiguous memory work?

In the latter case, would something like this work:
https://lore.kernel.org/all/20240515-dma-buf-ecc-heap-v1-1-54cbbd049511@ker=
nel.org/

Maxime

--uxrfo3idfywaw7zh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ6xxYgAKCRAnX84Zoj2+
doOXAYCmJnHBgdesgUZVquuWr6GPMIwXNegsF2kF9WE8cUf8QZREQljZMta1yPl+
Y3KyEfEBf2GAaLjFhJfdk0/CAvLXAP/kO5oVGERfJbRdGvpysS+9JiElAhrVFTWR
1Zzqx2VRSg==
=Jh+j
-----END PGP SIGNATURE-----

--uxrfo3idfywaw7zh--

--===============8758414806610455384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8758414806610455384==--
