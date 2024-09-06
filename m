Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C44196FB40
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Sep 2024 20:34:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 249CD40D56
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Sep 2024 18:34:52 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 35B943F485
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Sep 2024 18:34:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=q4Oqns1Z;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 805FCA45210;
	Fri,  6 Sep 2024 18:34:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1FA9C4CEC4;
	Fri,  6 Sep 2024 18:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725647689;
	bh=DfKGjEXx5hSeUXB8vrUl2jj650dPsUbikh6TxwpLm8k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q4Oqns1ZT+8BaXLlOHhPFVIqEyFqit8FSM7w0q2NuoPjesvljHet03opQbah0Fwxd
	 li+VWGIxfeiBscR7cdhr1Sy4mt+y+hYdDRA+rN4uLd1xeodMLwkuDVrEuYECMXCZTK
	 CZ+7Os7xhiAZZQ+VWkLUzv4LxRv0iM9Lo8i6uGsU+ps91zOS1cpLAb+HwrfoYCDFdL
	 2CEVjrZo14qSo8Xfi4+KQC2byM9ofWla+hmuHH03vmYga0Sq+49XxD3/Yjkn0OT6Yv
	 KC5BgEJOCmV7E3+xU78KHnbNuQhBVtcMmwemLDcDNlVDaXuqiZYD34GbP0fxuK7F81
	 LKrJw9XYcGO0g==
Date: Fri, 6 Sep 2024 19:34:46 +0100
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Message-ID: <ZttLRhOn9uIuk0Kl@finisterre.sirena.org.uk>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
 <172544860860.19172.7052813450885034844.b4-ty@kernel.org>
 <20240906180348.GA1239602@thelio-3990X>
 <ZttJdexQFOq2Q9iQ@finisterre.sirena.org.uk>
MIME-Version: 1.0
In-Reply-To: <ZttJdexQFOq2Q9iQ@finisterre.sirena.org.uk>
X-Cookie: Your love life will be... interesting.
X-Rspamd-Action: no action
X-Spamd-Bar: ----
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 35B943F485
X-Spamd-Result: default: False [-4.54 / 15.00];
	BAYES_HAM(-2.94)[99.73%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_CC(0.00)[baylibre.com,gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: JLP7V5A3XK2PCVERE4IJGOQY4AINWWYG
X-Message-ID-Hash: JLP7V5A3XK2PCVERE4IJGOQY4AINWWYG
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alexandre Mergnat <amergnat@baylibre.com>, Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@l
 inaro.org>, Nicolas Belin <nbelin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v7 00/16] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JLP7V5A3XK2PCVERE4IJGOQY4AINWWYG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============5938506024573832127=="


--===============5938506024573832127==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ROeGXY+oUkHH2KgO"
Content-Disposition: inline


--ROeGXY+oUkHH2KgO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 06, 2024 at 07:27:04PM +0100, Mark Brown wrote:

> These commits passed an x86 allmodconfig with GCC 12 at each step (I did
> catch one warning there with another patch in the series that didn't get
> applied) and 0day didn't say anything at any point.

Oh, actually right as I was writing that message 0day decided to report
that (and some other things that look rather preexisting), though only
with clang 20.

--ROeGXY+oUkHH2KgO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmbbS0UACgkQJNaLcl1U
h9A4PAf9EXvt7UgwANg6DLruDFhtYHs50i0gB5suWbYdBIV1oNQ+ZsrdL38D1SfO
s4IvxwibYw+GjhYu6rWRC1S3yF1kpB5/Y6bnyZC3y7T9anqLD0wC56ZraWJB4vON
Uqm04cTI/g/MNzFxJn0l9dU+5r3y9hX890cCtRBZYVagmM/u9eG8IULqbCOHhPVG
kHrJv7MTxpQ1emjKM/ZKCbZ6Z056BkaBgAk3mht5pjv9D3VvvlRIhgZ/0tVrwTdd
/OaQPpR8z/dLk0LJ2sgPCx2/0MjGrmEveCCTH7/uvJEJ/DQV2bAqgL693OJ0uUc1
hrVwYOMO6wBL9SUj5BU/2dFxPFLmxg==
=5wcC
-----END PGP SIGNATURE-----

--ROeGXY+oUkHH2KgO--

--===============5938506024573832127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============5938506024573832127==--
