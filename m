Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BD81B7B5083
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Oct 2023 12:42:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB60240CF1
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Oct 2023 10:42:55 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	by lists.linaro.org (Postfix) with ESMTPS id 70F243EFE8
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Oct 2023 10:42:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Du6hDPa3;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.210.171 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-692c02adeefso10363910b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Oct 2023 03:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696243371; x=1696848171; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GMI92IRtHLN/QzcAW884cPXY3nDWtnrgER4ifF4JNpE=;
        b=Du6hDPa3U1ho+wWSX9M7GvYh/4HSBVCBYU0pO5iWARCxGyW3BhpckFgphT10w2zxmS
         wvKDTpjk1/Zd3HIKgbUkMg7vh2/BzXpcwSK6typf/2FjHQOQbBtBBZkd+ktfrX+z/YaM
         6nzhXHn2v/S0JZ4KO/KtKADpwF3rh2e2lr0XGTHBkU2iUerW2tWODTXaZs0CkjrWmOca
         5s7D4GcXz3pX6HpYtM60HhVbuRUgIPYjB7gBYlcFQPrcc2Zd1aytNUOJVdIZx31GnTFV
         ymd9s11uxDo1a7I0W8AxcfAkdK7yMELLfwsvCShGCPVbIGBG/U9C/hlYMdmO2CZPRqdZ
         Wvjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696243371; x=1696848171;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GMI92IRtHLN/QzcAW884cPXY3nDWtnrgER4ifF4JNpE=;
        b=FXKmy6iQqbbJQ2xtKSgQXuAFWTgMZl4rJJI4pIrpuUuuKOciieChfUGH/yxbSpAGTz
         GOxk86pX7U5LSz2Ll1G/D6NtT/FJxNya9cd6TbN/yRNoLSbYaz4gIqrc51JIXzAmATLt
         ZlNNJsv+X5nEwbFaivoxVJRHKqfr+TD/exrebeuLTj+ldSSKcpWBzwm4WnTO3veHOkmw
         yoZvSU0dqLDhPy1Epr18jCkMxG5muqGHUqQeMj27cXw/cWMIR7pzJtTO8GWLliObH5EM
         GcJbxS1UYkwBGR3RN9retxAFsoeMaJjyRFkO3KS1AA+zuAK+/rJs+PqB1DRQdysYANeF
         D6Ew==
X-Gm-Message-State: AOJu0YwamDt5MKAUE3CXiGBGGI1FT3FJfgoB1tN4bYi8hCI9HCBtApx9
	SNS/p9b+ytSnp4CGT0VmeAw=
X-Google-Smtp-Source: AGHT+IHXsR9Zxf1BwuGtn07GUyXdN18yKvsJMjQoR62WPOWwKUWuJGmIRqi8gHrrWJWmurokOLeQnA==
X-Received: by 2002:a05:6a00:178f:b0:68e:2eed:5ab0 with SMTP id s15-20020a056a00178f00b0068e2eed5ab0mr12390704pfg.7.1696243371433;
        Mon, 02 Oct 2023 03:42:51 -0700 (PDT)
Received: from debian.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id d17-20020aa78e51000000b0064d74808738sm19140874pfr.214.2023.10.02.03.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 03:42:49 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id CC01688F0C53; Mon,  2 Oct 2023 17:42:42 +0700 (WIB)
Date: Mon, 2 Oct 2023 17:42:42 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Oleksandr Natalenko <oleksandr@natalenko.name>,
	linux-kernel@vger.kernel.org
Message-ID: <ZRqeoiZ2ayrAR6AV@debian.me>
References: <13360591.uLZWGnKmhe@natalenko.name>
 <ZRoEqEPxPAz3QlEz@debian.me>
 <2701570.mvXUDI8C0e@natalenko.name>
MIME-Version: 1.0
In-Reply-To: <2701570.mvXUDI8C0e@natalenko.name>
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.210.171:from];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[mail-pf1-f171.google.com:helo,mail-pf1-f171.google.com:rdns];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linaro.org,lists.freedesktop.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linux.dev];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 70F243EFE8
Message-ID-Hash: 6YS4B6HMAFIPIFT7J5RNZC27TGD54QSP
X-Message-ID-Hash: 6YS4B6HMAFIPIFT7J5RNZC27TGD54QSP
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Linux Regressions <regressions@lists.linux.dev>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [REGRESSION] BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6YS4B6HMAFIPIFT7J5RNZC27TGD54QSP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2563411463450183398=="


--===============2563411463450183398==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+4x4782bxzLSt9mO"
Content-Disposition: inline


