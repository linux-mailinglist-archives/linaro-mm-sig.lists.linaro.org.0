Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F85D1E6D3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 12:34:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 700223E90F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 11:34:43 +0000 (UTC)
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	by lists.linaro.org (Postfix) with ESMTPS id 07CAB3E90F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 11:34:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b=FbIj0Ne7;
	spf=pass (lists.linaro.org: domain of wsa+renesas@sang-engineering.com designates 194.117.254.33 as permitted sender) smtp.mailfrom=wsa+renesas@sang-engineering.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=lr2j
	aXKLTYSemiRd4WCZWM7A71D5r7zK+ViV8cSzJ+U=; b=FbIj0Ne7HcdUaAEP0iAU
	A55rGJ0oyna5P19mF+Qqxxdtkv9Cgi3ikY/VAziIha2Ymf37Sh7GcN6qaW4QeEEo
	sBd+8Q/J4ZH0/a8KKWXi52G6yRrBYbtJHOc1MKWYeouC1RokrNbBn26LBMwcnNgu
	8T93ffuZswv71EcU6CqAiK3f2JCJOYkgcxnkvqxbylojhjxtVsYe3sxNiK670Caz
	EFvOqfSrAgjRTV+nnMfGbAdKt7v7gg/v17ziuAIKwmm1lI2cmH/CktRAautTnLuL
	iGUMHmLaorf+k2EQ1TVUaIc7xjC+XNtiOXCvHeyQm9tY2O4ji9uDHLMak36lcI8j
	2w==
Received: (qmail 2108427 invoked from network); 14 Jan 2026 12:34:35 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 14 Jan 2026 12:34:35 +0100
X-UD-Smtp-Session: l3s3148p1@WxbafVdI0IsujnsM
Date: Wed, 14 Jan 2026 12:34:30 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Message-ID: <aWd_RtYqGyUkjQao@ninjato>
References: <20251029-topic-sm8x50-geni-i2c-hub-no-dma-v1-1-5e264258a5bd@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20251029-topic-sm8x50-geni-i2c-hub-no-dma-v1-1-5e264258a5bd@linaro.org>
X-Rspamd-Queue-Id: 07CAB3E90F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	R_SPF_ALLOW(-0.20)[+mx];
	ONCE_RECEIVED(0.20)[];
	RWL_MAILSPIKE_GOOD(-0.10)[194.117.254.33:from];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	ASN(0.00)[asn:199753, ipnet:194.117.254.0/23, country:DE];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[sang-engineering.com:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DMARC_NA(0.00)[sang-engineering.com];
	DNSWL_BLOCKED(0.00)[194.117.254.33:from];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[sang-engineering.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DG7ZRQDPDDTF7LTDBXV4EJT2IV55SF7H
X-Message-ID-Hash: DG7ZRQDPDDTF7LTDBXV4EJT2IV55SF7H
X-MailFrom: wsa+renesas@sang-engineering.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>, Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>, Andi Shyti <andi.shyti@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Wolfram Sang <wsa@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] i2c: qcom-geni: make sure I2C hub controllers can't use SE DMA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DG7ZRQDPDDTF7LTDBXV4EJT2IV55SF7H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0053728610249849654=="


--===============0053728610249849654==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RMEH12Dl56iOtTld"
Content-Disposition: inline


--RMEH12Dl56iOtTld
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 29, 2025 at 07:07:42PM +0100, Neil Armstrong wrote:
> The I2C Hub controller is a simpler GENI I2C variant that doesn't
> support DMA at all, add a no_dma flag to make sure it nevers selects
> the SE DMA mode with mappable 32bytes long transfers.
>=20
> Fixes: cacd9643eca7 ("i2c: qcom-geni: add support for I2C Master Hub vari=
ant")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>>

Applied to for-current, thanks!


--RMEH12Dl56iOtTld
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmlnf0YACgkQFA3kzBSg
Kbb1YxAAmYs6M2P+MSlXvKQkXgfmS6UTFY09WDBcqX0ouXMPYG9zzTeTHlzkfvpK
Unobt+53hHGH1nMTnsIHOroZvR7EPWJt+myTKU9CFzS6wc3w5Su0JqaOMr1lYcT1
VaD8+QFvs6z2wJeng9NNZNDiF2LX4LaFF8zPG+i/0KdxS3QKm9YFtiL1zSPzMa7h
S8tg9AyR2lDDcxJwXThfEFj8QF74/iQw+nBJ5R/kfl4OWqDtYsv28y/t2ITpCWEM
09NKIOvyLhD/720LhLTuS7pjjHMJWynq99lYhsWOdhnD0ZZdVipiHAOxoowEZIzl
523xsVuFcLGzZLFqV2yDQU65txj6z1n/S8ycjkEiS+6pLXFvQ/Vozz1MOXz+7+1n
1AjbBFerjy8NxXHThvNYeneqx0sg9AwY79xLYa1EYTKYowlF2s8V028rCV3eIiuz
odsft7r7rqWs2I795ZeDL0EN/L0wtIJIxu6dVbJmzkExRbW5wdzyk/D8lvH6sCbt
aXcEl/DZpUyU4YCJluHyx5m/9jR7DjngfGfeYIwARk9+uqOjrjF+JFDIXguqaV4K
UUankoMGnmHJGvJNy45ttbB3QZZY4bgwcvk9WXlByMA8JlQ3aLEb7yi6T+PnCsUJ
JYqolaQBTWfCJyW/RNcRXtCDWFL4GBv2Ori4Y8rbqFTCO9B6Y+M=
=3JmV
-----END PGP SIGNATURE-----

--RMEH12Dl56iOtTld--

--===============0053728610249849654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0053728610249849654==--
