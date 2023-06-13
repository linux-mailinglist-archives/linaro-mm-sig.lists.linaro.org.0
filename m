Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CB972DD57
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jun 2023 11:11:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FBB0413D6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jun 2023 09:11:16 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id C5DBE3EEB2
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jun 2023 09:11:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=nni+VDRc;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6334763109;
	Tue, 13 Jun 2023 09:11:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CA14C433EF;
	Tue, 13 Jun 2023 09:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686647462;
	bh=3x1vQa4C2vZm/aLZjUrKsrmkj7ZCJR2uls+VZCZHrrc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nni+VDRcxHMCmL7HaHuIamrAr+jGI5W845fK1XXI/usl+07uT8yr2iucRl71B9dC4
	 7CJ04vWx0JZLFRpnZcWiEZ3xhEk3NBJp1jaHE6VeRmf6E858SEuZfimyzYFPg8M0VR
	 YfHMlGiyAnsEl2iAzOPKtvDS4ID1z37/dyiIYqkBB3DOEzfWDBsO+dEHCt3104Yei4
	 OLANcqsGG52i2UODN0aexcZT9a2/2njvvuk4oqRAMmRRHvlQ3KC1jax5YTcdfPHCZf
	 XDvnNJYHVFOV/uxVEUbKL/qDdfwOHY4NsCkwerXxM/t0aBvZV722SDTcm+yRNsTUJ9
	 mMyWhc7CZHEQw==
Date: Tue, 13 Jun 2023 11:10:59 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Sui Jingfeng <15330273260@189.cn>
Message-ID: <hvfr6qkepf6l3ymqtp6vhlneeqihnli7g5v7nzd6rirwleffk6@4ernj6xng5rt>
References: <20230520105718.325819-1-15330273260@189.cn>
 <d4e647d8-294c-abd7-40c6-37381796203d@loongson.cn>
 <a23d6mgl4fbfa4ucgjvwgw7l3somxo4tkhit7ygy55fldlum56@vm3tyjdsx24l>
 <d2f744b6-e4c9-d1b5-d4ca-470b801c670d@189.cn>
MIME-Version: 1.0
In-Reply-To: <d2f744b6-e4c9-d1b5-d4ca-470b801c670d@189.cn>
X-Rspamd-Queue-Id: C5DBE3EEB2
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_ALL(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[loongson.cn,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.loongnix.cn];
	RCPT_COUNT_TWELVE(0.00)[16];
	BLOCKLISTDE_FAIL(0.00)[52.25.139.140:server fail,139.178.84.217:server fail];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_TO(0.00)[189.cn];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 567SCQW3CCFFZW7C6KVUKEGR3ROAFKOW
X-Message-ID-Hash: 567SCQW3CCFFZW7C6KVUKEGR3ROAFKOW
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sui Jingfeng <suijingfeng@loongson.cn>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Li Yi <liyi@loongson.cn>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Emil Velikov <emil.l.velikov@gmail.com>, Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 0/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/567SCQW3CCFFZW7C6KVUKEGR3ROAFKOW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6667561709470863632=="


--===============6667561709470863632==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hpffyxdlrw7g4k3j"
Content-Disposition: inline


--hpffyxdlrw7g4k3j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 13, 2023 at 04:35:44PM +0800, Sui Jingfeng wrote:
> Hi,
>=20
> On 2023/6/13 16:30, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Mon, Jun 12, 2023 at 10:58:54PM +0800, Sui Jingfeng wrote:
> > > Hi,
> > >=20
> > >=20
> > > Any ideas for this trivial DC driver? Sorry about my broken English.
> > >=20
> > > What to do next? Send a new version?
> > Thomas already told you to merge it in the previous version:
> > https://lore.kernel.org/dri-devel/7b77020f-d543-13bf-e178-bc416bcc728d@=
suse.de/
> >=20
> > So.. do that?
>=20
> Yes, that sound fine.
>=20
> But I can't do it myself, would you like to help?

Why can't you do it yourself?

Maxime

--hpffyxdlrw7g4k3j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZIgyowAKCRDj7w1vZxhR
xRRuAQCrBuuVG4szTbawSRwgsoNQPfbuzW5fwxdZkFu+rKLDCQD+J6ujT7XS4QIG
mbiB7naiKmWDCd8R0jlmFZzJNw2kDgI=
=nhdu
-----END PGP SIGNATURE-----

--hpffyxdlrw7g4k3j--

--===============6667561709470863632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6667561709470863632==--
