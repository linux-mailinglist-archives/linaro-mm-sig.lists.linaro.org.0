Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2800D951C84
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Aug 2024 16:05:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 305C041106
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Aug 2024 14:05:32 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 5EA863EB82
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Aug 2024 14:05:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=oixb9P7I;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0953561A56;
	Wed, 14 Aug 2024 14:05:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 941C6C32786;
	Wed, 14 Aug 2024 14:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723644314;
	bh=rsrPj3HibZ4DCsL9Ic4OQt4Rsa7JTdGV+7CZoZd1B/s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oixb9P7IKMS3/QO3M+v6BsLenBwFo04WV3M2FM4b+PnTBnM+H8LGThWzI2ZaiPrE7
	 KnT4LaSTN8Kbn7uJ49JPGpPqAKL0lh631pNmnutXfEGcuXmdOA4rpjWCkuWPEMokQi
	 RdVWgigeciXAaPBIGcO8bVETqszsvXDHmm8iXRlMMpdMixIuPRF2C9V/sIagWgkXJg
	 fXvbuxQwilJ+8zcimVOxsdl2OCfVzZGJqL0Op6IpfoN2iSy/Tn2aWkun7cfUo3g4bF
	 iLdGMW7At7uBIBcF1QgTtSnnoddaLSLLq40P7swf55ctf26w506ePlPRSDM1XCw9Wb
	 4isDAlOl8VI0w==
Date: Wed, 14 Aug 2024 15:05:06 +0100
From: Mark Brown <broonie@kernel.org>
To: Alexandre Mergnat <amergnat@baylibre.com>
Message-ID: <ae9a5147-95a9-4da3-a56a-ecc22f4e8f04@sirena.org.uk>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
 <24215f3d-30bf-4379-bb10-c4b183c16b8a@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <24215f3d-30bf-4379-bb10-c4b183c16b8a@baylibre.com>
X-Cookie: The second best policy is dishonesty.
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5EA863EB82
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.92 / 15.00];
	BAYES_HAM(-2.32)[96.83%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,collabora.com,kernel.org,baylibre.com,vger.kernel.org,lists.infradead.org,suse.com,lists.freedesktop.org,lists.linaro.org,mediatek.com,perex.cz,amd.com,arm.com];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: ROJDWTPQK37GXQ27EUCU6YBXH3JPGLOG
X-Message-ID-Hash: ROJDWTPQK37GXQ27EUCU6YBXH3JPGLOG
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, khilman@baylibre.com, linux-sound@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Rob Herring <robh@kernel.org>, Will Deacon <will@kernel.org>, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Takashi Iwai <tiwai@suse.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Nicolas Belin <nbelin@baylibre.com>, Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas
  <catalin.marinas@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 00/16] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ROJDWTPQK37GXQ27EUCU6YBXH3JPGLOG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0302944197497181706=="


--===============0302944197497181706==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8B/Fc53TUe95dwQa"
Content-Disposition: inline


--8B/Fc53TUe95dwQa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 14, 2024 at 10:23:12AM +0200, Alexandre Mergnat wrote:

> Simple gentle ping, the serie seems ready to be applied.

Please don't send content free pings and please allow a reasonable time
for review.  People get busy, go on holiday, attend conferences and so=20
on so unless there is some reason for urgency (like critical bug fixes)
please allow at least a couple of weeks for review.  If there have been
review comments then people may be waiting for those to be addressed.

Sending content free pings adds to the mail volume (if they are seen at
all) which is often the problem and since they can't be reviewed
directly if something has gone wrong you'll have to resend the patches
anyway, so sending again is generally a better approach though there are
some other maintainers who like them - if in doubt look at how patches
for the subsystem are normally handled.

--8B/Fc53TUe95dwQa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAma8uZIACgkQJNaLcl1U
h9C15Qf/aWN3somXkLeCmkhFfrV7QHTBExyjsMeiPhzPWZtkgtCnWe3qurwNFxJW
hZepPzW5OTzlmzxUY13O4q1omXjfbfIM5wpYSui2CeaJo15WV+/BxfMEjLwhB942
fDai25vauENBytYGG0rmb5lW0+92gWHVXdFYjB/Zew6sMd3uNCQNZGsfEVXJD3pU
U9rb2939laF2Lqbjvr502BhhHEPgiBCx0vsPCVtasNrArpTFfinGw2wYA4ZNRGM3
IB78TudnvuQHQtt9ytOfos5mN+fv5LxoYO16MMmuhTP753QbXipEJ4wYBKWSSPs1
JLIAGwiAAXiCyPEMjizKQ3fph09SVg==
=LwLG
-----END PGP SIGNATURE-----

--8B/Fc53TUe95dwQa--

--===============0302944197497181706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0302944197497181706==--
