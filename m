Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBE487AD0D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Mar 2024 18:24:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7BB6E4479D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Mar 2024 17:24:37 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 309453F356
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Mar 2024 17:24:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=u4QWTDLS;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B98A361477;
	Wed, 13 Mar 2024 17:24:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D68B9C433C7;
	Wed, 13 Mar 2024 17:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710350670;
	bh=0G6tQ6qb1wy4fRsOONK7qWXg2LzQwXihYTJ0PSj1DRM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u4QWTDLStOQw4Goek0IKIpEdeUGflrD6+Ri9QAQ2sG2QdJWl50JmaF48yg2y4GUU8
	 a5hlJmNEKLjSQ8eISp9Pt7Qe71uB/WBHh/mz8rlP8NbTdA0BExiLykWkzPriuBuHC5
	 N6welpQ79LSTFw+yy/99QS8iG2tIfT5FVkkfVEYSaAH9rw16kknZeW3PXfdvMcCXY3
	 WcLxnJaleA2GDiUycERB+HA/spu9dw3DryEPtizlnV+GqhxGET6yz7r/EFUmTrYRV+
	 yzfJLVs1jAornCo+Rn9Bf4BfgUuvCtqArlWCgADoAPQCIruW8/8XwuYZUOmKb+nJAH
	 qW9NuL0kb39eQ==
Date: Wed, 13 Mar 2024 17:24:22 +0000
From: Mark Brown <broonie@kernel.org>
To: Alexandre Mergnat <amergnat@baylibre.com>
Message-ID: <594cff80-9cd8-45cc-939b-532f9402940c@sirena.org.uk>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
 <20240226-audio-i350-v1-12-4fa1cea1667f@baylibre.com>
 <9891855d-2284-42e4-9d3a-35ba406540e8@sirena.org.uk>
 <ef4da1f6-d3c5-4484-8df5-1a04df4453a0@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <ef4da1f6-d3c5-4484-8df5-1a04df4453a0@baylibre.com>
X-Cookie: It's later than you think.
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 309453F356
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org,baylibre.com];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: CDIORU7J4NY7XJPFXYR5RVBBVHEKPJZ2
X-Message-ID-Hash: CDIORU7J4NY7XJPFXYR5RVBBVHEKPJZ2
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nicolas Belin <nbelin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 12/18] ASoC: codecs: mt6357: add MT6357 codec
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CDIORU7J4NY7XJPFXYR5RVBBVHEKPJZ2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4544097925694567535=="


--===============4544097925694567535==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n0CJkGczErMrH2GD"
Content-Disposition: inline


--n0CJkGczErMrH2GD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 13, 2024 at 06:11:50PM +0100, Alexandre Mergnat wrote:
> On 26/02/2024 17:09, Mark Brown wrote:
> > > index 000000000000..13e95c227114
> > > --- /dev/null
> > > +++ b/sound/soc/codecs/mt6357.c
> > > @@ -0,0 +1,1805 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * MT6357 ALSA SoC audio codec driver

> > Please use a C++ comment for the whole comment to make it clearer that
> > this is intentional.

> If I do that, the checkpatch raise a warning:

> WARNING: Improper SPDX comment style for
> 'sound/soc/mediatek/mt8365/mt8365-afe-clk.c', please use '//' instead
> #22: FILE: sound/soc/mediatek/mt8365/mt8365-afe-clk.c:1:
> +/* SPDX-License-Identifier: GPL-2.0

That's not a C++ comment so checkpatch is correctly warning?

--n0CJkGczErMrH2GD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmXx4UYACgkQJNaLcl1U
h9CP8Af+KlLX2plI/F5rZJ9p1uJukH33qkBAEGAHtzF9F3uGHLiua+/rxebEzeC1
ZzIbUyRn+EDtKLerG/GM9tMrlGZgdnENt4T7jnE3Hw0hU+aQJ0IUtB6WnRpyjsON
MFroY93dAi8Yyn1mt0uFzgYEIbBje/+TBiUxqyVzrzIWq1OH/OBN4NmNqPVv3H2p
QttacOYxX77On2LGDbnqRcfv30n8mvJgrYBwy9OsvutAJ8nllaYgzQDrME0N9JpY
0lWOXhg99Mcmx0/SGmfuaNISBhwlwWvcKQ0Iq20Q+AiguyJmPt+kpNTm4Eh7kh+7
9KdkRUEMFfJezI6fB13+outzifLipg==
=yFuP
-----END PGP SIGNATURE-----

--n0CJkGczErMrH2GD--

--===============4544097925694567535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4544097925694567535==--
