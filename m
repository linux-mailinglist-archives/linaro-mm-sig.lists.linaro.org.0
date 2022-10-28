Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FAC610AEF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 09:02:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37E293F59E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 07:02:49 +0000 (UTC)
Received: from smtp-out-07.comm2000.it (smtp-out-07.comm2000.it [212.97.32.77])
	by lists.linaro.org (Postfix) with ESMTPS id 3F3E83F4D7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 07:02:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailserver.it header.s=mailsrv header.b=hVVEVLFX;
	spf=none (lists.linaro.org: domain of francesco@dolcini.it has no SPF policy when checking 212.97.32.77) smtp.mailfrom=francesco@dolcini.it;
	dmarc=none
Received: from francesco-nb.int.toradex.com (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: francesco@dolcini.it)
	by smtp-out-07.comm2000.it (Postfix) with ESMTPSA id A22183C5EB4;
	Fri, 28 Oct 2022 09:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
	s=mailsrv; t=1666940550;
	bh=lQ4N2jZr9hH7PT3M0QTKHRgyOTKxYsUa8t9J2223fqA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hVVEVLFXcD8oMZ42lhd4lEMhG0bN5bsP/U+7LUfMEl7Jejpaq0HTOeBaFfSfVEkAp
	 ZgnWskN0ltqZwPh5/TBGwpdLd57M9DLa11pivIbL4KKkIl0+CfjOU2YUGuy7ZGoUVZ
	 /zovVL0HQmOB5v/PxQzl9g7m+Pdvh50k0CFB6tvT9OUDISo6L/aY4giM2jRdjVq1S5
	 XWXa70pZAgMEYNcfSiOu+0pVDHKzbc07OBJxOdMr3pHH7ReZElXvGSsYum7C8O4u8n
	 AOq4oN5+5RcvbgdHWFtuU6tB7LriOiRv7AqEFGmkDfvaJS6adqGWXeYslEXNhdgSsG
	 FoYb2gpU0tn6w==
