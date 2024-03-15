Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 000DF87D358
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Mar 2024 19:09:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0BD6940A53
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Mar 2024 18:09:57 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id B8B7340A05
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Mar 2024 18:09:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=LP7lO3v7;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AD63BCE210F;
	Fri, 15 Mar 2024 18:09:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26DA4C433C7;
	Fri, 15 Mar 2024 18:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710526183;
	bh=x6mPWzzOIcq52zQTpLZRzif+g0BzSJp99JTQQBpC4RM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LP7lO3v7SLFArBHGkZnqr/WWlQC5EYqftdFmiJa5SjCoY3384X/Veh3ZFIdCs8SUz
	 +cI2iFwKcYJypwRBRdV/WcySvENlDSUeaiRSlZKWiMECZD348RLwJmT/fE2Iepdufq
	 9+6wFdhv0g4XDxuVMnFPjl+YiK6Hlcu3IOyogbc8ErrW69BXbHmb774NTEJEWpCWXM
	 BGExTxabKZgkOm1W+a6eoOC6YriioAaIG9hMSEJXClKrrntbVETLAiWshxB1c8HdTZ
	 livm/OTLPh68pYn9w6Ht16o2xMiyQvGoYVuNrW/EK4LMBphc80Dc3ZJgAoHKlyeAtJ
	 MySJxHLT2uVqA==
Date: Fri, 15 Mar 2024 18:09:36 +0000
From: Mark Brown <broonie@kernel.org>
To: Alexandre Mergnat <amergnat@baylibre.com>
Message-ID: <31e2135c-fed5-499e-894b-a8f0cc2744bb@sirena.org.uk>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
 <20240226-audio-i350-v1-12-4fa1cea1667f@baylibre.com>
 <9891855d-2284-42e4-9d3a-35ba406540e8@sirena.org.uk>
 <c441a132-b16b-4244-a712-8971c902d4d7@baylibre.com>
 <ff3d2db1-697b-42c6-a0f2-74276e9fc098@sirena.org.uk>
 <dda0e6ba-4538-47a0-95e9-6adcfd4169a7@baylibre.com>
 <0d31ffb2-9df5-4c3e-a728-902b71a1a713@sirena.org.uk>
 <fd53a0e7-fa70-4c0d-b578-393183487335@baylibre.com>
 <0a41b498-5cca-4487-a0e0-0df749f6e796@sirena.org.uk>
 <a9ad625a-c6fd-44f1-8776-aa5d54b448ae@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <a9ad625a-c6fd-44f1-8776-aa5d54b448ae@baylibre.com>
X-Cookie: A well-known friend is a treasure.
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B8B7340A05
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
Message-ID-Hash: 6CP2U33YXKMFWLBEBJONVXTHFOVHHRUR
X-Message-ID-Hash: 6CP2U33YXKMFWLBEBJONVXTHFOVHHRUR
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nicolas Belin <nbelin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 12/18] ASoC: codecs: mt6357: add MT6357 codec
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6CP2U33YXKMFWLBEBJONVXTHFOVHHRUR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6451148771195196346=="


--===============6451148771195196346==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MkhxNCSSCKe3PKpY"
Content-Disposition: inline


--MkhxNCSSCKe3PKpY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 15, 2024 at 06:36:19PM +0100, Alexandre Mergnat wrote:
> On 15/03/2024 16:15, Mark Brown wrote:
> > On Fri, Mar 15, 2024 at 04:05:21PM +0100, Alexandre Mergnat wrote:

> > > > In the register.  You only need to reset the gain to -40dB at the start
> > > > of the ramp.

> > > Sorry but I don't understand your logic, I'm not able to implement it...
> > > If I'm at -10dB and doing a ramp to reach -40dB, next time I will read the
> > > register the value will be -40dB.

> > After we've done the ramp and turned the amplifier off we can just
> > restore the desired value?  The hardware is not going to care what the
> > volume is while it's not enabled.

> If you do that, HP will be enabled at the saved gain, and after that you
> will do the ramp. To avoid pop, the driver should be rewrite to:

So reset the volume to -40dB prior to turning the amplifier on...

>   Read gain in the reg and save it locally
>   Set -40dB in the reg
>   Enable HP
>   Do ramp

...as you yourself suggest?

> > > AFAII from the comment in the code, it's done to avoid the "pop noises".

> > Yes, that's the usual reason to ramp gains.  Though if you've just
> > copied the code without checking that it's needed it's possible that
> > this is something that's been fixed in current hardware.

> I did the test at 24dB with and without the "pop filter". Isn't big but I
> ear the pop at the start of the record without the "pop filter".

OK, it probably is still doing something then.

> To be clear, the algo/behavior of this code is an implementation based on
> the 6k+ lines downstream code for this specific audio codec. But the
> shape/style is based on upstreamed drivers like mt6358.c.

The Mediatek code has a bunch of issues, I wouldn't read too much into
something being present in the code.

--MkhxNCSSCKe3PKpY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmX0jt8ACgkQJNaLcl1U
h9DFzwf/WTFtub1WzGQHyCilLQ/Dm90Crp+NDTyCh8eMRG7+3o9uBhwqnKdBT2kY
L9SAw/PR7zx+h3fGbCczOH9SGtZZy0FJkMTfEOYGED7E5hRFt0wfdNBqn1nn1hpz
d2GXkXcliq2bP+FOw5tDJpNMHwYAnxCVmjqcl/tCInIBwKB0JVPXVZV+gf+/KTDi
6UnFIQRExgRYPJt26pzWejqhRZl9KyKxKxORmnWAOvNU4tBIymSqZopFOqs4rvOT
/byiicLBLKQ5VKr9IxIyd8+yMN1nuv0Sd2FjcGd5tcyWdItJ5ivV2AS4yIx8XtQh
8BypOaepYix1QitTk/6SKwVIQZbT3w==
=oa8d
-----END PGP SIGNATURE-----

--MkhxNCSSCKe3PKpY--

--===============6451148771195196346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6451148771195196346==--
