Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1B37CF799
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:55:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2ECB40D68
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:55:40 +0000 (UTC)
Received: from vulcan.natalenko.name (vulcan.natalenko.name [104.207.131.136])
	by lists.linaro.org (Postfix) with ESMTPS id C184C3ECF3
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Oct 2023 15:39:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=natalenko.name header.s=dkim-20170712 header.b=pWXunvHw;
	spf=pass (lists.linaro.org: domain of oleksandr@natalenko.name designates 104.207.131.136 as permitted sender) smtp.mailfrom=oleksandr@natalenko.name;
	dmarc=pass (policy=reject) header.from=natalenko.name
Received: from spock.localnet (unknown [94.142.239.106])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vulcan.natalenko.name (Postfix) with ESMTPSA id 9BE981528EB4;
	Mon,  2 Oct 2023 17:39:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
	s=dkim-20170712; t=1696261142;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=cOB88vPQiLyH370nTLoYIxokwI7a/8OLj2bT7Vxp3cw=;
	b=pWXunvHw7ykTJg5hBsOg9EX0UAyT7FxfqVQMTpPDUw0Ad3+mLwq+Vj11H1fg015DGMouCo
	HDMokGSEED/qVoVe/NscrAb22quvRHi7Y+jUpi2n0kKzJZt4v0y0NCA2RqDB8IODILxZlF
	JC4Gq82iC3zo/kynuS1cSb+zfeXbs2c=
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Matthew Wilcox <willy@infradead.org>
Date: Mon, 02 Oct 2023 17:38:48 +0200
Message-ID: <2160215.irdbgypaU6@natalenko.name>
In-Reply-To: <ZRrUjcWqtmzPV3Fs@casper.infradead.org>
References: 
 <13360591.uLZWGnKmhe@natalenko.name> <2300189.ElGaqSPkdT@natalenko.name>
 <ZRrUjcWqtmzPV3Fs@casper.infradead.org>
MIME-Version: 1.0
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[natalenko.name,reject];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[natalenko.name:s=dkim-20170712];
	ONCE_RECEIVED(0.10)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:20473, ipnet:104.207.130.0/23, country:US];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,lists.linaro.org,lists.freedesktop.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,amd.com,lists.linux.dev,linux-foundation.org,kvack.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	URIBL_BLOCKED(0.00)[vulcan.natalenko.name:helo,vulcan.natalenko.name:rdns];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[natalenko.name:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C184C3ECF3
X-MailFrom: oleksandr@natalenko.name
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: F366VWJQTYF46ERLAWYF5S2YCWHTSFE5
X-Message-ID-Hash: F366VWJQTYF46ERLAWYF5S2YCWHTSFE5
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:50:29 +0000
CC: linux-kernel@vger.kernel.org, Bagas Sanjaya <bagasdotme@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Linux Regressions <regressions@lists.linux.dev>, Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [REGRESSION] BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F366VWJQTYF46ERLAWYF5S2YCWHTSFE5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8534020939958128295=="

--===============8534020939958128295==
Content-Type: multipart/signed; boundary="nextPart13361251.uLZWGnKmhe";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart13361251.uLZWGnKmhe
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Matthew Wilcox <willy@infradead.org>
Date: Mon, 02 Oct 2023 17:38:48 +0200
Message-ID: <2160215.irdbgypaU6@natalenko.name>
In-Reply-To: <ZRrUjcWqtmzPV3Fs@casper.infradead.org>
MIME-Version: 1.0

On pond=C4=9Bl=C3=AD 2. =C5=99=C3=ADjna 2023 16:32:45 CEST Matthew Wilcox w=
rote:
> On Mon, Oct 02, 2023 at 01:02:52PM +0200, Oleksandr Natalenko wrote:
> > > > > > BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
> > > > > >=20
> > > > > > Corrupted memory at 0x00000000e173a294 [ ! ! ! ! ! ! ! ! ! ! ! =
! ! ! ! ! ] (in kfence-#108):
> > > > > >  drm_gem_put_pages+0x186/0x250
> > > > > >  drm_gem_shmem_put_pages_locked+0x43/0xc0
> > > > > >  drm_gem_shmem_object_vunmap+0x83/0xe0
> > > > > >  drm_gem_vunmap_unlocked+0x46/0xb0
> > > > > >  drm_fbdev_generic_helper_fb_dirty+0x1dc/0x310
> > > > > >  drm_fb_helper_damage_work+0x96/0x170
> >=20
> > Matthew, before I start dancing around, do you think ^^ could have the =
same cause as 0b62af28f249b9c4036a05acfb053058dc02e2e2 which got fixed by 8=
63a8eb3f27098b42772f668e3977ff4cae10b04?
>=20
> Yes, entirely plausible.  I think you have two useful points to look at
> before delving into a full bisect -- 863a8e and the parent of 0b62af.
> If either of them work, I think you have no more work to do.

OK, I've did this against v6.5.5:

```
git log --oneline HEAD~3..
7c1e7695ca9b8 (HEAD -> test) Revert "mm: remove struct pagevec"
8f2ad53b6eac6 Revert "mm: remove check_move_unevictable_pages()"
fa1e3c0b5453c Revert "drm: convert drm_gem_put_pages() to use a folio_batch"
```

then rebooted the host multiple times, and the issue is not seen any more.

So I guess 3291e09a463870610b8227f32b16b19a587edf33 is the culprit.

Thanks.

=2D-=20
Oleksandr Natalenko (post-factum)
--nextPart13361251.uLZWGnKmhe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEZUOOw5ESFLHZZtOKil/iNcg8M0sFAmUa5AgACgkQil/iNcg8
M0syzg/7BciM9R4z20hUehuS7SJe83FiC1Cgucq3pMgk42d+48MZTzND3Xui+p8v
WXpF98grtGA1nzPzfBngpkwzPVHCL2Psf/mT+ea86et2jNMPtoQBJ0BQYo4DL83F
AG7VP9HRo9aPKwppoYsOnEEJmXqx1iqsHn0O89uworE0aV6aRRM4POZVsafKNjdT
vAlYmRrueMS/F6YhfjcVlPd7G4K7SQTg0glBOgWo9rY9C7Ox/oNgf1MqGcp+L/V3
2lYuFDFzj4fAHikW1zm74ujUbEXJ3FtG0knmkWcqNIjJ5yWwJk3l3birm0ni0PX6
e22IoVoShI0W9rTpDlUEPkx7OEQ6taAwadWJbKhNdBMOjdpm1BFkDCmWH4HCWOgd
o1ChU5iQfJldc50ymThnHVX5JxutVaPmNZDYWWAL9iMUdTkI0NkgqtWm5ZgaXRq3
vJbZLqWAiHxA3UqvstvrzGwX3VswbJsjDV+Lqi1I27MW+xti81I3BzBP2+kfM/0I
7bqi/XC5DboJFpNy5ac2BJdZn2ZktqAi3tkGKr4cAJViohE1/50kjAWrS+gWISOJ
8f7UivDTV+AxizGySF88gekEA9raxURl40GK7rvBvQMwi7Fd1njzRct/O4neDlaP
MlmoKVsz6VJoOuANweZqkyHyHYRALaxRGXxkE3yPXIfeWaFwGWc=
=38a+
-----END PGP SIGNATURE-----

--nextPart13361251.uLZWGnKmhe--




--===============8534020939958128295==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8534020939958128295==--



