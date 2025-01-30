Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EB805A22DE2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jan 2025 14:34:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3DF64413E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jan 2025 13:34:49 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id D90193F3DF
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jan 2025 13:34:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=paj8Ojc2;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 8B178A411A3;
	Thu, 30 Jan 2025 13:32:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46798C4CED2;
	Thu, 30 Jan 2025 13:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738244073;
	bh=J0b+obWMjwAaXulYmF/USRpijIdeFA5Q4buPxAHpfEY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=paj8Ojc2487u0LjD1LvjOz88O1023RfHLGy5RmT3rBujmTTDmWlKY9vHjdrVr9rWl
	 SunBQKrHpL6RsyKaEXqU6rtx47XgEpdc4yMLc1eVKKd2SOkeBqFb8OvS3332+janft
	 cVZ+UHaBuJnnaPEclpK6uegtAvC+fji9P9Ab+czIV4O/LDady49Die3UbM7vPIv1oU
	 Df8aN8hfG/V/bgtF45VguGhzoSGpblA6d5B/1BAFITSq5XiYn2w+Qk3sITk7g/4/w7
	 UrtqvkTqnQNxxaGAE9tRACSLqtdyEv86Pklg0hAq91KZ3weKygnCZRqQqRZ3XNZJH1
	 gMKBYmwwZTsLg==
Date: Thu, 30 Jan 2025 14:34:30 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Florent Tomasin <florent.tomasin@arm.com>
Message-ID: <kyesso3gaajbdze3ie4imrmrk2lzqf6s7eoonlljeitfs3utwh@dycnl7cnzep5>
References: <cover.1738228114.git.florent.tomasin@arm.com>
 <2255866ee9e81136a7099376b34b8305758ec9f0.1738228114.git.florent.tomasin@arm.com>
MIME-Version: 1.0
In-Reply-To: <2255866ee9e81136a7099376b34b8305758ec9f0.1738228114.git.florent.tomasin@arm.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D90193F3DF
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.10 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[147.75.193.91:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[31];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,google.com,amd.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: PNTPXG3VXPES4Y5OJXV3NI5KY26R5HA5
X-Message-ID-Hash: PNTPXG3VXPES4Y5OJXV3NI5KY26R5HA5
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-ker
 nel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 2/5] cma-heap: Allow registration of custom cma heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PNTPXG3VXPES4Y5OJXV3NI5KY26R5HA5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0199031469253340777=="


--===============0199031469253340777==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="x43ujhulkmklcecy"
Content-Disposition: inline


--x43ujhulkmklcecy
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RFC PATCH 2/5] cma-heap: Allow registration of custom cma heaps
MIME-Version: 1.0

Hi,

On Thu, Jan 30, 2025 at 01:08:58PM +0000, Florent Tomasin wrote:
> This patch introduces a cma-heap probe function, allowing
> users to register custom cma heaps in the device tree.
>=20
> A "memory-region" is bound to the cma heap at probe time
> allowing allocation of DMA buffers from that heap.
>=20
> Use cases:
> - registration of carved out secure heaps. Some devices
>   are implementing secure memory by reserving a specific
>   memory regions for that purpose. For example, this is the
>   case of platforms making use of early version of
>   ARM TrustZone.

In such a case, the CMA heap would de-facto become un-mappable for
userspace, right?

> - registration of multiple memory regions at different
>   locations for efficiency or HW integration reasons.
>   For example, a peripheral may expect to share data at a
>   specific location in RAM. This information could have been
>   programmed by a FW prior to the kernel boot.

How would you differentiate between them?

Maxime

--x43ujhulkmklcecy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ5t/5gAKCRAnX84Zoj2+
dqCmAYDoWSZStP9SqqDBsMXAXM2LcdlKGIxA9z3zUEk7mfa1Tr8e2yuFJiIaj32i
idm/BgQBfjHysDgl5TQpuMaxC4xCpEeBM/24GEO2Z7T2jFQ/knGH6TS9zQ95+16V
MmgikebI5g==
=QJcw
-----END PGP SIGNATURE-----

--x43ujhulkmklcecy--

--===============0199031469253340777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0199031469253340777==--