Date: Fri, 28 Oct 2022 09:02:10 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: etnaviv@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	dri-devel@lists.freedesktop.org
Message-ID: <Y1t+cn8hjxCxyMON@francesco-nb.int.toradex.com>
References: <Y1Ar4wnv4zeh9Bmw@francesco-nb.int.toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y1Ar4wnv4zeh9Bmw@francesco-nb.int.toradex.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 3F3E83F4D7
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[mailserver.it:s=mailsrv];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_ALL(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:5602, ipnet:212.97.32.0/19, country:IT];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[dolcini.it,pengutronix.de,armlinux.org.uk,gmail.com];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[dolcini.it];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[mailserver.it:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[etnaviv];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: DKJ7ZWH4B67WYRJM56MV5MO3XEVK2FJE
X-Message-ID-Hash: DKJ7ZWH4B67WYRJM56MV5MO3XEVK2FJE
X-MailFrom: francesco@dolcini.it
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Francesco Dolcini <francesco@dolcini.it>, Russell King <linux+etnaviv@armlinux.org.uk>, Christian Gmeiner <christian.gmeiner@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: etnaviv OOPS, NULL pointer dereference on Linux 6.0.2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DKJ7ZWH4B67WYRJM56MV5MO3XEVK2FJE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Oct 19, 2022 at 06:54:59PM +0200, Francesco Dolcini wrote:
> Hello all,
> I got the following Oops, on a Apalis iMX6 Dual with 512MB RAM,
> running glmark2 tests with the system under memory pressure (OOM
> Killer!).
> 
> It's not something systematic and I cannot tell if this is a regression
> or not, any suggestion? The system just froze afterward.

> 
> [  480.994256] Out of memory: Killed process 1740 (Qt5_CinematicEx) total-vm:242656kB, anon-rss:105212kB, file-rss:9864kB, shmem-rss:1304kB, UID:0 pgtables:192kB oom_score_adj:0
> [  481.068691] 8<--- cut here ---
> [  481.072037] Unable to handle kernel NULL pointer dereference at virtual address 00000004
> [  481.080366] [00000004] *pgd=00000000
> [  481.083994] Internal error: Oops: 805 [#1] SMP ARM
> [  481.088813] Modules linked in: 8021q imx_sdma virt_dma coda_vpu v4l2_jpeg imx_vdoa dw_hdmi_ahb_audio fuse
> [  481.098458] CPU: 1 PID: 1755 Comm: QSGRenderThread Not tainted 6.0.2-6.1.0-devel+git.dab08f7eecdf #1
> [  481.107619] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
> [  481.114157] PC is at etnaviv_gem_free_object+0x40/0x128
> [  481.119412] LR is at lock_is_held_type+0xa4/0x15c

Just hit another OOPS in etnaviv/DRM, but in another function (FWIW kernel
6.0.5 now). Unfortunately I have no systematic reproducer for this
either.

[  127.887596] Out of memory: Killed process 1358 (weston) total-vm:57820kB, anon-rss:11228kB, file-rss:1836kB, shmem-rss:16456kB, UID:0 pgtables:60kB oom_score_adj:0
[  127.985396] 8<--- cut here ---
[  127.988856] Unable to handle kernel NULL pointer dereference at virtual address 00000054
[  127.997042] [00000054] *pgd=00000000
[  128.000660] Internal error: Oops: 5 [#1] SMP ARM
[  128.005290] Modules linked in: 8021q cfg80211 imx_sdma virt_dma coda_vpu v4l2_jpeg imx_vdoa dw_hdmi_ahb_audio fuse
[  128.015690] CPU: 1 PID: 1358 Comm: weston Not tainted 6.0.5-6.1.0-devel+git.3829606fc5df #1
[  128.024056] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
[  128.030591] PC is at drm_sched_job_cleanup+0x1c/0x13c
[  128.035663] LR is at etnaviv_ioctl_gem_submit+0x9ac/0x1364
[  128.041164] pc : [<c07716c0>]    lr : [<c0785334>]    psr: a00d0013
[  128.047438] sp : e0f69d78  ip : 00000003  fp : fffffff4
[  128.052670] r10: c2d07000  r9 : dd581a00  r8 : c1bf2298
[  128.057901] r7 : dd581a00  r6 : c2d07000  r5 : c37fe500  r4 : e0f69e6c
[  128.064435] r3 : 7ff302d8  r2 : 7ff302d8  r1 : 00000000  r0 : 00000000
[  128.070970] Flags: NzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
[  128.078115] Control: 10c5387d  Table: 1337404a  DAC: 00000051
[  128.083866] Register r0 information: NULL pointer
[  128.088585] Register r1 information: NULL pointer
[  128.093300] Register r2 information: non-paged memory
[  128.098361] Register r3 information: non-paged memory
[  128.103422] Register r4 information: 2-page vmalloc region starting at 0xe0f68000 allocated at kernel_clone+0x50/0x40c
[  128.114167] Register r5 information: slab kmalloc-128 start c37fe500 pointer offset 0 size 128
[  128.122826] Register r6 information: slab task_struct start c2d07000 pointer offset 0
[  128.130706] Register r7 information: slab kmalloc-512 start dd581a00 pointer offset 0 size 512
[  128.139357] Register r8 information: non-slab/vmalloc memory
[  128.145039] Register r9 information: slab kmalloc-512 start dd581a00 pointer offset 0 size 512
[  128.153733] Register r10 information: slab task_struct start c2d07000 pointer offset 0
[  128.161683] Register r11 information: non-paged memory
[  128.166845] Register r12 information: non-paged memory
[  128.172007] Process weston (pid: 1358, stack limit = 0x9a050b52)
[  128.178036] Stack: (0xe0f69d78 to 0xe0f6a000)
[  128.182405] 9d60:                                                       c1bf2298 7ff302d8
[  128.190592] 9d80: 00000cc0 e0f69e6c c37fe500 00000010 c2aff800 c0785334 0000000a 00000000
[  128.198783] 9da0: c0721238 00000000 c308b600 00000010 c37fe500 e0f69e6c 00000005 00000001
[  128.206972] 9dc0: 00000028 c3467078 00000010 c37fe500 c25e0380 e0f69e6c c25f8000 c2d07000
[  128.215158] 9de0: 00000aab 00000005 00010000 00000001 c156b860 00000000 c156b864 c1a4c018
[  128.223345] 9e00: 00000000 c119fe5c c3000000 00000001 00000007 7ff302d8 00000000 c0486446
[  128.231531] 9e20: 00000048 c2d07000 00000048 c0e87b40 e0f69e6c c3467000 00000048 c0721238
[  128.239717] 9e40: 0000e280 00000001 c1197448 c2d07000 be9d0fb0 e0f69e6c 00000046 c37f0c80
[  128.247903] 9e60: c0784988 00000051 00000000 00000000 00000000 00000000 00000005 0000000a
[  128.256089] 9e80: 000005b8 01fd0bf8 00000000 01fd0a10 00000000 01b72868 00000000 00000004
[  128.264274] 9ea0: 00000000 00000000 00000000 00000000 00000000 7ff302d8 00000013 00004000
[  128.272460] 9ec0: c2d07000 c2d22dc0 00000001 c37f0c80 00000005 c0351d6c 00000000 00000000
[  128.280651] 9ee0: c0351c6c 00000000 00000000 7ff302d8 be9d0fb0 c0486446 c37f0c81 c0100080
[  128.288840] 9f00: be9d0fb0 c2d07000 c37f0c80 c25a8710 00000013 c0342ab0 00000000 c2d07000
[  128.297026] 9f20: e0f69fb0 c022e258 c2d07000 e0f69fb0 00000000 c01002b4 c01002b4 c010b924
[  128.305212] 9f40: c03511c4 c136055c 60070013 c01936d0 00000028 c2d22dc0 c3972b00 00000001
[  128.313413] 9f60: 00000000 7ff302d8 c2d07000 c15e4ea0 01fd1d98 c2d07000 c136629c 7ff302d8
[  128.321616] 9f80: b6e9048c 01b72380 be9d0fb0 c0486446 00000036 c01002b4 c2d07000 00000036
[  128.329821] 9fa0: 00000000 c0100080 01b72380 be9d0fb0 00000013 c0486446 be9d0fb0 be9d0f78
[  128.338020] 9fc0: 01b72380 be9d0fb0 c0486446 00000036 be9d1028 be9d0fb0 01b176e8 00000000
[  128.346220] 9fe0: 00000036 be9d0f60 b6ec8089 b6e41ae6 00070030 00000013 00000000 00000000
[  128.354428]  drm_sched_job_cleanup from etnaviv_ioctl_gem_submit+0x9ac/0x1364
[  128.361611]  etnaviv_ioctl_gem_submit from drm_ioctl+0x1e8/0x3a0
[  128.367660]  drm_ioctl from sys_ioctl+0x530/0xdbc
[  128.372409]  sys_ioctl from ret_fast_syscall+0x0/0x1c
[  128.377504] Exception stack(0xe0f69fa8 to 0xe0f69ff0)
[  128.382585] 9fa0:                   01b72380 be9d0fb0 00000013 c0486446 be9d0fb0 be9d0f78
[  128.390775] 9fc0: 01b72380 be9d0fb0 c0486446 00000036 be9d1028 be9d0fb0 01b176e8 00000000
[  128.398979] 9fe0: 00000036 be9d0f60 b6ec8089 b6e41ae6
[  128.404053] Code: e24dd00c ee1d6f70 e5963530 e58d3004 (e5903054)
[  128.410383] ---[ end trace 0000000000000000 ]---


Francesco
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
