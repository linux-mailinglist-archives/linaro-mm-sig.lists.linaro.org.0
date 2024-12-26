Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FE99FC8C2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Dec 2024 06:59:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBF95448DB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Dec 2024 05:59:40 +0000 (UTC)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	by lists.linaro.org (Postfix) with ESMTPS id BC1823F32D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Dec 2024 05:59:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=xvqLhvGB;
	spf=pass (lists.linaro.org: domain of sumit.garg@linaro.org designates 209.85.222.42 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-85c5adbca8eso1254142241.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Dec 2024 21:59:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735192774; x=1735797574; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tj/33c0J9joYWGIFk0SUpBommdcWsbOtMfpln3ym7us=;
        b=xvqLhvGBCSY6ABy0kigeJyoEQBsUP40wLTrTn3xCHMGucBWw4PFmXiGM1HqzX8paGJ
         eMKWGMtJ20whi9O0Q0eQkK+Xrq1gp8WldEePpFz2N7+VS+nqyriJQRi8vn/mjRyQFEkR
         0EtP6g/O1uZ6J3Q9x5vSjBGFZHj4bml+KlZDQNmJYiHGocm2LJ/+YtB73G9ExjZpYL55
         zDHqRLIw9oq253QBRBvT7fGAEd7vqtZ024JlP6xcZltSitVcsdWuZ3lSF6DG4weqHzuO
         LFv8lY2aU2jxEj5vLJQ2RA1mdGUy5Z017yJdFrAp5jp5ZRvPCFX9XgoSkJ9tcYELh9Yz
         txJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735192774; x=1735797574;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tj/33c0J9joYWGIFk0SUpBommdcWsbOtMfpln3ym7us=;
        b=pzc5ylhQLcOgnMf1mula7h2ZuPgxXBZMvKGszA6JrNSQHnvwFJFvSE6mWXVUxgnbJn
         Cje9A1m+o5LNVpXqm6UUmzAeAf+7hcgSvaLe7FJVVkHbr1Tpd4o98SP04H5KfnrmVaWC
         RP0GftS7Q+eSttgqkjQX+vfQG7A0wGKSqsYWOCUYUHe1E+VBdnNNKzbxWUyadOB6GE6I
         8KR6+guwIrniBYHGq2QMln8Bbxf+WfjSPegxIHetMhGGjzZHUNqontS0FNwsXnH1nRe7
         WS5HAMwTLDDDbLZ3iBtqEGXG9lBXQlRb8EB+XQRdEUlhdKM1x0dfU5fhr/LQRkYwBGBj
         TetQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNAfMr+ck7wpNGKQIXcvOTvq/tFSjJmnLXUwXxTfvPjE5Nq9aZxnG5PJRZs4i1HoIqWJWHElspY/3RaqEd@lists.linaro.org
X-Gm-Message-State: AOJu0YzbjNN6E+7BXwxxW3q69GkIQTGbEpfMyFSY4HgQetwNBtQizh9A
	q9eLXQGGGkYPEFhbQXlId29VpKGJvPzczOsUW07zJPbu/nQeqfgmkvtPVS6FsfaoylsSdzUlrS8
	YqD84/9l1Gt808gFqIkh7WZYye26YtIgclibOPHT3
X-Gm-Gg: ASbGncv7dQqEop0SYX+hVeJuXClFY2oTCyq9WQeQZDSnMwxTGEcLtyNjCZIvPG5a6dt
	bGSTeuykiYQDncG1EWOLTjRgz51heQHpSC+X0yh8=
X-Google-Smtp-Source: AGHT+IE00N5vnKOUc7MqeRMXg+SxsijMu6w8qky0ELkHlxmHmPLT1blVC7fcWxjQJ3Y0TOTnD9UaTmwXTcjzXGMlnJk=
X-Received: by 2002:a05:6102:3ec6:b0:4af:bf45:39a8 with SMTP id
 ada2fe7eead31-4b2cc3a793dmr19596749137.16.1735192774291; Wed, 25 Dec 2024
 21:59:34 -0800 (PST)
MIME-Version: 1.0
References: <20241217100809.3962439-1-jens.wiklander@linaro.org>
 <Z2KsuAs-Dd4ZDaXR@phenom.ffwll.local> <CAFA6WYNVHu7_-bNAuTYBRBdoJwfk2VrW5M4aFVkb_UWQ=uxTvQ@mail.gmail.com>
 <Z2p-v-xjhzhPso6u@wunner.de>
In-Reply-To: <Z2p-v-xjhzhPso6u@wunner.de>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 26 Dec 2024 11:29:23 +0530
Message-ID: <CAFA6WYMEjT5EAG3AL8NpbET6L=M86LBgnhLnWirvDZg9cUUiuA@mail.gmail.com>
To: Lukas Wunner <lukas@wunner.de>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BC1823F32D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[ffwll.ch,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.42:from];
	TAGGED_RCPT(0.00)[];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.222.42:from];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: A6RXEVV25HN4J5MXZ5WULJCFRPSENQUY
