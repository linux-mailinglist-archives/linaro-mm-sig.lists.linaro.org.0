Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 009FA8699D7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Feb 2024 16:07:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF32F40D42
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Feb 2024 15:07:10 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 06F183EB98
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Feb 2024 15:07:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=UgLCqJl5;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 784D861228;
	Tue, 27 Feb 2024 15:07:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADE7EC433C7;
	Tue, 27 Feb 2024 15:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709046421;
	bh=me+PaR02OqhyQDVfheZnctQBFyoYjMvRYEUCFZryMNo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UgLCqJl5Tjup29jLQDrfmHzJGcqm6Vn0A8QXbh+nlYBzo2ztnaVO69jw/ROGGmueY
	 Q9CPhg0EF4DmsduPBINCvhKNEiGUEtH2sTIg7deV+MJ6/U8qYhCiUAdMgk8XbPVToj
	 9wtNHmraZWYT1fxgj94MCWn8gj21ORbqXgMnPCijB49ft1u4dQcyICfaz2g+vmNMMs
	 rZZsVNAfiQZ0jA3ObE7SKMxvTqvsNl4f5z1q0W1ZwJwQ5UCk+f8WCRJyArGfEyJdrh
	 OINmmHKU5aIdMSwoD6cUeaIBcBAd4w8YASgdaCcJMogfF+vg1YgDVX3fDIbOTvokyG
	 yiquWurwJIAEA==
Date: Tue, 27 Feb 2024 15:06:53 +0000
From: Mark Brown <broonie@kernel.org>
To: Alexandre Mergnat <amergnat@baylibre.com>
Message-ID: <4ffde184-cf68-4b71-b81d-9b5894529926@sirena.org.uk>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
X-Cookie: Please go away.
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 06F183EB98
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	RCVD_IN_DNSWL_HI(-0.50)[139.178.84.217:from];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org,baylibre.com];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: GBNVSBH6B7ICX3YQU7RN4XXOPNMTTF6R
X-Message-ID-Hash: GBNVSBH6B7ICX3YQU7RN4XXOPNMTTF6R
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nicolas Belin <nbelin@baylibre.com>, Fabien Parent <fparent@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/18] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GBNVSBH6B7ICX3YQU7RN4XXOPNMTTF6R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3421926834253159675=="


--===============3421926834253159675==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Z6rJHLYKeV1xaopM"
Content-Disposition: inline


--Z6rJHLYKeV1xaopM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 26, 2024 at 03:01:38PM +0100, Alexandre Mergnat wrote:
> This serie aim to add the following audio support for the Genio 350-evk:
> - Playback
>   - 2ch Headset Jack (Earphone)
>   - 1ch Line-out Jack (Speaker)
>   - 8ch HDMI Tx
> - Capture
>   - 1ch DMIC (On-board Digital Microphone)
>   - 1ch AMIC (On-board Analogic Microphone)
>   - 1ch Headset Jack (External Analogic Microphone)=20
>=20
> Of course, HDMI playback need the MT8365 display patches [1] and a DTS
> change documented in "mediatek,mt8365-mt6357.yaml".

Given the number of custom controls here could you please post the
output of mixer-test and pcm-test from a system with this driver running
next time you post, this will help with review since it checks a bunch
of things around the new controls.

--Z6rJHLYKeV1xaopM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmXd+o0ACgkQJNaLcl1U
h9D7bgf9HvLTv1/D7ibf9xpiO/7Y8mdR7blZxSERHC0VJyzegzQI6g+LO1qHYqc3
w9Kt0UwtxRgeVFwzBejVVYpZ72d9DoqN3nS4osApKoOChjapCsvasw+uqAodEk5j
he8RYvVZ5UJWO6P1D5+DkvesptWMDXHFbcoASdlGpEURjMBSLgIOZPnhsZumU0tf
AzDfDa1BwQwuIS/hg7ebHpzFlevB7SEUANSppMJ3Jp7/SbgTPt9w+/+lERnOiAh1
G86yCidp9TlgUpb92TVwFyOcdnXT13VmhCwZ/7xwye2IVNnv4CXmFgPk8C4TyNdW
s1HkIR6EuDYgEsxPOSQt7+eWhweHYg==
=/HK9
-----END PGP SIGNATURE-----

--Z6rJHLYKeV1xaopM--

--===============3421926834253159675==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3421926834253159675==--
