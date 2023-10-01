Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7417B4A5C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Oct 2023 01:45:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C35A40D66
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  1 Oct 2023 23:45:51 +0000 (UTC)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	by lists.linaro.org (Postfix) with ESMTPS id 3A8F43F005
	for <linaro-mm-sig@lists.linaro.org>; Sun,  1 Oct 2023 23:45:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=MxzYhW3E;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.210.182 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-6907e44665bso14392473b3a.1
        for <linaro-mm-sig@lists.linaro.org>; Sun, 01 Oct 2023 16:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696203948; x=1696808748; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8vvjOV/SJHwlBfuAQ9Hpu2fBDMywi9nmiPQcO1/0180=;
        b=MxzYhW3E50M/9/+FvUnNv+n2uWuokFus1YwMsWWIcI/AEz8K7bRG9qSa0BE0F2QsgJ
         3b3iZA8Q70ijUB6QKH7IbrMVoK2E/8r8cxTQbpUNq1EAHaf4wk5n0W/D5wZKKPFXaqzn
         xku2O/6xi0Zu6UMD2seKcgFdcj2uxLMgBQNoyb+fDEuW4xNGw26Um0TgLczOTj5MqNw8
         8qzpZYttd1/TIDlnFxO2WxH5FkSQXkD4I+1bIG08+TsIOx5HFeVUEKorTYm0GflqPDv0
         HZYynjFGQ90clB5U4nfCWSgQb0tXWgpMcqL2iwD+oo3x29Z5L6lLEpPQhBlQdNZcTSqS
         g5Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696203948; x=1696808748;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8vvjOV/SJHwlBfuAQ9Hpu2fBDMywi9nmiPQcO1/0180=;
        b=It0hcxHOul5Nms41g741MP9dU3hXqiCyFIHraWtf6/N7QoFf15nAYwMU8XzzYwmfSs
         +Vs8L3rYGlZr4ldNF2Sc6qN4fQuiujzGJQbNct+5FMtksysl8nIbJ3Jpm/57NZPCR2oa
         n82Y+yXUhJ7bRr2bqgT5JqPyevybW1RfBhrsVZ8gdR2EQJ6j7KWUxTMoyQnz7DSO+59Q
         zLpwZTg2Lt/oVT38e/wykVEOHdvcgS+LuJGGu+gGlWUO6ohaq3iYKVwpuvCilkBWrZCO
         FxWxr13vD3hJQNYugMb6lBXjEdaDb5L//PsHPQvQtAIRAKfWS4CUKZtgbLa9Hx4BMZ8g
         yvQA==
X-Gm-Message-State: AOJu0YyjYqO+AS7OumqwhkYQgxIqJQ3pGIFhbx+DFjedCQqyU+ddLiah
	fyp9MGk7jX5K8xC1PsS3yEk=
X-Google-Smtp-Source: AGHT+IHz8QtBxh5UpcXHxqq1V7wU5Le8vKu+zUqpAxF2dUNjqVwWaUCWgNdN7SxncLebsJNcFYx8tQ==
X-Received: by 2002:a05:6a00:982:b0:68e:36bc:194a with SMTP id u2-20020a056a00098200b0068e36bc194amr13053460pfg.15.1696203948274;
        Sun, 01 Oct 2023 16:45:48 -0700 (PDT)
Received: from debian.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id f1-20020aa782c1000000b0069305627494sm10416369pfn.165.2023.10.01.16.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Oct 2023 16:45:47 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 0070F8017C4F; Mon,  2 Oct 2023 06:45:44 +0700 (WIB)
Date: Mon, 2 Oct 2023 06:45:44 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Oleksandr Natalenko <oleksandr@natalenko.name>,
	linux-kernel@vger.kernel.org
Message-ID: <ZRoEqEPxPAz3QlEz@debian.me>
References: <13360591.uLZWGnKmhe@natalenko.name>
MIME-Version: 1.0
In-Reply-To: <13360591.uLZWGnKmhe@natalenko.name>
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.182:from];
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
X-Rspamd-Queue-Id: 3A8F43F005
Message-ID-Hash: BJS5UTEOBLNT5Q7HJJMVM525K7RLU3RM
X-Message-ID-Hash: BJS5UTEOBLNT5Q7HJJMVM525K7RLU3RM
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Linux Regressions <regressions@lists.linux.dev>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [REGRESSION] BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BJS5UTEOBLNT5Q7HJJMVM525K7RLU3RM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0063117933566879371=="


--===============0063117933566879371==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yoF7gxy4SjBfUd1U"
Content-Disposition: inline


--yoF7gxy4SjBfUd1U
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

Do you have this issue on v6.4?

--=20
An old man doll... just what I always wanted! - Clara

--yoF7gxy4SjBfUd1U
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZRoEoAAKCRD2uYlJVVFO
o9s5AP9kGuHk47ES1xM3sSRWMksEAyOgSfb9PPRtW2GW6eLYrwEAncNNUUPjdgsp
of+ra71dF0EDOM0682RgxNmO1A/YTQw=
=/Uxd
-----END PGP SIGNATURE-----

--yoF7gxy4SjBfUd1U--

--===============0063117933566879371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0063117933566879371==--
