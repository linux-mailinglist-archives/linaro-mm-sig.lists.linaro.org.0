Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E24949A204A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Oct 2024 12:46:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 952824121B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Oct 2024 10:46:48 +0000 (UTC)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	by lists.linaro.org (Postfix) with ESMTPS id 67ACB3F532
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Oct 2024 10:46:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=oBKQZCi6;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of sumit.garg@linaro.org designates 209.85.217.46 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-4a47c20b162so224411137.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Oct 2024 03:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729161992; x=1729766792; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5iLc9AQWQ9bPZ9PdWCnYLRDGxR6aVrX6pCcUlaC2gXg=;
        b=oBKQZCi6BMJbZAloeqNXtGVRIS44zKmK0/D0u712MIBxkZzBGfUbF/Bb0Bvf4WLulm
         LTI6CmQZEsvU7f5CwDQYaTl9U5/lb3hBsLpIv3+h+PDpnFF4UytlF/p2XR4V/dPskOXI
         Yev6rJxjbEzKNxQcMzDfOQQcPj6ZzqZp+1heSaENjCes+7eOHg409k+ufRprbZFAAIUR
         s6LHeAPyyuKEActJr4RZdy/2nB0BUQzzZPh1bKTsLvlEpgD0jpNerxt3tRoXjr/BtebX
         frCTSwJAXpanlw5T4f0Kfr/sb2Tg235EId+z/+pQ2bHCQDO2c6c07D7qdJeuPuktux9/
         yNWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729161992; x=1729766792;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5iLc9AQWQ9bPZ9PdWCnYLRDGxR6aVrX6pCcUlaC2gXg=;
        b=k8GsvZCeGCazhsc8QxI/tWFI9e0xFmP6vlziUHWGN7mvlg+HdLUEcLW2kXK8WM6Yd/
         qp7ARkolhPgyLVH+VmJNhEdPEsqS/wRgrklUxhsNQcBTAHYYZQ9LOIOpI2sF47f2ZZLB
         Ih36XE9zQ9dNM0l5k1stPCOMUPGvsMV8E74UUJYpbXVRE+RO2LVpy3cUy+/u/hL1xqtC
         c5c65gbZstt1iCa/NTmxBDg0Lhhb2Csbuf5TfbiEEJl/QZHhlmuwoomhbWSfe6AsMaaS
         kuuxNeWSwzcNJXBIEQ+MTxLAd8M4JK9a/COJyujA9L0ZqNVutoomNPv+czB/GPHcFvzt
         uGMw==
X-Forwarded-Encrypted: i=1; AJvYcCVGZC07LJmnj6jJnsgrHM60PK0uBQV/jcBbPQu7ckhoXHR/F/M8w+URdGIa0N1I3RpVa/DRCLHSof8kJxJJ@lists.linaro.org
X-Gm-Message-State: AOJu0YyRfoExtNfg1sXCf7bvK1WM11+JT0zUrNDigDg9u9gioulBMkFL
	Dm7MxIGVmOGSOr5n/tROxWqLUAULTED7vB/fLcNrro6SNwnzFJkshwQ4t+692RqD85HfvUYJkPx
	8YpA9ap9MKXLu0D42bBZ9r//4jp2wpR+bwKTi4kee
X-Google-Smtp-Source: AGHT+IEhuubEp1XFMcAt1Qdpoup5VxogAcu1pC1JHif0I5jEeCDESB436aTA1yUdhOINM3pMJD6rd6T5GIpOG8DyYOM=
X-Received: by 2002:a05:6102:26c2:b0:4a4:8ef0:25ba with SMTP id
 ada2fe7eead31-4a5b5a3f858mr5284146137.21.1729161991842; Thu, 17 Oct 2024
 03:46:31 -0700 (PDT)
MIME-Version: 1.0
References: <20241015101716.740829-1-jens.wiklander@linaro.org>
In-Reply-To: <20241015101716.740829-1-jens.wiklander@linaro.org>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 17 Oct 2024 16:16:20 +0530
Message-ID: <CAFA6WYOCDf6RqHr7E9nN7DQdoq+ZDwFO=Y0yB+fzit2GwzDkGg@mail.gmail.com>
To: Jens Wiklander <jens.wiklander@linaro.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 67ACB3F532
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.217.46:from];
	TAGGED_RCPT(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: CHMN4XZSTWBKHENBQX4OL2ACCG6RPB4A
X-Message-ID-Hash: CHMN4XZSTWBKHENBQX4OL2ACCG6RPB4A
X-MailFrom: sumit.garg@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2 0/2] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CHMN4XZSTWBKHENBQX4OL2ACCG6RPB4A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Jens,

