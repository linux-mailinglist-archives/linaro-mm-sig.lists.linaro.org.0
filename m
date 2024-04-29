Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 496508B5BAE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Apr 2024 16:44:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 25E954484A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Apr 2024 14:44:25 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 9242844807
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Apr 2024 14:44:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Un7qa4q1;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 10D3060DDA;
	Mon, 29 Apr 2024 14:44:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 331BFC113CD;
	Mon, 29 Apr 2024 14:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714401853;
	bh=OJZ8QasGzmijXQVkG9V9fKJa/f1XqrNRU4PDTZrp2Uc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Un7qa4q1crb9OyUCdLgWWFuWgrAJiyu10NlOIPbgqHlSAu5OabyJzuympIYoUdPs6
	 ZOpE/xD0zuKphaxaryHG5bX1bslKr9WWvdK7Qpo3CePYkL5edQ6vIMaDCCeuKMaJdG
	 Unr+BrxRThdxZ9xwq3c70enLrL+2Z6xLcLI/4VOVQ39KBlwa/j7No45GvCubpp0ET3
	 0JFK/No4MqUSECJUFjAqu4Ok8TM2rPhxD3StLSH56Ij34VDbWB68a5+JgJWsQcdk6l
	 tP21IlUe9bKrXVI6yJuibFAAzun3HDtIbtNAN9RGOUgLXlMeq2k7kEvKuOPQI3i4QZ
	 T5cyBQycWYnnQ==
Date: Mon, 29 Apr 2024 23:44:11 +0900
From: Mark Brown <broonie@kernel.org>
To: Alexandre Mergnat <amergnat@baylibre.com>
Message-ID: <Zi-yOzFhgKQXx9tk@finisterre.sirena.org.uk>
References: <20240226-audio-i350-v4-0-082b22186d4c@baylibre.com>
 <20240226-audio-i350-v4-5-082b22186d4c@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20240226-audio-i350-v4-5-082b22186d4c@baylibre.com>
X-Cookie: TANSTAAFL
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9242844807
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	TAGGED_RCPT(0.00)[dt];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,139.178.84.217:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: B4I3ISI25AQYA3WTGBXMZL4C5ZOWPB7U
X-Message-ID-Hash: B4I3ISI25AQYA3WTGBXMZL4C5ZOWPB7U
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 05/16] SoC: mediatek: mt8365: support audio clock control
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B4I3ISI25AQYA3WTGBXMZL4C5ZOWPB7U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============7940672586345748816=="


--===============7940672586345748816==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LT6g6VETYU3X2f5e"
Content-Disposition: inline


--LT6g6VETYU3X2f5e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 26, 2024 at 07:22:34PM +0200, Alexandre Mergnat wrote:
> Add audio clock wrapper and audio tuner control.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--LT6g6VETYU3X2f5e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmYvsjoACgkQJNaLcl1U
h9CAlAf7BkKtB98FNb4ZDCugUcYlYByugcjzPafZiPbUVpmYfmvJYoiOrSDEXePb
NRZWBGpWUDpa1l+TOGWwcOQegbbwV48nDMyJnQn+CXRUvUg0dePpRmUSLsXCwB0+
X6Z+EJ9hoQ3OrqBmt1mTld6Uk5GoZWkhoJ+OcEKXoLtQJcfUUL8uCqjciW9ySs+g
ibgnMTOqccfOfUoZNYTGIKKYypfUnQHFcKV5Lk03UtWeatQXk5SUe131QsK2w5xB
8uFXF4PuB9RiX0OQEtKgENtVVwajA3M6z3euJ2RkXwqtR+klGzgUJFFnJKjJQmye
wr8Eom+wgxxY7GyPGD3aRCnBuFDyHg==
=ccn2
-----END PGP SIGNATURE-----

--LT6g6VETYU3X2f5e--

--===============7940672586345748816==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============7940672586345748816==--
