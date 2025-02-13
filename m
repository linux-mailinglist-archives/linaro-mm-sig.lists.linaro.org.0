Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3763DA33812
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Feb 2025 07:42:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E6DDB44A26
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Feb 2025 06:42:23 +0000 (UTC)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	by lists.linaro.org (Postfix) with ESMTPS id A53FE40099
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Feb 2025 06:42:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=fy7F1Kqp;
	spf=pass (lists.linaro.org: domain of sumit.garg@linaro.org designates 209.85.217.43 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-4b68cb2abacso131415137.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Feb 2025 22:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739428923; x=1740033723; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oTmB7Ig1eQii2PQt8Vq5KK5KdLNWvxjjdgsBUW1hd1Q=;
        b=fy7F1KqprWRdLxvfHpU8tkv8xnscffM8JFmf7yVvNDMHyh70ful4dPDug+hZFOcC2o
         TxTnjnWteLUjXpwmdez1mkSuvFhZT6cAsaKcgqBe5VJzeV/NgW5Y/Hw3ppNzxiZ0ljRd
         Jvba+Y0f85UdQKl318Ny3cBQeL/OdjP2iESHZxm11z3Asi76sqSOf2D64OCtXdGKWbg2
         JMy6aj20n2fbxwT/X+qgl0U+a1KYY4Q0ZInXXUr7z1hDebwu+dVSUFHJ0Jah5DS5vwXn
         OLRODYJTUBH2AY0YEuvAL659lwItxUEI+CH7IEkh453dJBy7YXiRgOFlgRZCz/5d1VQD
         nbCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739428923; x=1740033723;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oTmB7Ig1eQii2PQt8Vq5KK5KdLNWvxjjdgsBUW1hd1Q=;
        b=RH/XuaLbWwYFc8/se21+aXsEA2okjfhGOe+jd/iN6Wx+56Bb8O4ZlxY+x7OZCUtaf5
         QrtYXU3OtbWwTyR+gJ9wNfXAhgWGgRfGz9zxcpWuSlMypVmN15/eSz1j0FPT6lcSlgZv
         wH6RlqSWkW7fMA3EPx5k8X+adMLNdpH7RM5nVWRy4B16H6ODjOvcWycjypTD1lQFaTsc
         rhe/VjNknRGRY0xDkz7DgYDvvyMFhpe+6hd+P6Ax9JQS4uHThG6O7ClH/LQp6LQRZA/3
         uQvR10/Iu9ZeWK4zetP95ilYUARlzWK7KfpPLBzR1ta8QuF80wLPwWGg+2UmqI4vLASQ
         +CFw==
X-Forwarded-Encrypted: i=1; AJvYcCWvGKIVPf4j/u/XVzeCEwcDqSudidPjRjuXOBs8q3P5MHacQ+w56bBWefq6drGmYVoDEaYL08vCOW+MBjgN@lists.linaro.org
X-Gm-Message-State: AOJu0Yzv503r4Q7qezWsDsfKewKxi1TQocCcHA5hAGelvIbT7V/M6Xxf
	kqUuZFt1chOVCtlw/pN7F96R2NoY2z/HzCj4XCLnepzOtFtN1xSLzD1VD09zltD5QEsYctZdsr8
	wA+zVxnIL8RRG3ZDmBdM2lUwrwMaxcb+GQg07XPtR
X-Gm-Gg: ASbGncuEYFs9hkvcOD+8BO6wC2JJiZUxQU6QKUCuozNpcPfsT0VpQlKURYfeOiT4aV9
	bi+DFcFcaEhjstdvikdqDujJdbN1IRXX348gxF/XOTTkPyiiN5kQfgx6ERk+OkFoLUrqKBBagUq
	U=
X-Google-Smtp-Source: AGHT+IFhSui+oRYa0yiUwlfe4d8Dd+KjfAVoX7QGNMnwQAifah82de3Os5iBk5Pb0QFnrRe9uhZGgxrDA5ujKbbjaVg=
X-Received: by 2002:a05:6102:2c08:b0:4ba:eb24:fb06 with SMTP id
 ada2fe7eead31-4bc03562833mr2668789137.6.1739428923140; Wed, 12 Feb 2025
 22:42:03 -0800 (PST)
MIME-Version: 1.0
References: <20241217100809.3962439-1-jens.wiklander@linaro.org> <20250212205613.4400a888@collabora.com>
In-Reply-To: <20250212205613.4400a888@collabora.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 13 Feb 2025 12:11:52 +0530
X-Gm-Features: AWEUYZkoZwXb13fMynlvth-g3hUZ-u2ftHq4Gn9B-5c6gMjO7S6PRx1iL7ELE6c
Message-ID: <CAFA6WYOaGEPj0xNEDBCoEmjJreEHChjQ2hyXRJ_CYoGhiBonfw@mail.gmail.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A53FE40099
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_COUNT_ONE(0.00)[1];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.217.43:from];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.217.43:from];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: SUVY6OQSGEFQIHO2XYDLMIOOGKFTQY4I
X-Message-ID-Hash: SUVY6OQSGEFQIHO2XYDLMIOOGKFTQY4I
X-MailFrom: sumit.garg@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jens Wiklander <jens.wiklander@linaro.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SUVY6OQSGEFQIHO2XYDLMIOOGKFTQY4I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Boris,

