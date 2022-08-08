Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF855A8E18
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 08:14:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B57E3F244
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Sep 2022 06:14:16 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 8AAF43F4AF
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Aug 2022 05:54:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 8B9F1B80B2B;
	Mon,  8 Aug 2022 05:54:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75FD7C433C1;
	Mon,  8 Aug 2022 05:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1659938064;
	bh=fdGOCwmBEK9CWaxIAUwPDifSkxj7PaxAllZU82W3Ry4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QDZCAORd+CDcOLkVaf1UPrSE3hL4ymPfTAuq2qSfODI7WxCqUcSnMbh3DtyhlFmJv
	 7SevWPkePl6NqhsK3RYndm1t2fn+fbAom30UPqa0cR2amyetfoRRWdGx3CXGiYHDZt
	 Of7afz3KYKWFNMpBPluGeh5layWLYJjc5TrLg/hYiVSPzaKx/phIj8DYFxCEetS+oo
	 VPrPWivn++E8p3/wtNdfSWjzbrNpsPym6oOUjOxkAaODCg0y8DOZiS8eb0oXiG0/zS
	 mkb3Gcc7zQP6MSKndbsDnnz9oUxVJbMYhXXwdUWBULqeM/HcNnDV8ZG1umR+7Q9Piu
	 gsv6IZjnMR64A==
Date: Mon, 8 Aug 2022 07:54:16 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Robin Reckmann <robin.reckmann@googlemail.com>
Message-ID: <YvClCC4ArBEjQJl9@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Robin Reckmann <robin.reckmann@googlemail.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	Robin Reckmann <robin.reckmann@gmail.com>,
	linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20220807140455.409417-1-robin.reckmann@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20220807140455.409417-1-robin.reckmann@gmail.com>
X-MailFrom: wsa@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: E7EGF4CXXU7XZCC7L5JALHT2WZZX7CJ7
X-Message-ID-Hash: E7EGF4CXXU7XZCC7L5JALHT2WZZX7CJ7
X-Mailman-Approved-At: Thu, 01 Sep 2022 06:14:12 +0000
CC: Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Robin Reckmann <robin.reckmann@gmail.com>, linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] i2c: qcom-geni: Fix GPI DMA buffer sync-back
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E7EGF4CXXU7XZCC7L5JALHT2WZZX7CJ7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6552294748559657913=="


--===============6552294748559657913==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XD4kyBoxfGtTDMuX"
Content-Disposition: inline


--XD4kyBoxfGtTDMuX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 07, 2022 at 11:04:54PM +0900, Robin Reckmann wrote:
> Fix i2c transfers using GPI DMA mode for all message types that do not set
> the I2C_M_DMA_SAFE flag (e.g. SMBus "read byte").
>=20
> In this case a bounce buffer is returned by i2c_get_dma_safe_msg_buf(),
> and it has to synced back to the message after the transfer is done.
>=20
> Add missing assignment of dma buffer in geni_i2c_gpi().
>=20
> Set xferred in i2c_put_dma_safe_msg_buf() to true in case of no error to
> ensure the sync-back of this dma buffer to the message.
>=20
> Signed-off-by: Robin Reckmann <robin.reckmann@gmail.com>

Thank you! What would be a Fixes tag for this?


--XD4kyBoxfGtTDMuX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmLwpQQACgkQFA3kzBSg
KbYMhRAArxGcGhOSEP/LoXFsoUt62gmN7SUbYALnShNEsiAAsIyfcDokRbSxVfPk
hoe7hFLjoEL+ZcARfiqvYWGbTpX6dlFx3TUdkkVkL6oyCJ/YcfvgFat7FwV0cNyP
ce2soTTDV0gDRecDLRald5RA50fdPcvcUpEhrwJDb/2JjffKXhJs4rlCOfHVUNXt
QbVwJVj54xgMeCmLrN6FsR14lTzQ5m+CnbHeDJCrKPFIxAIVIWwXvSU6lhucNYCo
lFn0Q4ZDdOnBEy2miNvvdPT0BEKxplT4SgJpD3zGjxGnFSIbO0w8kdZLvfioCrA0
s5gQxVZpHxtLtKtQruAgX8r2+JW1zSSxG8aicdX9QgNABybcYfHV4tH/CJikDLMb
VTPc8qi0HtPLMnBribfmECcHaeLzEe38gtb7aGDUG4z8wXZgePXRGfnqLtCDGykg
4Vomw99Ugc/1+XwwrpUr0JLBYqVPXq2veOsirnGo0OR3iJGajMZw4y9Tlct9AQZZ
IL7lfPhTlO2WS2rVfURyOXZCUg1/tax/RgDfzFvjJesvy9+hpZ/pq9Csl+k1b+GZ
8lbslOpKD0bM/WLDWYbrel6IH/openjxQ7M5UNusGNAnEmZPpm5QMfxsa3tjQEm7
Tv2AXDVrVjdsK4dpcqarPjowL/IJ2I8CntN4+KefRLE0ZOhthtU=
=HpON
-----END PGP SIGNATURE-----

--XD4kyBoxfGtTDMuX--

--===============6552294748559657913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6552294748559657913==--
