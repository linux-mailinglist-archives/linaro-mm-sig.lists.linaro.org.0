Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 162268D4E94
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 May 2024 17:02:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BDA91440F5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 May 2024 15:02:04 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 15A693F441
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 May 2024 15:01:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=YBSAZJme;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B7AEA62803;
	Thu, 30 May 2024 15:01:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E64C4C2BBFC;
	Thu, 30 May 2024 15:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717081314;
	bh=f9rXrmt7+8lC/knKP497JPEr1C/VriBpknTuw33hit0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YBSAZJmeLFUhs3Jcwhyp3/kZBkI/0GUWOjTf2m6GbQUWtJ7l8TGe6p7+ZasXZ5xEH
	 dNiQW5VBgWpgu3R1pc05d7kqdmfT/8Dgv5dKot+NAqENkYOfCfTwe6I1jfG0twfVGR
	 mqe5MNfQOmD8R1V6TPUJwzjleX1FwVnCDZZvs+b5fj/Tem9lDRr5AwwuExXfYZDEd9
	 df/EjXzziWNKngavXZOR6W0jQvQZNgfhTzdnbt2BToaYRsO79+ZMJmVpoRh4XMa0Wm
	 xq+2aTJEqG6jeiCmkjrhh9azTF4ik/jQrpOPaiP1bvEwHG7mnBC28voatWR8zGU0Le
	 pZsaA+1PKvCiQ==
Date: Thu, 30 May 2024 17:01:51 +0200
From: "mripard@kernel.org" <mripard@kernel.org>
To: Jason-JH Lin =?utf-8?B?KOael+edv+elpSk=?= <Jason-JH.Lin@mediatek.com>
Message-ID: <20240530-inventive-nippy-bee-bb6fa6@houat>
References: <20240525232928.5524-1-jason-jh.lin@mediatek.com>
 <20240527-determined-sage-piculet-bfec4a@houat>
 <4828461fa10101eec29e2885bc1aa0e2b7114e7c.camel@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <4828461fa10101eec29e2885bc1aa0e2b7114e7c.camel@mediatek.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 15A693F441
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	FROM_DN_EQ_ADDR(1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,mediatek.com,lists.linaro.org,kernel.org,mediatek.corp-partner.google.com,ffwll.ch,google.com,lists.freedesktop.org,gmail.com,collabora.com];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: SCHBQ4NV5P7TQOIDELBFSRJZJJPCFSN4
X-Message-ID-Hash: SCHBQ4NV5P7TQOIDELBFSRJZJJPCFSN4
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, Singo Chang =?utf-8?B?KOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "jason-jh.lin@mediatek.corp-partner.google.com" <jason-jh.lin@mediatek.corp-partner.google.com>, Jason-ch Chen =?utf-8?B?KOmZs+W7uuixqik=?= <Jason-ch.Chen@mediatek.com>, Shawn Sung =?utf-8?B?KOWui+WtneismSk=?= <Shawn.Sung@mediatek.com>, Nancy Lin =?utf-8?B?KOael+aso+ieoik=?= <Nancy.Lin@mediatek.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "jkardatzke@google.com" <jkardatzke@google.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 0/7] Add mediate-drm secure flow for SVP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SCHBQ4NV5P7TQOIDELBFSRJZJJPCFSN4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1501582944215763629=="


--===============1501582944215763629==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="bsilt325yu2nqtmw"
Content-Disposition: inline


--bsilt325yu2nqtmw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 28, 2024 at 07:15:34AM GMT, Jason-JH Lin (=E6=9E=97=E7=9D=BF=E7=
=A5=A5) wrote:
> Hi Maxime,
>=20
> On Mon, 2024-05-27 at 16:06 +0200, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Sun, May 26, 2024 at 07:29:21AM GMT, Jason-JH.Lin wrote:
> > > From: Jason-jh Lin <jason-jh.lin@mediatek.corp-partner.google.com>
> > >=20
> > > Memory Definitions:
> > > secure memory - Memory allocated in the TEE (Trusted Execution
> > > Environment) which is inaccessible in the REE (Rich Execution
> > > Environment, i.e. linux kernel/userspace).
> > > secure handle - Integer value which acts as reference to 'secure
> > > memory'. Used in communication between TEE and REE to reference
> > > 'secure memory'.
> > > secure buffer - 'secure memory' that is used to store decrypted,
> > > compressed video or for other general purposes in the TEE.
> > > secure surface - 'secure memory' that is used to store graphic
> > > buffers.
> > >=20
> > > Memory Usage in SVP:
> > > The overall flow of SVP starts with encrypted video coming in from
> > > an
> > > outside source into the REE. The REE will then allocate a 'secure
> > > buffer' and send the corresponding 'secure handle' along with the
> > > encrypted, compressed video data to the TEE. The TEE will then
> > > decrypt
> > > the video and store the result in the 'secure buffer'. The REE will
> > > then allocate a 'secure surface'. The REE will pass the 'secure
> > > handles' for both the 'secure buffer' and 'secure surface' into the
> > > TEE for video decoding. The video decoder HW will then decode the
> > > contents of the 'secure buffer' and place the result in the 'secure
> > > surface'. The REE will then attach the 'secure surface' to the
> > > overlay
> > > plane for rendering of the video.
> > >=20
> > > Everything relating to ensuring security of the actual contents of
> > > the
> > > 'secure buffer' and 'secure surface' is out of scope for the REE
> > > and
> > > is the responsibility of the TEE.
> > >=20
> > > DRM driver handles allocation of gem objects that are backed by a
> > > 'secure
> > > surface' and for displaying a 'secure surface' on the overlay
> > > plane.
> > > This introduces a new flag for object creation called
> > > DRM_MTK_GEM_CREATE_RESTRICTED which indicates it should be a
> > > 'secure
> > > surface'. All changes here are in MediaTek specific code.
> > > ---
> > > TODO:
> > > 1) Drop MTK_DRM_IOCTL_GEM_CREATE and use DMA_HEAP_IOCTL_ALLOC in
> > > userspace
> > > 2) DRM driver use secure mailbox channel to handle normal and
> > > secure flow
> > > 3) Implement setting mmsys routing table in the secure world series
> >=20
> > I'm not sure what you mean here. Why are you trying to upstream
> > something that still needs to be removed from your patch series?
> >=20
> Because their is too much patches need to be fixed in this series, so I
> list down the remaining TODO items and send to review for the other
> patches.
>=20
> Sorry for the bothering, I'll drop this at the next version.

If you don't intend to use it, we just shouldn't add it. Removing the
TODO item doesn't make sense, even more so if heaps should be the way
you handle this.

> > Also, I made some comments on the previous version that have been
> > entirely ignored and still apply on this version:
> >=20
> https://lore.kernel.org/dri-devel/20240415-guppy-of-perpetual-current-3a7=
974@houat/
> >=20
>=20
> I lost that mail in my mailbox, so I didn't reply at that time.
> I have imported that mail and replied to you. Hope you don't mind :)

I haven't received that answer

Maxime

--bsilt325yu2nqtmw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZliU3wAKCRAnX84Zoj2+
dvrxAX0XabP7ScLHGhP6JhXAY0/kO0KsAhJ6bXLTnMOtM9E/W4y4qvPNP4LCV3Mo
XV4YepABgM/zYB5oYrwydUNYU7q9S94P/MmmLhGyY8VJb52Xv+ugqz9UT6kvA1I0
w0SqyRcoag==
=wGDo
-----END PGP SIGNATURE-----

--bsilt325yu2nqtmw--

--===============1501582944215763629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1501582944215763629==--
