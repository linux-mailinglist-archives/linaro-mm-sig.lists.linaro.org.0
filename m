Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBEF7CF7A4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:56:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7249740C26
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:56:17 +0000 (UTC)
Received: from vulcan.natalenko.name (vulcan.natalenko.name [104.207.131.136])
	by lists.linaro.org (Postfix) with ESMTPS id 8756940C33
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Oct 2023 07:56:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=natalenko.name header.s=dkim-20170712 header.b=h7xrC5Pk;
	spf=pass (lists.linaro.org: domain of oleksandr@natalenko.name designates 104.207.131.136 as permitted sender) smtp.mailfrom=oleksandr@natalenko.name;
	dmarc=pass (policy=reject) header.from=natalenko.name
Received: from spock.localnet (unknown [94.142.239.106])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vulcan.natalenko.name (Postfix) with ESMTPSA id A74A5152DF11;
	Thu,  5 Oct 2023 09:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
	s=dkim-20170712; t=1696492577;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qLErRg+IY+M+tMiWfSLlVJCQY74BdF5SCkyderIHIa0=;
	b=h7xrC5PkklBLzvH13lJaXipMzYLk7ODNLFPeypzjuPHUyCP+2NbcQ+lR7VinR5D68csHYC
	ER5lSQNMZ1BujtcDRgS1EEmaOkSp5YuOTsVmySu1ONKkk1UjK2aNxkLw21T5v35ccRaPjP
	ET8Ej0R8oBGTFKEcgEr9SS7Use/bjM4=
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Matthew Wilcox <willy@infradead.org>,
 Thomas Zimmermann <tzimmermann@suse.de>