On Thu, 13 Feb 2025 at 01:26, Boris Brezillon
<boris.brezillon@collabora.com> wrote:
>
> +Florent, who's working on protected-mode support in Panthor.
>
> Hi Jens,
>
> On Tue, 17 Dec 2024 11:07:36 +0100
> Jens Wiklander <jens.wiklander@linaro.org> wrote:
>
> > Hi,
> >
> > This patch set allocates the restricted DMA-bufs via the TEE subsystem.
>
> We're currently working on protected-mode support for Panthor [1] and it
> looks like your series (and the OP-TEE implementation that goes with
> it) would allow us to have a fully upstream/open solution for the
> protected content use case we're trying to support. I need a bit more
> time to play with the implementation but this looks very promising
> (especially the lend rstmem feature, which might help us allocate our
> FW sections that are supposed to execute code accessing protected
> content).

Glad to hear that, if you can demonstrate an open source use case
based on this series then it will help to land it. We really would
love to see support for restricted DMA-buf consumers be it GPU, crypto
accelerator, media pipeline etc.

>
> >
> > The TEE subsystem handles the DMA-buf allocations since it is the TEE
> > (OP-TEE, AMD-TEE, TS-TEE, or perhaps a future QCOMTEE) which sets up the
> > restrictions for the memory used for the DMA-bufs.
> >
> > I've added a new IOCTL, TEE_IOC_RSTMEM_ALLOC, to allocate the restricted
> > DMA-bufs. This IOCTL reaches the backend TEE driver, allowing it to choose
> > how to allocate the restricted physical memory.
>
> I'll probably have more questions soon, but here's one to start: any
> particular reason you didn't go for a dma-heap to expose restricted
> buffer allocation to userspace? I see you already have a cdev you can
> take ioctl()s from, but my understanding was that dma-heap was the
> standard solution for these device-agnostic/central allocators.

This series started with the DMA heap approach only here [1] but later
discussions [2] lead us here. To point out specifically:

- DMA heaps require reliance on DT to discover static restricted
regions carve-outs whereas via the TEE implementation driver (eg.
OP-TEE) those can be discovered dynamically.
- Dynamic allocation of buffers and making them restricted requires
vendor specific driver hooks with DMA heaps whereas the TEE subsystem
abstracts that out with underlying TEE implementation (eg. OP-TEE)
managing the dynamic buffer restriction.
- TEE subsystem already has a well defined user-space interface for
managing shared memory buffers with TEE and restricted DMA buffers
will be yet another interface managed along similar lines.

[1] https://lore.kernel.org/lkml/mzur3odofwwrdqnystozjgf3qtvb73wqjm6g2vf5dfsqiehaxk@u67fcarhm6ge/T/
[2] https://lore.kernel.org/lkml/CAFA6WYPtp3H5JhxzgH9=z2EvNL7Kdku3EmG1aDkTS-gjFtNZZA@mail.gmail.com/

-Sumit

>
> Regards,
>
> Boris
>
> [1]https://lwn.net/ml/all/cover.1738228114.git.florent.tomasin@arm.com/#t
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