X-Message-ID-Hash: A6RXEVV25HN4J5MXZ5WULJCFRPSENQUY
X-MailFrom: sumit.garg@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: simona.vetter@ffwll.ch, Jens Wiklander <jens.wiklander@linaro.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A6RXEVV25HN4J5MXZ5WULJCFRPSENQUY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Lukas,

On Tue, 24 Dec 2024 at 14:58, Lukas Wunner <lukas@wunner.de> wrote:
>
> On Tue, Dec 24, 2024 at 12:05:19PM +0530, Sumit Garg wrote:
> > Restricted memory is a feature enforced by hardware specific firewalls
> > where a particular TEE implementation governs which particular block
> > of memory is accessible to a particular peripheral or a CPU running in
> > a higher privileged mode than the Linux kernel.
> [...]
> > - Another possible use-case can be for the TEE implementation to store
> > key material in a restricted buffer which is only accessible to the
> > hardware crypto accelerator.
>
> Just a heads-up:
>
> For RSA sign/verify operations using rsassa-pkcs1 encoding,
> the message to be signed/verified (which I understand could
> be located in restricted memory) is prepended by a padding.
>
> The crypto subsystem does the prepending of the padding in software.
> The actual signature generation/verification (which is an RSA encrypt
> or decrypt operation) may be performed in hardware by a crypto
> accelerator.
>
> Before commit 8552cb04e083 ("crypto: rsassa-pkcs1 - Copy source
> data for SG list"), the kernel constructed a scatterlist
> consisting of the padding on the one hand, and of the message
> to be signed/verified on the other hand.  I believe this worked
> for use cases where the message is located in restricted memory.
>
> However since that commit, the kernel kmalloc's a new buffer and
> copies the message to be signed/verified into it.  The argument
> was that although the *kernel* may be able to access the data,
> the crypto accelerator may *not* be able to do so.  In particular,
> portions of the padding are located in the kernel's .rodata section
> which is a valid virtual address on x86 but not on arm64 and
> which may be inaccessible to a crypto accelerator.
>
> However in the case of restricted memory, the situation is exactly
> the opposite:  The kernel may *not* be able to access the data,
> but the crypto accelerator can access it just fine.
>
> I did raise a concern about this to the maintainer, but to no avail:
> https://lore.kernel.org/r/Z1Kym1-9ka8kGHrM@wunner.de/

Herbert's point is valid that there isn't any point for mapping
restricted memory in the kernel virtual address space as any kernel
access to that space can lead to platform specific hardware error
scenarios. And for that reason we simply disallow dma_buf_mmap() and
don't support dma_buf_vmap() for DMA-bufs holding TEE restricted
memory. The only consumers for those DMA-bufs will be the DMA capable
peripherals granted access permissions by the TEE implementation. IOW,
kernel role here will be to just provide the DMA-buf infrastructure
for buffers to be set up by TEE and then setting up DMA addresses for
peripherals to access them. The hardware crypto accelerator can be one
such peripheral.

>
> This is the alternative solution I would have preferred:
> https://lore.kernel.org/r/3de5d373c86dcaa5abc36f501c1398c4fbf05f2f.1732865109.git.lukas@wunner.de/
>
> > I am also in favour of end to end open source use-cases. But I fear
> > without progressing in a step wise manner as with this proposal we
> > would rather force developers to upstream all the software pieces in
> > one go which will be kind of a chicken and egg situation. I am sure
> > once this feature lands Mediatek folks will be interested to port
> > their secure video playback patchset [3] on top of it. Similarly other
> > silicon vendors like NXP, Qcom etc. will be motivated to do the same.
>
> The crypto use case may be easier to bring up than the video decoding
> use case because you don't need to implement a huge amount of
> user space code.

Agree, if you already have such an existing hardware use-case then
please feel free to build up on this patch-set.

-Sumit

>
> Thanks,
>
> Lukas
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
