Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F65E8AB3F8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Apr 2024 18:58:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EB5F44014
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Apr 2024 16:58:02 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	by lists.linaro.org (Postfix) with ESMTPS id 434E844014
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Apr 2024 16:58:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=W3cyXWHI;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of christian.gmeiner@gmail.com designates 209.85.215.172 as permitted sender) smtp.mailfrom=christian.gmeiner@gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-5dca1efad59so1600409a12.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Apr 2024 09:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713545879; x=1714150679; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UVhdLoqOmP33JcxmAZZppMT40QvlL/I6MqHHmvjWVwA=;
        b=W3cyXWHI9z6suv5PYOA0FY1FkoC/PQ2TI9Jhp2qKrv9dmOcWYRAHXn3deWfTgUbs2N
         hCQgN+Wy/yFNy+kiUhmQ23fs/SDyvQ5adN6ZDZusMdA1ggQD1TooFfLO0Ax5Dsz7yKTU
         O06bbFLlmyuz1fiOAJ7AP6RFFbqW2Pi0wDTWROqdgz7IMUjYE7NCfMf4rsR8wcM8wL9i
         Vb19z8JXOWgHOGunkI9W/9nYueIX6ViXdeO0n+gp71+zkJpJDMduIRRsfcFoPSOmTize
         6lJRk9vnSWAONO5blQAcZgdlSk4G65I/N5CnrKi9SVm4REurFLQdSaV5OEAop3P8rR6f
         tdWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713545879; x=1714150679;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UVhdLoqOmP33JcxmAZZppMT40QvlL/I6MqHHmvjWVwA=;
        b=RmpSYvr/mKzZCdoTUePsZILrQp2jNp+CH7uEuEHgIVZP1oyONB+2wnKC9dGRfXTEvy
         z292s6U2XAzI91xaiuK23tWxNk1iAjItQa6OwIeZs8OoNy+IwmdbunkoPHzUJZKZb6H0
         wKIGZwqTQ3S0+T+O4e/XAoKkwkc+P/Y7sdczy1K/sMp/I0ji4XsVXzACV8dQ1eABhRBU
         6U0Opy6jQ3gaKPDHU+Jaq11v4RKsNg+BIyRBe0+OqBVM/YURn73brSA6zokTqwkDQEnw
         pvvaWERReElj7IvU1yLGcgpOXrBl49Ccvs+VE5ZSWdzr+RtWyy99CW13pkAcmbJVzcM6
         uOGA==
X-Forwarded-Encrypted: i=1; AJvYcCV9620My4yShZUNGKpnvEEHuV0k2j4vyVkMM3jfd0/caJpioHHLhXzERBP9hvxTbQ54iZOY4S7JNl3wbEwNUA86lagBSZ7ngnDTO13dEi8=
X-Gm-Message-State: AOJu0YyrSFowf1SSEj07f/ISxK3n/jJZ5hOp7GLwOlK3J4QoD11ce+c/
	7WqznvlP8FprgTSEDx3WvgeD70/tM63cuWXsjTtf5RHrAoAb1LtgK1Pmv+EkkmYBQaacUA7MmCp
	INQlxiikSsnbE9AJUGYKgLPaX1Dw=
X-Google-Smtp-Source: AGHT+IGd2q8SP9g4kc04Aop9W0vIGu3rv607Ws+SBDlsjApM9U32JwLK736Znh95YUtvArDUHHvirc9PKw/9X7r6Yj4=
X-Received: by 2002:a17:90a:5d04:b0:2a0:4c3b:2c39 with SMTP id
 s4-20020a17090a5d0400b002a04c3b2c39mr3379824pji.23.1713545879215; Fri, 19 Apr
 2024 09:57:59 -0700 (PDT)
MIME-Version: 1.0
References: <20240409120605.4138472-1-Pascal.FONTAIN@bachmann.info>
 <20240409120605.4138472-3-Pascal.FONTAIN@bachmann.info> <2024040944-flashcard-tribune-6a8e@gregkh>
In-Reply-To: <2024040944-flashcard-tribune-6a8e@gregkh>
From: Christian Gmeiner <christian.gmeiner@gmail.com>
Date: Fri, 19 Apr 2024 18:57:47 +0200
Message-ID: <CAH9NwWezn1A=n9_NqY_Lp9VzYwzAd0dAjQPD9wBB3_ragddZWg@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Rspamd-Queue-Id: 434E844014
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.215.172:from];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VSDUGOC2VVQNKBFNYPEGRTTOU47AQSFM
X-Message-ID-Hash: VSDUGOC2VVQNKBFNYPEGRTTOU47AQSFM
X-MailFrom: christian.gmeiner@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Pascal FONTAIN <Pascal.FONTAIN@bachmann.info>, linux-kernel@vger.kernel.org, Derek Kiernan <derek.kiernan@amd.com>, Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, afd@ti.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/2] misc: sram: Add DMA-BUF Heap exporting of SRAM areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VSDUGOC2VVQNKBFNYPEGRTTOU47AQSFM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Am Di., 9. Apr. 2024 um 14:14 Uhr schrieb Greg Kroah-Hartman
<gregkh@linuxfoundation.org>:
>
> On Tue, Apr 09, 2024 at 02:06:05PM +0200, Pascal FONTAIN wrote:
> > From: Andrew Davis <afd@ti.com>
> >
> > This new export type exposes to userspace the SRAM area as a DMA-BUF
> > Heap,
> > this allows for allocations of DMA-BUFs that can be consumed by various
> > DMA-BUF supporting devices.
> >
> > Signed-off-by: Andrew Davis <afd@ti.com>
> > Tested-by: Pascal Fontain <pascal.fontain@bachmann.info>
>
> When sending on a patch from someone else, you too must sign off on it
> as per our documenation.  Please read it and understand what you are
> agreeing to when you do that for a new version please.
>
> > ---
> >  drivers/misc/Kconfig         |   7 +
> >  drivers/misc/Makefile        |   1 +
> >  drivers/misc/sram-dma-heap.c | 246 +++++++++++++++++++++++++++++++++++
> >  drivers/misc/sram.c          |   6 +
> >  drivers/misc/sram.h          |  16 +++
> >  5 files changed, 276 insertions(+)
> >  create mode 100644 drivers/misc/sram-dma-heap.c
> >
> > diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> > index 9e4ad4d61f06..e6674e913168 100644
> > --- a/drivers/misc/Kconfig
> > +++ b/drivers/misc/Kconfig
> > @@ -448,6 +448,13 @@ config SRAM
> >  config SRAM_EXEC
> >       bool
> >
> > +config SRAM_DMA_HEAP
> > +     bool "Export on-chip SRAM pools using DMA-Heaps"
> > +     depends on DMABUF_HEAPS && SRAM
> > +     help
> > +       This driver allows the export of on-chip SRAM marked as both pool
> > +       and exportable to userspace using the DMA-Heaps interface.
>
> What will use this in userspace?
>

I could imagine a way it might be used.

Imagine a SoC like TI's AM64x series, where some cores (A53) run Linux
and others (R5F) are managed by remoteproc to
execute a RTOS. When it comes to efficiently exchanging large data
sets, the conventional method involves using rpmsg,
which has limitations due to message size and could potentially slow
down data transfer. However, an alternative
approach could be to allocate a sizable chunk of SRAM memory in
userspace. By utilizing memcpy() to copy data into
this memory, followed by a single rpmsg signal to notify the RTOS that
the data is ready, we can leverage the faster access
speed of SRAM compared to DDR from the remoteproc.

-- 
greets
--
Christian Gmeiner, MSc

https://christian-gmeiner.info/privacypolicy
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
