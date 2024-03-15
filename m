Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C58CF87CFF8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Mar 2024 16:16:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FDEA3F387
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Mar 2024 15:16:13 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 244573F387
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Mar 2024 15:16:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Z6UQVzJD;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 65B1CCE20D8;
	Fri, 15 Mar 2024 15:16:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C680C433F1;
	Fri, 15 Mar 2024 15:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710515761;
	bh=JetYKg36RGIdkXrH8sSoGmguKkbdT3c+edAG3vVoLks=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z6UQVzJDHdLFI/FI8NYnDUEw4xnU4jAVfiYnJa7PImFmHArIldd+gIV3Sv2UQwCGZ
	 9Ax3SpbT9vkcMC7t4p3Zfj1jIn4bGhzHu4dq2KCraI7LAE/NU3z54DZji/qrZXXo61
	 sptSTer//vPtvWSriM+ymuqmO77T0AvZg1YzEQw/BPikvjeE+M1R/KsxX/MLlKhBzY
	 jbHmdHzfeyUuZoWykiI8NkuSojEMzfOk4bj14VxQxqGF5lq2Wd6y+agWxXx+vx29oh
	 BWLxPgFUv8c8QrU2p+BHTR1HgmqxOZM93ujA2zaLrLXUvLusk84biWueGVvifRqFhn
	 SwYBfpHlb7iKw==
Date: Fri, 15 Mar 2024 15:15:54 +0000
From: Mark Brown <broonie@kernel.org>
To: Alexandre Mergnat <amergnat@baylibre.com>
Message-ID: <0a41b498-5cca-4487-a0e0-0df749f6e796@sirena.org.uk>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
 <20240226-audio-i350-v1-12-4fa1cea1667f@baylibre.com>
 <9891855d-2284-42e4-9d3a-35ba406540e8@sirena.org.uk>
 <c441a132-b16b-4244-a712-8971c902d4d7@baylibre.com>
 <ff3d2db1-697b-42c6-a0f2-74276e9fc098@sirena.org.uk>
 <dda0e6ba-4538-47a0-95e9-6adcfd4169a7@baylibre.com>
 <0d31ffb2-9df5-4c3e-a728-902b71a1a713@sirena.org.uk>
 <fd53a0e7-fa70-4c0d-b578-393183487335@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <fd53a0e7-fa70-4c0d-b578-393183487335@baylibre.com>
X-Cookie: A well-known friend is a treasure.
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 244573F387
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org,baylibre.com];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: TDQNIY6SFR5EBRGTINDEX4KFOKM2NAKW
X-Message-ID-Hash: TDQNIY6SFR5EBRGTINDEX4KFOKM2NAKW
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nicolas Belin <nbelin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 12/18] ASoC: codecs: mt6357: add MT6357 codec
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TDQNIY6SFR5EBRGTINDEX4KFOKM2NAKW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2651022247542957978=="


--===============2651022247542957978==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fgDyTJrdbX73HLO7"
Content-Disposition: inline


--fgDyTJrdbX73HLO7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 15, 2024 at 04:05:21PM +0100, Alexandre Mergnat wrote:
> On 15/03/2024 15:30, Mark Brown wrote:

> > > Let me know, when you change de gain to do a ramp down (start from user gain
> > > to gain=-40db), next time for the ramp up, how/where do you find the user
> > > gain ?

> > In the register.  You only need to reset the gain to -40dB at the start
> > of the ramp.

> Sorry but I don't understand your logic, I'm not able to implement it...
> If I'm at -10dB and doing a ramp to reach -40dB, next time I will read the
> register the value will be -40dB.

After we've done the ramp and turned the amplifier off we can just
restore the desired value?  The hardware is not going to care what the
volume is while it's not enabled.

> This implementation is also done in other MTK audio codec drivers.

Perhaps they should be updated too?

> > > When microphone isn't capturing, the gain read back from the register is
> > > 0dB. I've put some logs in my code and do capture to show how it works:

> > Is this a property of the hardware or a property of your driver?

> At the end of the capture, the gain is set to 0dB by the driver.
> At the start of the capture, the gain is set to the setup gain.

So that's a property of the driver then?

> AFAII from the comment in the code, it's done to avoid the "pop noises".

Yes, that's the usual reason to ramp gains.  Though if you've just
copied the code without checking that it's needed it's possible that
this is something that's been fixed in current hardware.

--fgDyTJrdbX73HLO7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmX0ZikACgkQJNaLcl1U
h9ANMQf7BdfrOiW1Xoo2hUjwcif1X0ikLf9S3dwVoevqKNXQHOBvrNlZo0hx8Lpc
cb7BxhcMn0yDAdJKRd5N4p/THoafHtJ/+pYuLVB1xyz9W0OB/x+RZEMBDUv+AOIG
gN4Pb9xiFL55ELmhLXdQcmyccdi3RjnnGK07tD3gwqiHgilNQazB2sqKf+bUrs0f
P5pJpmnh6QWxyMnyI9Mby7N/c4LDtVKMyBeptA631XeUyiPnlhN2Y8E4aZo0u5+p
qg/zSbEy39TWoCI69lQkJX7MYeoTDzuKCmaGdolnVUjOsm0ZWpxt5iuxdyq4Yhl/
65is6JhRr0irTBQKv824acHouSjrkw==
=GmOx
-----END PGP SIGNATURE-----

--fgDyTJrdbX73HLO7--

--===============2651022247542957978==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2651022247542957978==--
