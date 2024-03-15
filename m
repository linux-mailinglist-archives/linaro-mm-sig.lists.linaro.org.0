Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B4A87CF20
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Mar 2024 15:39:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E41303F368
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Mar 2024 14:38:58 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id E0F393F368
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Mar 2024 14:38:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=pfLF0Y3A;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8307BCE20A8;
	Fri, 15 Mar 2024 14:38:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37258C433C7;
	Fri, 15 Mar 2024 14:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710513524;
	bh=LWOPGxaWjPP8E3hvpb0v/9QUSjPMu3aHfXD/4e34bMg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pfLF0Y3Aw17VSoUcFU9nXUe7DJBTJnsvXRSp5JM2LcK8rgXc6Uqcotv7Rmcu/5y0r
	 /k6jI4bvcl7jt+qndKxRPxKCuZU89MT7ts52FJGGSvHCZWLkGEMpmCxiaerdnhxlP4
	 eca3MDnsqT6qnrh/36IIbVKpEABMWOLcMD840rxSlrl3WJKTxBSuQiGU2islj0xuUz
	 VXPkRyigmU8/GmAk0LgZFCWSwIVB7rmY+yJiXtDISqyjOeYDHvGXasd3yu4D+lLUKl
	 bbYt5HZZ/xwVfB+zMv4jDhP1WyyDmY5pb+X7Fmh9+K/LpfAq+PwR3Wf4s4A1UU0UjJ
	 J5HVGG/SCVpew==
Date: Fri, 15 Mar 2024 14:38:37 +0000
From: Mark Brown <broonie@kernel.org>
To: Alexandre Mergnat <amergnat@baylibre.com>
Message-ID: <bf418207-7f13-4ced-8c21-2824dd07fab5@sirena.org.uk>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
 <4ffde184-cf68-4b71-b81d-9b5894529926@sirena.org.uk>
 <7ddad394-e880-4ef8-8591-cb803a2086ae@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <7ddad394-e880-4ef8-8591-cb803a2086ae@baylibre.com>
X-Cookie: If rash develops, discontinue use.
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E0F393F368
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
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
Message-ID-Hash: V4ON336QBXLPELTN2FMYJB5LEBAGJW4I
X-Message-ID-Hash: V4ON336QBXLPELTN2FMYJB5LEBAGJW4I
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nicolas Belin <nbelin@baylibre.com>, Fabien Parent <fparent@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/18] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V4ON336QBXLPELTN2FMYJB5LEBAGJW4I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4060386848270628858=="


--===============4060386848270628858==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Y91BRilVEGdxtZCJ"
Content-Disposition: inline


--Y91BRilVEGdxtZCJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 12, 2024 at 09:58:05AM +0100, Alexandre Mergnat wrote:

> I'm a bit lost for mixer-test and pcm-test.
> Currently, I cross-compile the alsa lib project to be able to build the
> tests and put it on my board.

> I can execute it, but I still have 2 issues:

> 1) I've a lot of missing module in my environment (Encode.so, Encode.pm,
> Symbol.pm, IO/Handle.pm, ...). AFAII, I've to cross compile the missing perl
> modules and install them in the rootfs

These tests are both simple C programs...

> 2) I don't know how to configure pcm-test.conf &
> Lenovo_ThinkPad_P1_Gen2.conf (or new file to match with my board).

The configuration is optional.

> My test cmd:
> ./run_kselftest.sh -c alsa

Just run the programs directly.  I'm only asking for the output from two
of them anyway.

--Y91BRilVEGdxtZCJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmX0XWwACgkQJNaLcl1U
h9BnLAf/e1vJ3Zr2d9fJBV1LV7sal34lcNVLD3JRrMKuk6bdnA2S2RYAgOf0UJwl
cRuGTcq2lBneNaYnb9jgaf1C7i5kuXvnMG0IJuqVBrTZwiN5SbGhpmdvZj6HLwPu
a8Q5MEwz/DrIXqjghxcXr5bjKi6XJ/9RRB1QpfxQFIwAOYQPNAG2F0j4SrD8zcbA
O2dO4KRIjYUBBnpP5maQh3R3yr+TEEdolkib2FyoHL2jo2Vv1zOiTK2382kuTnKA
y+GgUm8tQ4HiGZdAJqZAPh+Of86A9Rwl2133Tp1dxkFWlOamtyhfYbPESyNchUrV
qduBr5NQ0tnTuAoEKttdYckFHYq6Bg==
=FScF
-----END PGP SIGNATURE-----

--Y91BRilVEGdxtZCJ--

--===============4060386848270628858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4060386848270628858==--
