Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 346EE7B507B
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Oct 2023 12:40:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3FC9040CF1
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Oct 2023 10:40:54 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	by lists.linaro.org (Postfix) with ESMTPS id 0701D3EFE8
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Oct 2023 10:40:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=coZhmaxx;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.210.178 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-690bd59322dso12690391b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Oct 2023 03:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696243250; x=1696848050; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=k9BO5D+Mkjuw7PSwT8qd3pRlmg1ZqF7ESwmXR7Zy97c=;
        b=coZhmaxx+bN5Yane/BmQ+rktIShffkqu2WpFWLuDhIbgD2MHe335osEbHJAeIp3X4a
         JrEIIdCo3G0rBbHYToSYHhp0DPSPyVGk5ocdcrY1J2rJ3kwSQj1YYONgurlYs0/rzc2F
         dRHabETnq+1ICcwOmKR8juhfqdIrMxhh8sQBWxpNqTjsS0iJ9KCk1tN0rXGbWpQnDu+L
         G2SDlTul6ZqA1AMzxhymQqn0LqTrDXFxlWGNdCdr6SI4IQXKuaZQXoMqTUB7CCYdKivw
         aheMw0zacRRFoH5+kemig/vqDfTZGifb5a1ThCT12MRXrdTXRJKeY0mbscYhf1VmZbZV
         kolw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696243250; x=1696848050;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k9BO5D+Mkjuw7PSwT8qd3pRlmg1ZqF7ESwmXR7Zy97c=;
        b=tCWyEhyxUZFv9GsZK1L37jAih+Dp/AmPXshhEmd1I1NQ8yyES7IAZCJyiQcoBUPnyu
         qEOPG7eJN3AznEV4ChUgxFW14wlcgZaq5fNW5sdxApf9F8tOu2byBlzVJR4jU8bDO8de
         pHNb5hua2xPOi8XF3UxY4tJF/Qqv2nyMZXF4LSanmF64eqq5eXswcRiVEOlkPjIo4isb
         C//3FPD52sZdON69W4bvxpEqGty9gz6MKTKDj5rer6xdBUDzCVrTBAkAj1htVT7S6Cre
         51Sgq6jiETSYFReQL2pMK2dns+PNJt4aat5kLdayWy8BjkJI3g6djZVcAEJmlaThGtYf
         pw0A==
X-Gm-Message-State: AOJu0Yy9WSxsPUwdYmGSYmhuWn3AfSoQcUECCo77ie7wadD1MV3aMg+l
	LTKbbr0Rf1EYG4k2LfWS0Uc=
X-Google-Smtp-Source: AGHT+IFlnNgl9H4s1s1mbNRBP7UTYC/EN207XDgHcMg4TOAVrYrNv9S3E9tLPTTfOAc6vNuU6e6xLw==
X-Received: by 2002:a05:6a20:2447:b0:14c:5fa6:e308 with SMTP id t7-20020a056a20244700b0014c5fa6e308mr10801060pzc.43.1696243249963;
        Mon, 02 Oct 2023 03:40:49 -0700 (PDT)
Received: from debian.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id h20-20020a170902f7d400b001c0c86a5415sm3085459plw.154.2023.10.02.03.40.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 03:40:49 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id E92F9813713B; Mon,  2 Oct 2023 17:40:43 +0700 (WIB)
Date: Mon, 2 Oct 2023 17:40:43 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Oleksandr Natalenko <oleksandr@natalenko.name>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Message-ID: <ZRqeK_OgfDS4liMt@debian.me>
References: <13360591.uLZWGnKmhe@natalenko.name>
MIME-Version: 1.0
In-Reply-To: <13360591.uLZWGnKmhe@natalenko.name>
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.20 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.178:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linaro.org,lists.freedesktop.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linux.dev];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0701D3EFE8
Message-ID-Hash: BWDTVYSBVDG56LMBHMWJAXOG7MUD3Q4G
X-Message-ID-Hash: BWDTVYSBVDG56LMBHMWJAXOG7MUD3Q4G
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linux Media Mailing List <linux-media@vger.kernel.org>, linaro-mm-sig@lists.linaro.org, Linux DRI Development <dri-devel@lists.freedesktop.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Linux Regressions <regressions@lists.linux.dev>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [REGRESSION] BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BWDTVYSBVDG56LMBHMWJAXOG7MUD3Q4G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3325431992858262234=="


