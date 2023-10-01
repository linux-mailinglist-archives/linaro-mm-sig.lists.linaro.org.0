Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCED7CF78A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:54:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF78040C20
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:54:20 +0000 (UTC)
Received: from vulcan.natalenko.name (vulcan.natalenko.name [104.207.131.136])
	by lists.linaro.org (Postfix) with ESMTPS id 9A4573EFE8
	for <linaro-mm-sig@lists.linaro.org>; Sun,  1 Oct 2023 16:32:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=natalenko.name header.s=dkim-20170712 header.b=wBqt2wD+;
	spf=pass (lists.linaro.org: domain of oleksandr@natalenko.name designates 104.207.131.136 as permitted sender) smtp.mailfrom=oleksandr@natalenko.name;
	dmarc=pass (policy=reject) header.from=natalenko.name
Received: from spock.localnet (unknown [94.142.239.106])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vulcan.natalenko.name (Postfix) with ESMTPSA id 969DA15278A8;
	Sun,  1 Oct 2023 18:32:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
	s=dkim-20170712; t=1696177967;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=kzlx67CZy1QScrq/jKerHGDJqCFa+KgwdJ4AQpm3+/U=;
	b=wBqt2wD+/+KVgBjumuMHmn7e24m7vh0dC5jcwSmWh+WHGJfdxoit0e8N0UgyRmw0UW66w8
	TjqbY0kuJHHuNvHOC4fbYnt73wJogoap/aGirEUX1vDiKQkno2VY1axPktvNwrbuB21OhG
	8AszvDBNaOI55a6C9VdO1TN3kLWcOps=
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: linux-kernel@vger.kernel.org
Date: Sun, 01 Oct 2023 18:32:34 +0200
Message-ID: <13360591.uLZWGnKmhe@natalenko.name>
MIME-Version: 1.0
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
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
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linaro.org,lists.freedesktop.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linux.dev];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[natalenko.name:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9A4573EFE8
X-MailFrom: oleksandr@natalenko.name
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3HVRS35FEJHB6ROOQARBLBXHI26GXKPD
X-Message-ID-Hash: 3HVRS35FEJHB6ROOQARBLBXHI26GXKPD
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:48:45 +0000
CC: linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Linux Regressions <regressions@lists.linux.dev>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig]  [REGRESSION] BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3HVRS35FEJHB6ROOQARBLBXHI26GXKPD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1846808110773110427=="

--===============1846808110773110427==
Content-Type: multipart/signed; boundary="nextPart2904309.e9J7NaK4W3";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2904309.e9J7NaK4W3
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: linux-kernel@vger.kernel.org
Date: Sun, 01 Oct 2023 18:32:34 +0200
Message-ID: <13360591.uLZWGnKmhe@natalenko.name>
MIME-Version: 1.0

Hello.

I've got a VM from a cloud provider, and since v6.5 I observe the following kfence splat in dmesg during boot:

```
BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250

Corrupted memory at 0x00000000e173a294 [ ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ] (in kfence-#108):
 drm_gem_put_pages+0x186/0x250
 drm_gem_shmem_put_pages_locked+0x43/0xc0
 drm_gem_shmem_object_vunmap+0x83/0xe0
 drm_gem_vunmap_unlocked+0x46/0xb0
 drm_fbdev_generic_helper_fb_dirty+0x1dc/0x310
 drm_fb_helper_damage_work+0x96/0x170
 process_one_work+0x254/0x470
 worker_thread+0x55/0x4f0
 kthread+0xe8/0x120
 ret_from_fork+0x34/0x50
 ret_from_fork_asm+0x1b/0x30

kfence-#108: 0x00000000cda343af-0x00000000aec2c095, size=3072, cache=kmalloc-4k

allocated by task 51 on cpu 0 at 14.668667s:
 drm_gem_get_pages+0x94/0x2b0
 drm_gem_shmem_get_pages+0x5d/0x110
 drm_gem_shmem_object_vmap+0xc4/0x1e0
 drm_gem_vmap_unlocked+0x3c/0x70
 drm_client_buffer_vmap+0x23/0x50
 drm_fbdev_generic_helper_fb_dirty+0xae/0x310
 drm_fb_helper_damage_work+0x96/0x170
 process_one_work+0x254/0x470
 worker_thread+0x55/0x4f0
 kthread+0xe8/0x120
 ret_from_fork+0x34/0x50
 ret_from_fork_asm+0x1b/0x30

freed by task 51 on cpu 0 at 14.668697s:
 drm_gem_put_pages+0x186/0x250
 drm_gem_shmem_put_pages_locked+0x43/0xc0
 drm_gem_shmem_object_vunmap+0x83/0xe0
 drm_gem_vunmap_unlocked+0x46/0xb0
 drm_fbdev_generic_helper_fb_dirty+0x1dc/0x310
 drm_fb_helper_damage_work+0x96/0x170
 process_one_work+0x254/0x470
 worker_thread+0x55/0x4f0
 kthread+0xe8/0x120
 ret_from_fork+0x34/0x50
 ret_from_fork_asm+0x1b/0x30

CPU: 0 PID: 51 Comm: kworker/0:2 Not tainted 6.5.0-pf4 #1 8b557a4173114d86eef7240f7a080080cfc4617e
Hardware name: Red Hat KVM, BIOS 1.11.0-2.el7 04/01/2014
Workqueue: events drm_fb_helper_damage_work
```

This repeats a couple of times and then stops.

Currently, I'm running v6.5.5. So far, there's no impact on how VM functions for me.

The VGA adapter is as follows: 00:02.0 VGA compatible controller: Cirrus Logic GD 5446

Please check.

Thanks.

-- 
Oleksandr Natalenko (post-factum)
--nextPart2904309.e9J7NaK4W3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEZUOOw5ESFLHZZtOKil/iNcg8M0sFAmUZnyIACgkQil/iNcg8
M0tJmQ/8DhTcxuPGXLnGUgCfwyogSk1PChHX3rmyptaGWxzJGH5ztqyjcdoHIYkI
38js69NPzumIuHUMhGF6ipb7ZDkqfhJTzVAWyf7s86Aau9SBWFkUDieoIxqm6CaJ
CyIxgTtVi2FalaIZiRcrJOW4bOy7tujJKlEvz43RBSoHHgBEjSx3dCYiGHNWxvWw
pG3SFZLdDNKzZs1kUdrfwqft6OxOvA85hATzVJDKs7OvMuYDCU2trDspGVs9XVa6
I99s6DJGA2uGENneAlgwti8ACY3xH+IkfNI6Fe/9vIqQYHFHpTnKqyp3HbUN18fS
En8QDtGCNChlHwFEWcB7HaFW9VXg89lpWM9MRyuSixVFijbq/vFt1AJMUEgUhYEu
nGm68xtaE/OktfzsMuOm3VV5pt4Q5MfgbFMql/a1VBpqt+NQH1jf3U6X6Mu3CBrN
QWUaQGgZMfF4y15r+lBKkDr4mrdH5kdWNu2kP5MNG8qixn4XrxCd/EkRvN4QpstC
pP+lpwVuoPpDYnqOm//zhS3p+sJdTN5B9IhBhrFOCdgisLzIyJzyLlTjDi+CRGS9
NXLPrzvFUxfpgy23N41lqYUvShb3WXsHnSWtULbrFv3J1JN/rCQ+I9tk7HuXW6W/
SPJzW28+5hoTrUF7EPl84GYXm0dJBU0BA1atbhfqFJO/AKaWHKo=
=wsqg
-----END PGP SIGNATURE-----

--nextPart2904309.e9J7NaK4W3--




--===============1846808110773110427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1846808110773110427==--



