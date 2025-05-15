Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E348AB8E71
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 15 May 2025 20:05:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B7D7945952
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 15 May 2025 18:05:09 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by lists.linaro.org (Postfix) with ESMTPS id E1917446D4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 15 May 2025 18:04:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fooishbar.org header.s=google header.b=Gx+bJSnk;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of daniel@fooishbar.org designates 209.85.160.170 as permitted sender) smtp.mailfrom=daniel@fooishbar.org
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-4769f3e19a9so9381051cf.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 15 May 2025 11:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1747332295; x=1747937095; darn=lists.linaro.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SqENoL4aMLDUtpJ6J41zIxw9AQzbwBrm9u1/bZHdjuY=;
        b=Gx+bJSnkoE2vbIpXcrajqbSh3QRmMK9zltQCWBU4tLDpuJ7t+asMAYEn2FYMfZMkBm
         WCe/H2K+3HSBdStO/4Ru6NSU17PJnxyT3kcStj/ruieh7yIrVM75e3OoFn2vK99uHAd7
         j9KxImdRiuDu2I0Vmnbz0ck9UL3QfEQ4OEiDfknDzLJAM+XX0dhz3lKmJ9NJlkDCbraV
         BfeBikNA69dQtQOHRCjjHjFK1Ysaksl1T0a2v5gS/TPQ6ZyPhMXk9FSlKc1QpLP25EYi
         RTagrUhrItcZKa/FrB+3t5e0yZp9XDInzkrV3hGb5DjJt6CYCH1XEJFy0EfirpQcgkRW
         VhkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747332295; x=1747937095;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SqENoL4aMLDUtpJ6J41zIxw9AQzbwBrm9u1/bZHdjuY=;
        b=MZPIDK7WSjgYW28mf81MyoKvQvtOSvNdm6gI7TPdQR/jmk8Z6GDvctXk9smTGnwW4K
         KgVV9+ZkWKA6LJCyhNdBLvmZ6llH4IwOLEBi05IceqGqAa+psdTUdn2E3rTaaX8GyfDW
         nN7EAGxMgbz7odzkWJWUGPyJJB6zy9RVG8D+aR5awD2JokfyVcGkT3gJpAZmry4/9Iio
         b+FAqAlZ344waW1cHaS0hWQiJa/YSSc8/XsPwtbIXVSUHVRDu/A9rfQEJsZFL6DScp5d
         CMpEbEMCRWk8OTt5SZ4BtOIaqOHm4o6h53LWpk7Rr26IRRLjvp9h2ax4u/f3oPNf9jCG
         gw5w==
X-Forwarded-Encrypted: i=1; AJvYcCXkK82C2YkMa59MXiUxKsaw5QEseGuDeY2SNoySqlTAs8A3e0m8a5Zz9t1Rn/CEHBTlNLv82Jh+qmWhWGi/@lists.linaro.org
X-Gm-Message-State: AOJu0YyyM330KF9FehnfDrJoZxndV4oUPvPVWKLs4hoiPD+l92dcyE9U
	uu/RLflMSgXqYgGUumPTGFUsju3Uye3IpzGGHU8Z2svly6ewxR0w5H5DaEjkKQ0ACr8aR7NkMYu
	Y70kEy+K9v0/g6A78sAGLNvuJksmkZcXxsrKDd8c/cQ==
X-Gm-Gg: ASbGnctYaKkGsGsUhxtAmamB8wmPT6hX2Azm7YOdwWLLNUbBKZiGD/PjSSEH0ZLV54w
	ftGtn8XFCQxlKEk28njm93Xch1nk4xedZDpnuHttjtknzmPYSl3P6e0yHo3NWgGngn60hUx/gSY
	umIJw6acg52daQULiQIS3zk++jCFxehB4=
