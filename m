Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3F8B9F594
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Sep 2025 14:50:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B138945988
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Sep 2025 12:50:39 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id C8845440E5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Sep 2025 12:50:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="sRrV/7Va";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 085B5443EF;
	Thu, 25 Sep 2025 12:50:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 042C8C4CEF0;
	Thu, 25 Sep 2025 12:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758804635;
	bh=gjEIv7e/AaGQd6mX79bm9i7rKi9eMuJ9IwjfK+qUFwE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sRrV/7VajwfGNUgRhOTj6ja/EERbs8izvUvVhCIzRR71Wkchs8/vM8BiEhco2hxo7
	 WMOnfgM/UU3io7Wvhu0WD+lK0+8s6pHyN4RuhBBOd6icfS6NtocxASBd2OMxWeQaQh
	 JxAkcHkk9il9rRPiIp4tl915jK6Im+FXxq+PQ/nA6/rc/HrZi5vAcO2jfHDqv6lbCe
	 OuBCDasPoaU4RHLy3nayjAB7glbhWCU9Yzs8aRCJSkh4w7KV62/dq7eeDZnEBwSSjU
	 ZO2fM1Q61p9vJRFuDnfmChFAHyeT1abZB3XM82t6cjUTbBA/LOEZ5vuqz1wzwxsfpF
	 cRQMGl6wIKB3w==
Date: Thu, 25 Sep 2025 14:50:31 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>
Message-ID: <20250925-lovely-azure-saluki-398ad9@penduick>
References: <20250728-dma-buf-heap-names-doc-v4-1-f73f71cf0dfd@kernel.org>
 <CAO_48GHsteXa9vu5n8FyuWYGOK7yMBhz3ppQeO=CtxTdcM+K8g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO_48GHsteXa9vu5n8FyuWYGOK7yMBhz3ppQeO=CtxTdcM+K8g@mail.gmail.com>
X-Rspamd-Queue-Id: C8845440E5
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.52 / 15.00];
	BAYES_HAM(-2.92)[99.66%];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,arm.com,google.com,lwn.net,ti.com,redhat.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5YCPRFL244QHUH3QYYXITEKMEPM3T2ZC
X-Message-ID-Hash: 5YCPRFL244QHUH3QYYXITEKMEPM3T2ZC
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Jonathan Corbet <corbet@lwn.net>, Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, Bagas Sanjaya <bagasdotme@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] Documentation: dma-buf: heaps: Add naming guidelines
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5YCPRFL244QHUH3QYYXITEKMEPM3T2ZC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============9105272466056019186=="


--===============9105272466056019186==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="dy2lfvdaa4m2m7ns"
Content-Disposition: inline


--dy2lfvdaa4m2m7ns
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4] Documentation: dma-buf: heaps: Add naming guidelines
MIME-Version: 1.0

Hi Sumit,

On Wed, Sep 10, 2025 at 11:40:11AM +0530, Sumit Semwal wrote:
> Hello Maxime,
>=20
>=20
> On Mon, 28 Jul 2025 at 13:51, Maxime Ripard <mripard@kernel.org> wrote:
> >
> > We've discussed a number of times of how some heap names are bad, but
> > not really what makes a good heap name.
> >
> > Let's document what we expect the heap names to look like.
> Thank you for the patch. In principle, I'm ok to take this patch, with
> the obvious understanding that if there are future heap name
> requirements that can't be satisfied with these rules, we will discuss
> and adapt the rules accordingly.
>=20
> I hope this sounds reasonable to all.
>=20
> If I don't hear any objections, I'll merge this by this weekend.

As far as I know, it's still not merged?

Maxime

--dy2lfvdaa4m2m7ns
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaNU6lwAKCRAnX84Zoj2+
dkYAAX436rdukGxB0wSKNFzTXO4psW2xeSY46AD1x6M4US1p41pN2cisN21lGiMD
3Aln2LwBf1FtzKUlaEBuoA4LWNcpCasIrOKcdDfrD4XgHZWnECNLcW/3IXJSeM9p
i2t9Akw6wg==
=auU1
-----END PGP SIGNATURE-----

--dy2lfvdaa4m2m7ns--

--===============9105272466056019186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============9105272466056019186==--