On Tue, 15 Oct 2024 at 15:47, Jens Wiklander <jens.wiklander@linaro.org> wrote:
>
> Hi,
>
> This patch set allocates the restricted DMA-bufs via the TEE subsystem.
> This a complete rewrite compared to the previous patch set [1], and other
> earlier proposals [2] and [3] with a separate restricted heap.
>
> The TEE subsystem handles the DMA-buf allocations since it is the TEE
> (OP-TEE, AMD-TEE, TS-TEE, or a future QTEE) which sets up the restrictions
> for the memory used for the DMA-bufs.

Thanks for proposing this interface. IMHO, this solution will address
many concerns raised for the prior vendor specific DMA heaps approach
[1] as follows:

1. User-space interacting with the TEE subsystem for restricted memory
allocation makes it obvious that the returned DMA buf can't be
directly mapped by the CPU.

2. All the low level platform details gets abstracted out for
user-space regarding how the platform specific memory restriction
comes into play.

3. User-space doesn't have to deal with holding 2 DMA buffer
references, one after allocation from DMA heap and other for
communication with the TEE subsystem.

4. Allows for better co-ordination with other kernel subsystems
dealing with restricted DMA-bufs.

[1] https://lore.kernel.org/linux-arm-kernel/20240515112308.10171-1-yong.wu@mediatek.com/

>
> I've added a new IOCTL, TEE_IOC_RSTMEM_ALLOC, to allocate the restricted
> DMA-bufs. This new IOCTL reaches the backend TEE driver, allowing it to
> choose how to allocate the restricted physical memory.
>
> TEE_IOC_RSTMEM_ALLOC is quite similar to TEE_IOC_SHM_ALLOC so it's tempting
> to extend TEE_IOC_SHM_ALLOC with two new flags
> TEE_IOC_SHM_FLAG_SECURE_VIDEO and TEE_IOC_SHM_FLAG_SECURE_TRUSTED_UI for
> the same feature. However, it might be a bit confusing since
> TEE_IOC_SHM_ALLOC only returns an anonymous file descriptor, but
> TEE_IOC_SHM_FLAG_SECURE_VIDEO and TEE_IOC_SHM_FLAG_SECURE_TRUSTED_UI would
> return a DMA-buf file descriptor instead. What do others think?

I think it's better to keep it as a separate IOCTL given the primary
objective of buffer allocation and it's usage.

-Sumit

>
> This can be tested on QEMU with the following steps:
> repo init -u https://github.com/jenswi-linaro/manifest.git -m qemu_v8.xml \
>         -b prototype/sdp-v2
> repo sync -j8
> cd build
> make toolchains -j4
> make all -j$(nproc)
> make run-only
> # login and at the prompt:
> xtest --sdp-basic
>
> https://optee.readthedocs.io/en/latest/building/prerequisites.html
> list dependencies needed to build the above.
>
> The tests are pretty basic, mostly checking that a Trusted Application in
> the secure world can access and manipulate the memory. There are also some
> negative tests for out of bounds buffers etc.
>
> Thanks,
> Jens
>
> [1] https://lore.kernel.org/lkml/20240830070351.2855919-1-jens.wiklander@linaro.org/
> [2] https://lore.kernel.org/dri-devel/20240515112308.10171-1-yong.wu@mediatek.com/
> [3] https://lore.kernel.org/lkml/20220805135330.970-1-olivier.masse@nxp.com/
>
> Changes since the V1 RFC:
> * Based on v6.11
> * Complete rewrite, replacing the restricted heap with TEE_IOC_RSTMEM_ALLOC
>
> Changes since Olivier's post [2]:
> * Based on Yong Wu's post [1] where much of dma-buf handling is done in
>   the generic restricted heap
> * Simplifications and cleanup
> * New commit message for "dma-buf: heaps: add Linaro restricted dmabuf heap
>   support"
> * Replaced the word "secure" with "restricted" where applicable
>
> Jens Wiklander (2):
>   tee: add restricted memory allocation
>   optee: support restricted memory allocation
>
>  drivers/tee/Makefile              |   1 +
>  drivers/tee/optee/core.c          |  21 ++++
>  drivers/tee/optee/optee_private.h |   6 +
>  drivers/tee/optee/optee_smc.h     |  35 ++++++
>  drivers/tee/optee/smc_abi.c       |  45 ++++++-
>  drivers/tee/tee_core.c            |  33 ++++-
>  drivers/tee/tee_private.h         |   2 +
>  drivers/tee/tee_rstmem.c          | 200 ++++++++++++++++++++++++++++++
>  drivers/tee/tee_shm.c             |   2 +
>  drivers/tee/tee_shm_pool.c        |  69 ++++++++++-
>  include/linux/tee_core.h          |   6 +
>  include/linux/tee_drv.h           |   9 ++
>  include/uapi/linux/tee.h          |  33 ++++-
>  13 files changed, 455 insertions(+), 7 deletions(-)
>  create mode 100644 drivers/tee/tee_rstmem.c
>
> --
> 2.43.0
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