X-Google-Smtp-Source: AGHT+IGFQP++c9XJDNDJpVGCGwvgZpf4fTxFvv688y33OjFyfYfYLK9l//bZATh/43rI6k4OFGCYqhyQBM5SOYRCBtA=
X-Received: by 2002:a05:622a:59ca:b0:476:9b40:c2cd with SMTP id
 d75a77b69052e-494ae49f4e0mr5251951cf.47.1747332295147; Thu, 15 May 2025
 11:04:55 -0700 (PDT)
MIME-Version: 1.0
References: <20250507160713.1363985-1-adrian.larumbe@collabora.com>
 <20250507160713.1363985-4-adrian.larumbe@collabora.com> <9c0b95c8-bf2d-4689-ac1f-ccacba826060@arm.com>
In-Reply-To: <9c0b95c8-bf2d-4689-ac1f-ccacba826060@arm.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 15 May 2025 19:04:44 +0100
X-Gm-Features: AX0GCFuRDimE2NPezlvg51LNRrQrl-sYF337fsjOpF63sMhVPLZez7fPK-61IS0
Message-ID: <CAPj87rOiEa1bTOPqyauYhoVoXEtNeDjE+DkLbzeGVJ1tW9fJcQ@mail.gmail.com>
To: =?UTF-8?Q?Adri=C3=A1n_Larumbe?= <adrian.larumbe@collabora.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
	Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
	Rob Herring <robh@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>,
	"moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E1917446D4
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[fooishbar.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.170:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.160.170:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,vger.kernel.org,lists.freedesktop.org,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linaro.org];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[fooishbar.org];
	DKIM_TRACE(0.00)[fooishbar.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 7E3I664CFQIN55DBAKZ2A5SIAD5JTBP2
X-Message-ID-Hash: 7E3I664CFQIN55DBAKZ2A5SIAD5JTBP2
X-MailFrom: daniel@fooishbar.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/3] drm/panfrost: show device-wide list of DRM GEM objects over DebugFS
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7E3I664CFQIN55DBAKZ2A5SIAD5JTBP2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Steven,

On Thu, 8 May 2025 at 11:42, Steven Price <steven.price@arm.com> wrote:
> I'm also seeing a splat when running this, see below. I haven't got my
> head around how this is happening, but I see it when glmark quits at the
> end of the test.
>
> [  399.505066] Unable to handle kernel NULL pointer dereference at virtual address 00000004 when write
> [...]
> [  399.882216] Call trace:
> [  399.882222]  panfrost_gem_free_object [panfrost] from drm_gem_handle_delete+0x84/0xb0
> [  399.893813]  drm_gem_handle_delete from drm_ioctl+0x2b8/0x4f4
> [  399.900237]  drm_ioctl from sys_ioctl+0x428/0xe30
> [  399.905496]  sys_ioctl from ret_fast_syscall+0x0/0x1c

Soooo. Let's assume it has to actually occur in
panfrost_gem_debugfs_bo_rm(), since that's all that's changed here.

I don't think pfdev can be NULL here, because we've already
dereferenced ptdev and written to a structure member earlier in
panfrost_gem_free_object(). I don't think it can be the debugfs mutex,
because a) that's initialised with the device, and b) wouldn't be
offset 0x4.

I'm looking then at list_del_init(&bo->debugfs.node), which would
effectively execute bo->debugfs.node->next->prev =
bo->debugfs.node->prev. So if bo->debugfs.node->next was NULL, that
would explain a write to 0x4 on 32-bit systems.

What I _can't_ see is how that would be. Even a double-free calls
list_del_init() so we're all good. If the shmem alloc failed then this
would splat because panfrost_gem_debugfs_bo_add() happens too late,
and we end up with an uninitialised list head - so that's one to fix.
But I assume that isn't what happens here. I wonder if it's the import
path, and the panfrost_gem_debugfs_bo_add() call instead needs to be
in the panfrost_gem_create_object() callback rather than only
panfrost_gem_create() which is called through the ioctl?

Cheers,
Daniel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