Date: Thu, 05 Oct 2023 09:56:03 +0200
Message-ID: <3254850.aeNJFYEL58@natalenko.name>
In-Reply-To: <fed1cbf3-0926-4895-a8ba-d6fa9fd53dbe@suse.de>
References: 
 <13360591.uLZWGnKmhe@natalenko.name> <2160215.irdbgypaU6@natalenko.name>
 <fed1cbf3-0926-4895-a8ba-d6fa9fd53dbe@suse.de>
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
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:20473, ipnet:104.207.130.0/23, country:US];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[lists.linux.dev,vger.kernel.org,lists.freedesktop.org,amd.com,lists.linaro.org,kvack.org,kernel.org,gmail.com,linux-foundation.org,linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[natalenko.name:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8756940C33
X-MailFrom: oleksandr@natalenko.name
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZQ5AWAAJ2VLNSHQE7KYNMBNULU3CAYVM
X-Message-ID-Hash: ZQ5AWAAJ2VLNSHQE7KYNMBNULU3CAYVM
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:50:30 +0000
CC: Linux Regressions <regressions@lists.linux.dev>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>, Bagas Sanjaya <bagasdotme@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [REGRESSION] BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZQ5AWAAJ2VLNSHQE7KYNMBNULU3CAYVM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8147563119194807703=="

--===============8147563119194807703==
Content-Type: multipart/signed; boundary="nextPart3261088.44csPzL39Z";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart3261088.44csPzL39Z
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Oleksandr Natalenko <oleksandr@natalenko.name>
Date: Thu, 05 Oct 2023 09:56:03 +0200
Message-ID: <3254850.aeNJFYEL58@natalenko.name>
In-Reply-To: <fed1cbf3-0926-4895-a8ba-d6fa9fd53dbe@suse.de>
MIME-Version: 1.0

Hello.

On =C4=8Dtvrtek 5. =C5=99=C3=ADjna 2023 9:44:42 CEST Thomas Zimmermann wrot=
e:
> Hi
>=20
> Am 02.10.23 um 17:38 schrieb Oleksandr Natalenko:
> > On pond=C4=9Bl=C3=AD 2. =C5=99=C3=ADjna 2023 16:32:45 CEST Matthew Wilc=
ox wrote:
> >> On Mon, Oct 02, 2023 at 01:02:52PM +0200, Oleksandr Natalenko wrote:
> >>>>>>> BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
> >>>>>>>
> >>>>>>> Corrupted memory at 0x00000000e173a294 [ ! ! ! ! ! ! ! ! ! ! ! ! =
! ! ! ! ] (in kfence-#108):
> >>>>>>>   drm_gem_put_pages+0x186/0x250
> >>>>>>>   drm_gem_shmem_put_pages_locked+0x43/0xc0
> >>>>>>>   drm_gem_shmem_object_vunmap+0x83/0xe0
> >>>>>>>   drm_gem_vunmap_unlocked+0x46/0xb0
> >>>>>>>   drm_fbdev_generic_helper_fb_dirty+0x1dc/0x310
> >>>>>>>   drm_fb_helper_damage_work+0x96/0x170
> >>>
> >>> Matthew, before I start dancing around, do you think ^^ could have th=
e same cause as 0b62af28f249b9c4036a05acfb053058dc02e2e2 which got fixed by=
 863a8eb3f27098b42772f668e3977ff4cae10b04?
> >>
> >> Yes, entirely plausible.  I think you have two useful points to look at
> >> before delving into a full bisect -- 863a8e and the parent of 0b62af.
> >> If either of them work, I think you have no more work to do.
> >=20
> > OK, I've did this against v6.5.5:
> >=20
> > ```
> > git log --oneline HEAD~3..
> > 7c1e7695ca9b8 (HEAD -> test) Revert "mm: remove struct pagevec"
> > 8f2ad53b6eac6 Revert "mm: remove check_move_unevictable_pages()"
> > fa1e3c0b5453c Revert "drm: convert drm_gem_put_pages() to use a folio_b=
atch"
> > ```
> >=20
> > then rebooted the host multiple times, and the issue is not seen any mo=
re.
> >=20
> > So I guess 3291e09a463870610b8227f32b16b19a587edf33 is the culprit.
>=20
> Ignore my other email. It's apparently been fixed already. Thanks!

Has it? I think I was able to identify offending commit, but I'm not aware =
of any fix to that.

Thanks.

> Best regards
> Thomas
>=20
> >=20
> > Thanks.
> >=20
>=20
> --=20
> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Frankenstrasse 146, 90461 Nuernberg, Germany
> GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman
> HRB 36809 (AG Nuernberg)
>=20


=2D-=20
Oleksandr Natalenko (post-factum)
--nextPart3261088.44csPzL39Z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEZUOOw5ESFLHZZtOKil/iNcg8M0sFAmUebBMACgkQil/iNcg8
M0tJ/Q/9FPtmZXPGSlNkh2qFBHnyONCuzzj6LT+47+l6Fm7nsJgSnF74o/yV/pMh
q7vpMK9rD5WvRyb5fgLxv+qfYz0t09dnOs5K+ZMjpLdeM5GMp78fFB1E/HOUAADx
JjTDrWvykfLEDoTBnZedZjxZTaHeR8b0wLvh9f9tF4Z25jeYvy9zWFDueXX97rBo
/VxH88ZCRlNwFstWH8qwa6W6DP2hiSb4osfYsftRib0xU3Gu1fNKrsWyw95VfeTd
ReiHGad9mQ4Y1AN3Ff9NeoT6/rM/2rG7h6xSgvsVrt1MAw/iwW24bH1lKUe+5f1k
fgR7nv6flGS4FF7zZ+deiI+dUaiyt1urG1zZh5U6VhzzW2VandPoTJHE+L1kT8WF
kAEsYCwRV2v0lw0YL9JhIPhDgCOT7pLWsIXmZXUKnr7IcR7cGwBPMNYpgxgpYyj0
YqujL4hPU64n46AHLaVlHBAsXO0CLgDqDJjgfbsiWe15XPnAkq0bm8QJRLBjTM0M
7Z6yr0eiGA1cdZtu8wgwen7ZEH94Lq2aBPhHAhSjSqWLlGJunN/aNSi6u3dVGy4h
ag1vpbsw2un3WU97sd3AjDunpUn01rk0GiyCWjraCbAyFAQKyVNgdonMGcV5wzX4
fTHWSuLNytga3UcQ/hCYxldyK/iT/HkFV37Z/aKGJX752dw9KNA=
=eWGs
-----END PGP SIGNATURE-----

--nextPart3261088.44csPzL39Z--




--===============8147563119194807703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8147563119194807703==--



