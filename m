Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2C396FD00
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Sep 2024 23:04:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 338A540F18
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Sep 2024 21:04:54 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id EC70040C36
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Sep 2024 21:04:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Vmb8um88;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 396A5A452C7;
	Fri,  6 Sep 2024 21:04:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C40CC4CEC4;
	Fri,  6 Sep 2024 21:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725656691;
	bh=Qi7l3LEit7RU0ApqPXLuPy7zvE5YFnc5ZdG9M93j8ms=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vmb8um88N+sRkcpvVWHxnTOb8jGW9yFBSYtGRagysQ7mAgSmuSeox8PgqMTglme18
	 +F840LNShRhr7zMt8FRUXxYglgaH9GIc5+VaGdBG23kUf8obXYjcLJQpli7jugzmp4
	 rlxP32YE2f7J5Ne4XKrLsuOG46nI+Pz2iEP1lPAK4cxtkk2+pdJjlir2C3H6jspetw
	 kyo5qKCDSu+5EdqKASCPiA6qgIzRAoJcvGsA9/8F7Ji173UqxRkzosN5vapkHrlAvw
	 izCCxVZm+mn/F1BH2QanTGH/dHLf1VWbrfDw1UcWbcJRAgZ3lh6rtmWNe51vWM6pfw
	 URZoLmwXGjnHg==
Date: Fri, 6 Sep 2024 22:04:48 +0100
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Message-ID: <ZttucCV86ryyqIiT@finisterre.sirena.org.uk>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
 <172544860860.19172.7052813450885034844.b4-ty@kernel.org>
 <20240906180348.GA1239602@thelio-3990X>
 <ZttJdexQFOq2Q9iQ@finisterre.sirena.org.uk>
 <20240906192323.GA3160860@thelio-3990X>
MIME-Version: 1.0
In-Reply-To: <20240906192323.GA3160860@thelio-3990X>
X-Cookie: Your love life will be... interesting.
X-Rspamd-Action: no action
X-Spamd-Bar: --------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EC70040C36
X-Spamd-Result: default: False [-8.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: D43TXNTJFXAKH7K4UCRHU7LBXLZRH6PY
X-Message-ID-Hash: D43TXNTJFXAKH7K4UCRHU7LBXLZRH6PY
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alexandre Mergnat <amergnat@baylibre.com>, Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@l
 inaro.org>, Nicolas Belin <nbelin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v7 00/16] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D43TXNTJFXAKH7K4UCRHU7LBXLZRH6PY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============5485754112549480813=="


--===============5485754112549480813==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tSNyT2qHs0Efy6wS"
Content-Disposition: inline


--tSNyT2qHs0Efy6wS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 06, 2024 at 12:23:23PM -0700, Nathan Chancellor wrote:
> On Fri, Sep 06, 2024 at 07:27:01PM +0100, Mark Brown wrote:
> > Are these just warnings introduced by recent versions of the toolchains?
> > These commits passed an x86 allmodconfig with GCC 12 at each step (I did
> > catch one warning there with another patch in the series that didn't get
> > applied) and 0day didn't say anything at any point.

> Not sure, I did not look too hard. At cursory glance, I am not sure x86
> allmodconfig would catch these, as this code depends on ARCH_MEDIATEK
> (not COMPILE_TEST), which only exists for arm and arm64.

Ah, I hadn't seen that (the other bits were building on x86).

> > > Clang 19:

> > That's relatively modern, though some of the warnings don't look
> > particularly new and exciting.

> Fair although I still see some of them on old versions too:

Yeah, like I say some of the warnings didn't look like they were new.

> https://github.com/ClangBuiltLinux/continuous-integration2/actions/runs/1=
0738441894
>=20
> > >   sound/soc/mediatek/mt8365/mt8365-dai-adda.c:93:8: error: implicit c=
onversion from 'unsigned long' to 'unsigned int' changes value from 1844674=
4073709551614 to 4294967294 [-Werror,-Wconstant-conversion]
> > >      91 |                 regmap_update_bits(afe->regmap, AFE_ADDA_UL=
_DL_CON0,
> > >         |                 ~~~~~~~~~~~~~~~~~~
> > >      92 |                                    AFE_ADDA_UL_DL_ADDA_AFE_=
ON,
> > >      93 |                                    ~AFE_ADDA_UL_DL_ADDA_AFE=
_ON);
> > >         |                                    ^~~~~~~~~~~~~~~~~~~~~~~~=
~~~
> > >   1 error generated.
> >=20
> > That's a bit surprising, regmap_update_bits() takes an unsigned long?  I
> > suspect the constants need to be defined as unsigned.

> Does it? I see it taking 'unsigned int' for all of its parameters.

Sorry, I misread the warning there (or was perhaps looking at another
one) and for some reason though it was about dropping signs but it's
rather due to BIT() being defined for longs which is a rather bad
landmine given how common a pattern negation is.  I do see that
synclink.h has some convenient BITn macros for some reason which would
do the trick but really I think it's just a case of open coding the
BIT() usage, or defining a BITI() or something but that seems ugly.
Probably just open code the definitions.

--tSNyT2qHs0Efy6wS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmbbbmoACgkQJNaLcl1U
h9A4/AgAhDUwT8rRI4M3S+NXdNzBJSPacU05GQT9cqLHhdUtUgyqvhxeH6OhPjiN
wUxAA7ugGFCDswITd22nOKiR76kgijacKAluiYXCh0nPvokDPQyzUklJltqFUYzm
GJfOTqniw75BP3VxTgB7KmehOyYd1EP72Oj1qc6HmNmZX7G3c2wcX3cbED2eP4hU
BfWhc9whOYYXqUYMicCcpItyPVVfKyvNgwbePdDxlHNcapm5t8z8b0jIutnhDr+c
4AUADF6NwNc6L7+ttA5yHTogggWSrzJBIYea3trWLj14a32ho28hZb6+1jE3Q6R6
bnK/Qw7CnUl4m787UaxMFjX9z84mxA==
=qv06
-----END PGP SIGNATURE-----

--tSNyT2qHs0Efy6wS--

--===============5485754112549480813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============5485754112549480813==--
