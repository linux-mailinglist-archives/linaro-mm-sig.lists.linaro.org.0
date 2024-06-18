Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 619E090D5BF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jun 2024 16:43:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73B6444851
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jun 2024 14:43:56 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 81AC63F4AF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jun 2024 14:43:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=EPSVDKFM;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1C705619A2;
	Tue, 18 Jun 2024 14:43:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BE3EC4AF1C;
	Tue, 18 Jun 2024 14:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718721818;
	bh=1UwzhECrbNMlnaKtuZTayxxlZhsNfsmTEwViXahAyMo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EPSVDKFMc59K2ZxfIuoVRM4RvajTUeLlZ4COcsXV6z7pVsma53UwTsSN/gJwlcwRu
	 nMSHr6cg+MDveM2Mu1PZF4Ti7e/9u4fmmnlmHOcT0FvU2tJjzbTaqUKLKZiJot622/
	 SDkfn7T+6I4M35iv/e3GABSI6TTcFDcl9a6tSzRvSCXQA2XhfHrwmDO5JvPLEDcFLH
	 nzvpZRx06V6yfLpFrV9ysM7hJ/cf6gGJCCiddSbK7OgM/LBj95sq9buorN65dhNnKp
	 AXTfO1Q3tyZb2+IstKrqXQywERkXXj3bxwXKKIBBGmp6/5YTO3duwawy3VzzB4iTPh
	 LreCkpEx/VT1g==
Date: Tue, 18 Jun 2024 15:43:30 +0100
From: Mark Brown <broonie@kernel.org>
To: Alexandre Mergnat <amergnat@baylibre.com>
Message-ID: <77872070-6d0d-408f-80c8-c4a996b9d260@sirena.org.uk>
References: <20240226-audio-i350-v5-0-54827318b453@baylibre.com>
 <ZmwODkYov79VHznK@finisterre.sirena.org.uk>
 <85e9451d-2cd0-457f-a246-017433757fff@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <85e9451d-2cd0-457f-a246-017433757fff@baylibre.com>
X-Cookie: If you can read this, you're too close.
X-Rspamd-Queue-Id: 81AC63F4AF
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
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
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SZNHOSUUEE6BY4R6QIXPJYPCXGIF435I
X-Message-ID-Hash: SZNHOSUUEE6BY4R6QIXPJYPCXGIF435I
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Nicolas Belin <nbelin@baylibre.
 com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RESEND v5 00/16] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SZNHOSUUEE6BY4R6QIXPJYPCXGIF435I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1719911985158406012=="


--===============1719911985158406012==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VWS3IQXFjAKUwyY9"
Content-Disposition: inline


--VWS3IQXFjAKUwyY9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 17, 2024 at 10:05:37AM +0200, Alexandre Mergnat wrote:
> On 14/06/2024 11:31, Mark Brown wrote:

> > I seem to remember you had review comments that needed addressing from
> > AngeloGioacchino, why resend without addressing those?

> I don't see any comment:
> https://lore.kernel.org/lkml/20240226-audio-i350-v5-0-e7e2569df481@baylibre.com/

Possibly it was racing with comments on the previous version?  In any
case I see it's still waiting for some review from AngeloGioacchino.

--VWS3IQXFjAKUwyY9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmZxnRIACgkQJNaLcl1U
h9AftQf7B2zRtt6hSQ1Xu+5FarxKtCBDR6nBW7WYRVgndY5irQ8rB15/1pKg5ik1
j0ms8fH3Q91pk4BjDrtj8z7/s2yL3YMJYPhEgKyeoUPs3lM1C3BDxTCiMvafx96y
5tQ5ad+c9UQgS8pq7lTa/xtHXfKFxdA2ABym8/DYpfn8eJ/UyM13wo1OJmW+uLnO
K/o8AJqCzj4+U0PnMPImGUQmX87qmN2XuWrHAFuwRPFsru1+w+Ii5A3pOdMwWSa+
3z9SIUmF3NriAeP7ntviKHjg9Pe8x6fqG/R6WsPkYvp6ydg8si62JAluH8e49NkQ
APIdSQGffLVEELyK6/xmm4XXm6CTQg==
=u7CT
-----END PGP SIGNATURE-----

--VWS3IQXFjAKUwyY9--

--===============1719911985158406012==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1719911985158406012==--
