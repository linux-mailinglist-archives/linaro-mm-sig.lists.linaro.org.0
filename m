Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B75272DDA7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jun 2023 11:28:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 111273EBD6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jun 2023 09:28:32 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id E918B3EBD6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jun 2023 09:28:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=dtlBEDlI;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7F2B861FD4;
	Tue, 13 Jun 2023 09:28:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70438C433D2;
	Tue, 13 Jun 2023 09:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686648493;
	bh=WrUaJlwPOdtH8Grtb3bcTqhOd6ZRH6ivcqiAJBGA61A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dtlBEDlInPiJlEo/p+6W2w8iVMXBB22HyclMjkfcITxusrVvmqDFUEuYUUZPxc1Vm
	 DTcPGiAyzmxCRrsp0VnF2bzZx7bUByoo90KmsgR0MkVDkuFefTzWtNIX4g7jTBWkR6
	 B4zk5+zqCTaex4SDzxWPGIb8g104LSPq59B/IExiBEERUpPUrX2c4TyBW5PlkMEQjl
	 dPo0z3nRcN7+5XcZutQiaHun1uwKML5YrvXObDjUPUTFdJ10Wumn5p7SVMsSoJih9G
	 BvDpTvoOe5D2JvLuWFPtka8Nagz1pzfa0SoKOgQ/8qB102ITVqPQvc0Yu4br3/0eIy
	 o91t+00olmZkg==
Date: Tue, 13 Jun 2023 11:28:10 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Sui Jingfeng <suijingfeng@loongson.cn>
Message-ID: <7rbtdidyfpctz22pw2mnt2a6yp34hwp2bdp7usp52ft5mfrfud@nokbyxjip5by>
References: <20230520105718.325819-1-15330273260@189.cn>
 <d4e647d8-294c-abd7-40c6-37381796203d@loongson.cn>
 <a23d6mgl4fbfa4ucgjvwgw7l3somxo4tkhit7ygy55fldlum56@vm3tyjdsx24l>
 <d2f744b6-e4c9-d1b5-d4ca-470b801c670d@189.cn>
 <hvfr6qkepf6l3ymqtp6vhlneeqihnli7g5v7nzd6rirwleffk6@4ernj6xng5rt>
 <42c54caf-0ab9-a075-b641-9e3e21b2a2f3@loongson.cn>
MIME-Version: 1.0
In-Reply-To: <42c54caf-0ab9-a075-b641-9e3e21b2a2f3@loongson.cn>
X-Rspamd-Queue-Id: E918B3EBD6
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	FREEMAIL_CC(0.00)[189.cn,linux.intel.com,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.loongnix.cn];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[139.178.84.217:query timed out,52.25.139.140:query timed out];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_TLS_ALL(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VNZFMSCZALPT2FYMWKLSXJRENIXIX3AS
X-Message-ID-Hash: VNZFMSCZALPT2FYMWKLSXJRENIXIX3AS
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sui Jingfeng <15330273260@189.cn>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Li Yi <liyi@loongson.cn>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Emil Velikov <emil.l.velikov@gmail.com>, Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 0/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VNZFMSCZALPT2FYMWKLSXJRENIXIX3AS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4703028361950592170=="


--===============4703028361950592170==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="efolnwkilneuxbv7"
Content-Disposition: inline


--efolnwkilneuxbv7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 13, 2023 at 05:17:00PM +0800, Sui Jingfeng wrote:
>=20
> On 2023/6/13 17:10, Maxime Ripard wrote:
> > On Tue, Jun 13, 2023 at 04:35:44PM +0800, Sui Jingfeng wrote:
> > > Hi,
> > >=20
> > > On 2023/6/13 16:30, Maxime Ripard wrote:
> > > > Hi,
> > > >=20
> > > > On Mon, Jun 12, 2023 at 10:58:54PM +0800, Sui Jingfeng wrote:
> > > > > Hi,
> > > > >=20
> > > > >=20
> > > > > Any ideas for this trivial DC driver? Sorry about my broken Engli=
sh.
> > > > >=20
> > > > > What to do next? Send a new version?
> > > > Thomas already told you to merge it in the previous version:
> > > > https://lore.kernel.org/dri-devel/7b77020f-d543-13bf-e178-bc416bcc7=
28d@suse.de/
> > > >=20
> > > > So.. do that?
> > > Yes, that sound fine.
> > >=20
> > > But I can't do it myself, would you like to help?
> > Why can't you do it yourself?
>=20
> I don't have a commit access to the drm-misc,
>=20
> I think, I can get the commit access in a letter time when I good enough,
>=20
> But get the code merged, just merge the latest version is OK.

Look at the link in Thomas mail, it's the documentation on how to get
commit access.

Maxime

--efolnwkilneuxbv7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZIg2qgAKCRDj7w1vZxhR
xe2oAP4gD4M8YGkmV6iqul3AbWlc89QdI9EkMzUDaxAdh2wwhAD/RciCYKO5vjJ4
wHadgVBEHDBjHiKxJ5t/84BRjU5WewY=
=45xg
-----END PGP SIGNATURE-----

--efolnwkilneuxbv7--

--===============4703028361950592170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4703028361950592170==--
