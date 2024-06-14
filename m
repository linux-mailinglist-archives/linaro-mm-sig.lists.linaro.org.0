Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B0F90877E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jun 2024 11:32:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A73F400CE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jun 2024 09:32:12 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id B1C28400CE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jun 2024 09:32:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=dowkx4Wl;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5BC9061EE5;
	Fri, 14 Jun 2024 09:32:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75168C2BD10;
	Fri, 14 Jun 2024 09:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718357522;
	bh=vq/hKXj8k3TXQ6CBXyolStxtljiu0fDBYD/cq4bFmRs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dowkx4Wli/K0fxQuXPa9Ov4p8jq4KCLXebXQhTLM5C+aiOubAYAqt6VKGvEfTd+is
	 u1H5cT2n6PNIyOSwsRfQdqH8u3Ft3fyV9zHmquoyyb8BUFk+PERVN+tIV4ajqw8vsW
	 7RY/uftugQcGLKrN6adOWRZRq7HYsGiNvsG/NHATdB9mbrBWreXhWtLEtiVV/8DM6O
	 /vkRXKIZ9h/aVv+Tf83y0fRDuc/X49dFn9IxjzSMYU720OV2uuxRpCpBG/1DNhh+th
	 z0C+Kh+7fItagFuiZgbzOIl7R01Bac1D8IAu15pqxJKVOASbc5i9MjozYRBusaqX82
	 AGLEieEUdavxA==
Date: Fri, 14 Jun 2024 10:31:58 +0100
From: Mark Brown <broonie@kernel.org>
To: Alexandre Mergnat <amergnat@baylibre.com>
Message-ID: <ZmwODkYov79VHznK@finisterre.sirena.org.uk>
References: <20240226-audio-i350-v5-0-54827318b453@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20240226-audio-i350-v5-0-54827318b453@baylibre.com>
X-Cookie: Your love life will be... interesting.
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B1C28400CE
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
Message-ID-Hash: YRZVP4WVQ46KLOI3N6XVCE2HFOX2GGCO
X-Message-ID-Hash: YRZVP4WVQ46KLOI3N6XVCE2HFOX2GGCO
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Nicolas Belin <nbelin@baylibre.
 com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RESEND v5 00/16] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YRZVP4WVQ46KLOI3N6XVCE2HFOX2GGCO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6652113739360630499=="


--===============6652113739360630499==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SeMD/ZPP93d62FnM"
Content-Disposition: inline


--SeMD/ZPP93d62FnM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 14, 2024 at 09:27:43AM +0200, Alexandre Mergnat wrote:
> This serie aim to add the following audio support for the Genio 350-evk:
> - Playback
>   - 2ch Headset Jack (Earphone)
>   - 1ch Line-out Jack (Speaker)
>   - 8ch HDMI Tx

I seem to remember you had review comments that needed addressing from
AngeloGioacchino, why resend without addressing those?

--SeMD/ZPP93d62FnM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmZsDg4ACgkQJNaLcl1U
h9AoDwf9Gw5El3fz0zRFzNFxxe/7UfRa8HACWErrPscsXGk4tslBOE3UwCx3bw4Q
6VnbJ45siXspBD7/Zjhjhi9lvAZlz6ucKm2glWijqZHLg9xmSBrRyEDb2G98FWlI
SMczNAxg5QXwBUnID0bua6y5ZOldZEAGl53t5KuXWRe0/Znwns2+gUpSt3MAoDp8
rPfYqUv2whvlBzGYmg6XlbTskN/c/+qpODFdThrx57aGRjxRoVc82kAmN814Gbc/
nqKrNhIYzQDYBwKB1cuDXatDavgYFA5FugzeuZ80Va5/ZiuMX7JLgMHeVGQJZrQq
Jbv+xbpMJ+ow5S6rLO0D2CcOA91DsA==
=TqJQ
-----END PGP SIGNATURE-----

--SeMD/ZPP93d62FnM--

--===============6652113739360630499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6652113739360630499==--
