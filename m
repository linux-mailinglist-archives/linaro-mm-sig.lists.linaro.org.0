Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9898D91A111
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jun 2024 10:04:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D0B5447D5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jun 2024 08:04:09 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id 45A4040D50
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jun 2024 08:04:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=PaH9itTf;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.128.50) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-424a4bc95f3so2841745e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jun 2024 01:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1719475445; x=1720080245; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=n+IdGag1xe1BMKJMq7pfKjIq2jw1ZlKemz6IVZI0gD4=;
        b=PaH9itTfHArphLKxSofvtrKtLBIFiKzpgm/kHmuiD7qtJD0A81b6nbIgfbQ4w0gK0q
         K1nRQxEHkH9Jo+oSj7dUP5niCr7KDr0wguob7zPUYcIieOEPgnD5eqiCKxcuJqUmv/ka
         gI5vVa4wY2D41PVKo1bZaTIU3M9nJoP+6Dm18=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719475445; x=1720080245;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n+IdGag1xe1BMKJMq7pfKjIq2jw1ZlKemz6IVZI0gD4=;
        b=efkqR0AkQfL01XgH+N+63VoAotph+tZyncp29RqL7X9p6qnxTqMOqXYX0xP8U3PZ/g
         VpNtAmNufrMDEdNZW5bPEggmLy27BzWAhgvygzN2VNIHnLlwuQhWV42ueGBn0pghBX/n
         Fi5nckIMhrIotJegDz2VdwIixzzJea8KwnPzDktivkDsAgcX/ceQA0UjOnyShUCEQj/c
         +aDpd3j0X7FzM+sPpYFewjCg0b3z3hMtjV5xW77rf17vx9TwN6mk1fpMoPawF/N/S0fz
         WlZ2dJW+vrC+tmaVK7HP0nTXMDsWe7JfGQyWa0LprV78Ex0XHr9ghXAbd4rkFVkx09Qy
         K2NQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFN415Cpuc4u+norFFoocY/+kfohnw9ou69jevcMYw+fX5ZPR+jlb0MRD8mx4N3fFZXJoH2MaLweY0rW2jYpI3OnBCOsrmn9H25iIXX/A=
X-Gm-Message-State: AOJu0YzqpBwS6jdOwOvU2GX/bHKHeu8l3wOxk8oVau8d+QqitfCfN6lR
	p1lJTBhbnBCLXlvdNR+lceOJVVMwjOFgVAOwH355L7sqdfF/hxhzsY8EwBe4QNMvGn8IDu9EP4V
	eqzE=
X-Google-Smtp-Source: AGHT+IE1n0Y1MwbvMcqCsmpPYnU8/CZIyd+9tmN/ShVyTNxdSfkO75uhIaa/IK9JW1siEZaF4VJeWA==
X-Received: by 2002:a05:6000:2a7:b0:366:eb60:bd12 with SMTP id ffacd0b85a97d-366eb60beb4mr8667886f8f.3.1719475445126;
        Thu, 27 Jun 2024 01:04:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3674357fdbcsm1034489f8f.32.2024.06.27.01.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 01:04:04 -0700 (PDT)
Date: Thu, 27 Jun 2024 10:04:02 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <Zn0c8l-yQih3j0NE@phenom.ffwll.local>
References: <40611e5ff8c32b99e7863293a0baac078f323d8f.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <40611e5ff8c32b99e7863293a0baac078f323d8f.camel@linux.intel.com>
X-Operating-System: Linux phenom 6.8.9-amd64 
X-Rspamd-Queue-Id: 45A4040D50
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.50:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TP2EXB3R44CGH5I7LKFRV3DIZ3LT7XU4
X-Message-ID-Hash: TP2EXB3R44CGH5I7LKFRV3DIZ3LT7XU4
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: dma_buf_detach lockdep splat
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TP2EXB3R44CGH5I7LKFRV3DIZ3LT7XU4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2024 at 05:58:02PM +0200, Thomas Hellstr=F6m wrote:
> Hi!
>=20
> I'm seeing the below lockdep splat 1) with the xe driver in an imported
> dma-buf object destruction path.
>=20
> It's not because we hold the dma_resv lock at that point, but rather
> because we hold *another* dma_resv lock at that point, and the dma_resv
> detach happens when the object is idle, in this case it was idle at the
> final put(), and dma_buf_detach() is called in the putting process.
>=20
> Holding another dma-buf lock might happen as part of
> drm_exec_unlock_all, or simply if the wider vm dma_resv was held at
> object put time, so it's not an uncommon pattern, even if the drm_exec
> instance can be fixed by putting all bos after unlocking them all.
>=20
> Two solutions coming to mind here:
>=20
> 1) Provide a dma_buf_detach_locked()

