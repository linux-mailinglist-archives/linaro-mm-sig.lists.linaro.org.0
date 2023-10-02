Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E857CF78D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:54:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF2DA40C4C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:54:58 +0000 (UTC)
Received: from vulcan.natalenko.name (vulcan.natalenko.name [104.207.131.136])
	by lists.linaro.org (Postfix) with ESMTPS id 17ACA3F0D0
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Oct 2023 06:20:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=natalenko.name header.s=dkim-20170712 header.b=ONz3hpW9;
	spf=pass (lists.linaro.org: domain of oleksandr@natalenko.name designates 104.207.131.136 as permitted sender) smtp.mailfrom=oleksandr@natalenko.name;
	dmarc=pass (policy=reject) header.from=natalenko.name
Received: from spock.localnet (unknown [94.142.239.106])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vulcan.natalenko.name (Postfix) with ESMTPSA id 4C3141528555;
	Mon,  2 Oct 2023 08:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
	s=dkim-20170712; t=1696227627;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3fQdtHTcIZFqz9pyHvM86qId7PCboP0/SwERmpmp9sI=;
	b=ONz3hpW9j8RF6uHRMXa68TnztyZYRzydfE2lxBSAEw0iZGjJQah4g7y/OA1hihmmfMifaG
	F5ngSTIh0qsF2PRoFRSjBmpHTTk6n4p26wiJ1Ow6qddOhl7GR+IymQ9YRZ9O+xwlO9ejiH
	DyXUk27v4ac8uJe1qZiUK2zyj3mUpsU=
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: linux-kernel@vger.kernel.org, Bagas Sanjaya <bagasdotme@gmail.com>
Date: Mon, 02 Oct 2023 08:20:15 +0200
Message-ID: <2701570.mvXUDI8C0e@natalenko.name>
In-Reply-To: <ZRoEqEPxPAz3QlEz@debian.me>
References: <13360591.uLZWGnKmhe@natalenko.name> <ZRoEqEPxPAz3QlEz@debian.me>
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
	ARC_NA(0.00)[];
	ASN(0.00)[asn:20473, ipnet:104.207.130.0/23, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linaro.org,lists.freedesktop.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linux.dev];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	URIBL_BLOCKED(0.00)[natalenko.name:dkim,vulcan.natalenko.name:helo,vulcan.natalenko.name:rdns];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[natalenko.name:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 17ACA3F0D0
X-MailFrom: oleksandr@natalenko.name
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Z4NFDLY74ZH6RAXSCTGUJ5KQ3CJ663KI
X-Message-ID-Hash: Z4NFDLY74ZH6RAXSCTGUJ5KQ3CJ663KI
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:50:28 +0000
CC: linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Linux Regressions <regressions@lists.linux.dev>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [REGRESSION] BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z4NFDLY74ZH6RAXSCTGUJ5KQ3CJ663KI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0455482128708127505=="

--===============0455482128708127505==
Content-Type: multipart/signed; boundary="nextPart12296369.O9o76ZdvQC";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart12296369.O9o76ZdvQC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: linux-kernel@vger.kernel.org, Bagas Sanjaya <bagasdotme@gmail.com>
Date: Mon, 02 Oct 2023 08:20:15 +0200
Message-ID: <2701570.mvXUDI8C0e@natalenko.name>
In-Reply-To: <ZRoEqEPxPAz3QlEz@debian.me>
MIME-Version: 1.0

Hello.

On pond=C4=9Bl=C3=AD 2. =C5=99=C3=ADjna 2023 1:45:44 CEST Bagas Sanjaya wro=
te:
> On Sun, Oct 01, 2023 at 06:32:34PM +0200, Oleksandr Natalenko wrote:
> > Hello.
> >=20
> > I've got a VM from a cloud provider, and since v6.5 I observe the follo=
wing kfence splat in dmesg during boot:
> >=20
> > ```
> > BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
> >=20
> > Corrupted memory at 0x00000000e173a294 [ ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! =
! ] (in kfence-#108):
> >  drm_gem_put_pages+0x186/0x250
> >  drm_gem_shmem_put_pages_locked+0x43/0xc0
> >  drm_gem_shmem_object_vunmap+0x83/0xe0
> >  drm_gem_vunmap_unlocked+0x46/0xb0
> >  drm_fbdev_generic_helper_fb_dirty+0x1dc/0x310
> >  drm_fb_helper_damage_work+0x96/0x170
> >  process_one_work+0x254/0x470
> >  worker_thread+0x55/0x4f0
> >  kthread+0xe8/0x120
> >  ret_from_fork+0x34/0x50
> >  ret_from_fork_asm+0x1b/0x30
> >=20
> > kfence-#108: 0x00000000cda343af-0x00000000aec2c095, size=3D3072, cache=
=3Dkmalloc-4k
> >=20
> > allocated by task 51 on cpu 0 at 14.668667s:
> >  drm_gem_get_pages+0x94/0x2b0
> >  drm_gem_shmem_get_pages+0x5d/0x110
> >  drm_gem_shmem_object_vmap+0xc4/0x1e0
> >  drm_gem_vmap_unlocked+0x3c/0x70
> >  drm_client_buffer_vmap+0x23/0x50
> >  drm_fbdev_generic_helper_fb_dirty+0xae/0x310
> >  drm_fb_helper_damage_work+0x96/0x170
> >  process_one_work+0x254/0x470
> >  worker_thread+0x55/0x4f0
> >  kthread+0xe8/0x120
> >  ret_from_fork+0x34/0x50
> >  ret_from_fork_asm+0x1b/0x30
> >=20
> > freed by task 51 on cpu 0 at 14.668697s:
> >  drm_gem_put_pages+0x186/0x250
> >  drm_gem_shmem_put_pages_locked+0x43/0xc0
> >  drm_gem_shmem_object_vunmap+0x83/0xe0
> >  drm_gem_vunmap_unlocked+0x46/0xb0
> >  drm_fbdev_generic_helper_fb_dirty+0x1dc/0x310
> >  drm_fb_helper_damage_work+0x96/0x170
> >  process_one_work+0x254/0x470
> >  worker_thread+0x55/0x4f0
> >  kthread+0xe8/0x120
> >  ret_from_fork+0x34/0x50
> >  ret_from_fork_asm+0x1b/0x30
> >=20
> > CPU: 0 PID: 51 Comm: kworker/0:2 Not tainted 6.5.0-pf4 #1 8b557a4173114=
d86eef7240f7a080080cfc4617e
> > Hardware name: Red Hat KVM, BIOS 1.11.0-2.el7 04/01/2014
> > Workqueue: events drm_fb_helper_damage_work
> > ```
> >=20
> > This repeats a couple of times and then stops.
> >=20
> > Currently, I'm running v6.5.5. So far, there's no impact on how VM func=
tions for me.
> >=20
> > The VGA adapter is as follows: 00:02.0 VGA compatible controller: Cirru=
s Logic GD 5446
> >=20
>=20
> Do you have this issue on v6.4?

No, I did not have this issue with v6.4.

Thanks.

=2D-=20
Oleksandr Natalenko (post-factum)
--nextPart12296369.O9o76ZdvQC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEZUOOw5ESFLHZZtOKil/iNcg8M0sFAmUaYR8ACgkQil/iNcg8
M0tfyBAAnP91s5U8yswmuT3DF9ceF6Wd92FqSCJ7Sl0tmXBvCZEeGDYG+mHJroBS
vU/TynG7tClvuIbjGWMYtPY6rYpQ7R76RfzPvFVgweHxvlMgFZ4c5WWIeJ6DlaIO
uQ+MEH+lxO/kdG3J9wgnpMKwzqqozP4k80oXibP0vFeoerb/UVnk+YHtXsBollmi
kgxel8QcEZrwac33ns2JoxgDFULEoeUVAdOxrutl84ZRDhzR2RED08lnvoAVf+E7
a8rwA3FQj4tg005l6X5Dgjs2QcAxDkpZ0A/n6ZoHdnMzO+3VBGfkOqGqOVlaOqYN
cFjZ9rstkV6QA6mjAPAzoyPBASXK/jH0Aj2YAPZTSRh01H1BATbbduCp6Q/QtX4s
PlrcWRprA22wyhhRsaMBAU0fjTgs4mVmZgdfflZR98Jzdb/J9SJFIl6bDlWE72C7
l7NtFubLbuK3PsDVmvBa/r+QOLMCIZDQcDwAa+k+rn7eT+Is5CQC5YCCzL5hfyTJ
Nu2pjwVR6qDY+/OEasJj7QQvRrgDfB6Bwr6MDvj5ktT0GO17XizM/u2Jq/z+xKpa
8hqtszU5BHwIZdnt/MZTGCBghp7CoOKcV9uEUh13AKU5e0GiClb3DlpzWAhOF1KA
gPE+PNMujL5D1SQ9k8cbEPoZuq91SStdFwEnk3e1nJMWeSjmmFs=
=83J6
-----END PGP SIGNATURE-----

--nextPart12296369.O9o76ZdvQC--




--===============0455482128708127505==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0455482128708127505==--