--===============3325431992858262234==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uM8moMeUE6uskfmd"
Content-Disposition: inline


--uM8moMeUE6uskfmd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 01, 2023 at 06:32:34PM +0200, Oleksandr Natalenko wrote:
> Hello.
>=20
> I've got a VM from a cloud provider, and since v6.5 I observe the followi=
ng kfence splat in dmesg during boot:
>=20
> ```
> BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
>=20
> Corrupted memory at 0x00000000e173a294 [ ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! =
] (in kfence-#108):
>  drm_gem_put_pages+0x186/0x250
>  drm_gem_shmem_put_pages_locked+0x43/0xc0
>  drm_gem_shmem_object_vunmap+0x83/0xe0
>  drm_gem_vunmap_unlocked+0x46/0xb0
>  drm_fbdev_generic_helper_fb_dirty+0x1dc/0x310
>  drm_fb_helper_damage_work+0x96/0x170
>  process_one_work+0x254/0x470
>  worker_thread+0x55/0x4f0
>  kthread+0xe8/0x120
>  ret_from_fork+0x34/0x50
>  ret_from_fork_asm+0x1b/0x30
>=20
> kfence-#108: 0x00000000cda343af-0x00000000aec2c095, size=3D3072, cache=3D=
kmalloc-4k
>=20
> allocated by task 51 on cpu 0 at 14.668667s:
>  drm_gem_get_pages+0x94/0x2b0
>  drm_gem_shmem_get_pages+0x5d/0x110
>  drm_gem_shmem_object_vmap+0xc4/0x1e0
>  drm_gem_vmap_unlocked+0x3c/0x70
>  drm_client_buffer_vmap+0x23/0x50
>  drm_fbdev_generic_helper_fb_dirty+0xae/0x310
>  drm_fb_helper_damage_work+0x96/0x170
>  process_one_work+0x254/0x470
>  worker_thread+0x55/0x4f0
>  kthread+0xe8/0x120
>  ret_from_fork+0x34/0x50
>  ret_from_fork_asm+0x1b/0x30
>=20
> freed by task 51 on cpu 0 at 14.668697s:
>  drm_gem_put_pages+0x186/0x250
>  drm_gem_shmem_put_pages_locked+0x43/0xc0
>  drm_gem_shmem_object_vunmap+0x83/0xe0
>  drm_gem_vunmap_unlocked+0x46/0xb0
>  drm_fbdev_generic_helper_fb_dirty+0x1dc/0x310
>  drm_fb_helper_damage_work+0x96/0x170
>  process_one_work+0x254/0x470
>  worker_thread+0x55/0x4f0
>  kthread+0xe8/0x120
>  ret_from_fork+0x34/0x50
>  ret_from_fork_asm+0x1b/0x30
>=20
> CPU: 0 PID: 51 Comm: kworker/0:2 Not tainted 6.5.0-pf4 #1 8b557a4173114d8=
6eef7240f7a080080cfc4617e
> Hardware name: Red Hat KVM, BIOS 1.11.0-2.el7 04/01/2014
> Workqueue: events drm_fb_helper_damage_work
> ```
>=20
> This repeats a couple of times and then stops.
>=20
> Currently, I'm running v6.5.5. So far, there's no impact on how VM functi=
ons for me.
>=20
> The VGA adapter is as follows: 00:02.0 VGA compatible controller: Cirrus =
Logic GD 5446
>=20

Thanks for the regression report. I'm adding it to regzbot:

#regzbot ^introduced: v6.4..v6.5

--=20
An old man doll... just what I always wanted! - Clara

--uM8moMeUE6uskfmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZRqeJgAKCRD2uYlJVVFO
o94vAQCdK24gbHlE/TSwSnvd8j9uYgtSWF/9JqsuTYcNEIa0QAEAqxCJP7ARfCvm
lDkVmrAMOBGxe7Qpk16rqel6QsVTZQQ=
=lq18
-----END PGP SIGNATURE-----

--uM8moMeUE6uskfmd--

--===============3325431992858262234==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3325431992858262234==--