This smells way too much like the endless headaches we had with
drm_gem_object_put_locked and friends against drm_device.struct_mutex. Or
I'm not understanding what you're doing, because I'm pretty sure you have
to take the dma_resv lock on final put() of imported objects. Because that
final put() is of the import wrapper, the exporter (and other importers)
can still get at that object and so dma_resv_lock is very much needed.

Or it's a completely different final put(), but I have no idea how you get
that on an imported dma_buf.

> 2) Have TTM always take the delayed delete path for imported dma-buf
> objects.
>=20
> I'd prefer 1) since I think the correct place to call this is in the
> TTM callback delete_mem_notify() where the bo is already locked, and I
> figure non-TTM gem backends may come to suffer from the same problem.
>=20
> Opinions, suggestions?

Imo 2) or trying to push the object puts outside of the dma_resv_lock. The
latter is imo natural, since usually you grab references, then lock. And
this even holds for at least the slow path of lru eviction, because you
need to drop all locks and then do a ww_mutex_lock_slow, and that requires
that you can hold references to unlocked objects.

But 2) alone is imo fine, dma_buf have become really big objects that go
across drivers, extremely similar to struct file, and that is doing the
delayed final put unconditionally since years too, using task_work. It's
simply a solid design.

Cheers, Sima

> [1]
> [   99.136161] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> [   99.136162] WARNING: possible recursive locking detected
> [   99.136163] 6.10.0-rc2+ #6 Tainted: G     U           =20
> [   99.136165] --------------------------------------------
> [   99.136166] glxgears:sh0/4675 is trying to acquire lock:
> [   99.136167] ffff9967dcdd91a8 (reservation_ww_class_mutex){+.+.}-
> {3:3}, at: dma_buf_detach+0x3b/0xf0
> [   99.136184]=20
>                but task is already holding lock:
> [   99.136186] ffff9967d8c145a8 (reservation_ww_class_mutex){+.+.}-
> {3:3}, at: drm_exec_lock_obj+0x49/0x2b0 [drm_exec]
> [   99.136191]=20
>                other info that might help us debug this:
> [   99.136192]  Possible unsafe locking scenario:
>=20
> [   99.136194]        CPU0
> [   99.136194]        ----
> [   99.136195]   lock(reservation_ww_class_mutex);
> [   99.136197]   lock(reservation_ww_class_mutex);
> [   99.136199]=20
>                 *** DEADLOCK ***
>=20
> [   99.136199]  May be due to missing lock nesting notation
>=20
> [   99.136200] 5 locks held by glxgears:sh0/4675:
> [   99.136202]  #0: ffff9967d8c104c8 (&xef->vm.lock){+.+.}-{3:3}, at:
> xe_file_close+0xde/0x1c0 [xe]
> [   99.136272]  #1: ffff9967d5bb7480 (&vm->lock){++++}-{3:3}, at:
> xe_vm_close_and_put+0x161/0x9b0 [xe]
> [   99.136350]  #2: ffff9967ef88a970 (&val->lock){.+.+}-{3:3}, at:
> xe_validation_ctx_init+0x6d/0x70 [xe]
> [   99.136440]  #3: ffffbd6a085577b8
> (reservation_ww_class_acquire){+.+.}-{0:0}, at:
> xe_vma_destroy_unlocked+0x7f/0xe0 [xe]
> [   99.136546]  #4: ffff9967d8c145a8
> (reservation_ww_class_mutex){+.+.}-{3:3}, at:
> drm_exec_lock_obj+0x49/0x2b0 [drm_exec]
> [   99.136552]=20
>                stack backtrace:
> [   99.136553] CPU: 10 PID: 4675 Comm: glxgears:sh0 Tainted: G     U =20
> 6.10.0-rc2+ #6
> [   99.136555] Hardware name: ASUS System Product Name/PRIME B560M-A
> AC, BIOS 2001 02/01/2023
> [   99.136557] Call Trace:
> [   99.136558]  <TASK>
> [   99.136560]  dump_stack_lvl+0x77/0xb0
> [   99.136564]  __lock_acquire+0x1232/0x2160
> [   99.136569]  lock_acquire+0xcb/0x2d0
> [   99.136570]  ? dma_buf_detach+0x3b/0xf0
> [   99.136574]  ? __lock_acquire+0x417/0x2160
> [   99.136577]  __ww_mutex_lock.constprop.0+0xd0/0x13b0
> [   99.136580]  ? dma_buf_detach+0x3b/0xf0
> [   99.136584]  ? dma_buf_detach+0x3b/0xf0
> [   99.136588]  ? ww_mutex_lock+0x2b/0x90
> [   99.136590]  ww_mutex_lock+0x2b/0x90
> [   99.136592]  dma_buf_detach+0x3b/0xf0
> [   99.136595]  drm_prime_gem_destroy+0x2f/0x40 [drm]
> [   99.136638]  xe_ttm_bo_destroy+0x32/0x220 [xe]
> [   99.136734]  ? __mutex_unlock_slowpath+0x3a/0x290
> [   99.136738]  drm_exec_unlock_all+0xa1/0xd0 [drm_exec]
> [   99.136741]  drm_exec_fini+0x12/0xb0 [drm_exec]
> [   99.136743]  xe_validation_ctx_fini+0x15/0x40 [xe]
> [   99.136848]  xe_vma_destroy_unlocked+0xb1/0xe0 [xe]
> [   99.136954]  xe_vm_close_and_put+0x41a/0x9b0 [xe]
> [   99.137056]  ? xa_find+0xe3/0x1e0
> [   99.137060]  xe_file_close+0x10a/0x1c0 [xe]
> [   99.137157]  drm_file_free+0x22a/0x280 [drm]
> [   99.137193]  drm_release_noglobal+0x22/0x70 [drm]
> [   99.137227]  __fput+0xf1/0x2d0
> [   99.137231]  task_work_run+0x59/0x90
> [   99.137235]  do_exit+0x330/0xb40
> [   99.137238]  do_group_exit+0x36/0xa0
> [   99.137241]  get_signal+0xbd2/0xbe0
> [   99.137245]  arch_do_signal_or_restart+0x3e/0x240
> [   99.137249]  syscall_exit_to_user_mode+0x1e7/0x290
> [   99.137252]  do_syscall_64+0xa1/0x180
> [   99.137255]  ? _raw_spin_unlock+0x23/0x40
> [   99.137257]  ? look_up_lock_class+0x6f/0x120
> [   99.137261]  ? __lock_acquire+0x417/0x2160
> [   99.137264]  ? lock_acquire+0xcb/0x2d0
> [   99.137266]  ? __set_task_comm+0x28/0x1e0
> [   99.137268]  ? find_held_lock+0x2b/0x80
> [   99.137271]  ? __set_task_comm+0xe1/0x1e0
> [   99.137273]  ? lock_release+0xca/0x290
> [   99.137277]  ? __do_sys_prctl+0x245/0xab0
> [   99.137279]  ? lockdep_hardirqs_on_prepare+0xde/0x190
> [   99.137281]  ? syscall_exit_to_user_mode+0xb0/0x290
> [   99.137284]  ? do_syscall_64+0xa1/0x180
> [   99.137286]  ? cpuset_cpus_allowed+0x36/0x140
> [   99.137289]  ? find_held_lock+0x2b/0x80
> [   99.137291]  ? find_held_lock+0x2b/0x80
> [   99.137294]  ? __sched_setaffinity+0x78/0x240
> [   99.137297]  ? kfree+0xe2/0x310
> [   99.137301]  ? kfree+0x202/0x310
> [   99.137303]  ? __sched_setaffinity+0x78/0x240
> [   99.137305]  ? __x64_sys_sched_setaffinity+0x69/0xb0
> [   99.137307]  ? kfree+0xe2/0x310
> [   99.137310]  ? lockdep_hardirqs_on_prepare+0xde/0x190
> [   99.137312]  ? syscall_exit_to_user_mode+0xb0/0x290
> [   99.137315]  ? do_syscall_64+0xa1/0x180
> [   99.137317]  ? trace_hardirqs_off+0x4b/0xc0
> [   99.137321]  ? clear_bhb_loop+0x45/0xa0
> [   99.137325]  ? clear_bhb_loop+0x45/0xa0
> [   99.137327]  ? clear_bhb_loop+0x45/0xa0
> [   99.137330]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [   99.137333] RIP: 0033:0x7fda70ee6169
> [   99.137351] Code: Unable to access opcode bytes at 0x7fda70ee613f.
> [   99.137352] RSP: 002b:00007fda5fdffc80 EFLAGS: 00000246 ORIG_RAX:
> 00000000000000ca
> [   99.137354] RAX: fffffffffffffe00 RBX: 0000000000000000 RCX:
> 00007fda70ee6169
> [   99.137356] RDX: 0000000000000000 RSI: 0000000000000189 RDI:
> 0000564a96f45b30
> [   99.137358] RBP: 00007fda5fdffcb0 R08: 0000000000000000 R09:
> 00000000ffffffff
> [   99.137359] R10: 0000000000000000 R11: 0000000000000246 R12:
> 0000000000000000
> [   99.137360] R13: 0000000000000000 R14: 0000000000000000 R15:
> 0000564a96f45b30
> [   99.137365]  </TASK>
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