--+4x4782bxzLSt9mO
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 02, 2023 at 08:20:15AM +0200, Oleksandr Natalenko wrote:
> Hello.
>=20
> On pond=C4=9Bl=C3=AD 2. =C5=99=C3=ADjna 2023 1:45:44 CEST Bagas Sanjaya w=
rote:
> > On Sun, Oct 01, 2023 at 06:32:34PM +0200, Oleksandr Natalenko wrote:
> > > Hello.
> > >=20
> > > I've got a VM from a cloud provider, and since v6.5 I observe the fol=
lowing kfence splat in dmesg during boot:
> > >=20
> > > ```
> > > BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
> > >=20
> > > Corrupted memory at 0x00000000e173a294 [ ! ! ! ! ! ! ! ! ! ! ! ! ! ! =
! ! ] (in kfence-#108):
> > >  drm_gem_put_pages+0x186/0x250
> > >  drm_gem_shmem_put_pages_locked+0x43/0xc0
> > >  drm_gem_shmem_object_vunmap+0x83/0xe0
> > >  drm_gem_vunmap_unlocked+0x46/0xb0
> > >  drm_fbdev_generic_helper_fb_dirty+0x1dc/0x310
> > >  drm_fb_helper_damage_work+0x96/0x170
> > >  process_one_work+0x254/0x470
> > >  worker_thread+0x55/0x4f0
> > >  kthread+0xe8/0x120
> > >  ret_from_fork+0x34/0x50
> > >  ret_from_fork_asm+0x1b/0x30
> > >=20
> > > kfence-#108: 0x00000000cda343af-0x00000000aec2c095, size=3D3072, cach=
e=3Dkmalloc-4k
> > >=20
> > > allocated by task 51 on cpu 0 at 14.668667s:
> > >  drm_gem_get_pages+0x94/0x2b0
> > >  drm_gem_shmem_get_pages+0x5d/0x110
> > >  drm_gem_shmem_object_vmap+0xc4/0x1e0
> > >  drm_gem_vmap_unlocked+0x3c/0x70
> > >  drm_client_buffer_vmap+0x23/0x50
> > >  drm_fbdev_generic_helper_fb_dirty+0xae/0x310
> > >  drm_fb_helper_damage_work+0x96/0x170
> > >  process_one_work+0x254/0x470
> > >  worker_thread+0x55/0x4f0
> > >  kthread+0xe8/0x120
> > >  ret_from_fork+0x34/0x50
> > >  ret_from_fork_asm+0x1b/0x30
> > >=20
> > > freed by task 51 on cpu 0 at 14.668697s:
> > >  drm_gem_put_pages+0x186/0x250
> > >  drm_gem_shmem_put_pages_locked+0x43/0xc0
> > >  drm_gem_shmem_object_vunmap+0x83/0xe0
> > >  drm_gem_vunmap_unlocked+0x46/0xb0
> > >  drm_fbdev_generic_helper_fb_dirty+0x1dc/0x310
> > >  drm_fb_helper_damage_work+0x96/0x170
> > >  process_one_work+0x254/0x470
> > >  worker_thread+0x55/0x4f0
> > >  kthread+0xe8/0x120
> > >  ret_from_fork+0x34/0x50
> > >  ret_from_fork_asm+0x1b/0x30
> > >=20
> > > CPU: 0 PID: 51 Comm: kworker/0:2 Not tainted 6.5.0-pf4 #1 8b557a41731=
14d86eef7240f7a080080cfc4617e
> > > Hardware name: Red Hat KVM, BIOS 1.11.0-2.el7 04/01/2014
> > > Workqueue: events drm_fb_helper_damage_work
> > > ```
> > >=20
> > > This repeats a couple of times and then stops.
> > >=20
> > > Currently, I'm running v6.5.5. So far, there's no impact on how VM fu=
nctions for me.
> > >=20
> > > The VGA adapter is as follows: 00:02.0 VGA compatible controller: Cir=
rus Logic GD 5446
> > >=20
> >=20
> > Do you have this issue on v6.4?
>=20
> No, I did not have this issue with v6.4.
>=20

Then proceed with kernel bisection. You can refer to
Documentation/admin-guide/bug-bisect.rst in the kernel sources for the
process.

--=20
An old man doll... just what I always wanted! - Clara

--+4x4782bxzLSt9mO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZRqeogAKCRD2uYlJVVFO
o2E/AP4mkPIRMN1pxgfPOxihOOpbAOD45QVbnFzi6dWZJJX9QwD/RduMVyDlPWBa
eprgw5T0M5sCo+65kgP0ZWUTWNGBvQM=
=k2Qb
-----END PGP SIGNATURE-----

--+4x4782bxzLSt9mO--

--===============2563411463450183398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2563411463450183398==--
