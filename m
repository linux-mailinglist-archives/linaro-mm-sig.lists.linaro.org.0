Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D268ABA03
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 20 Apr 2024 08:36:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69B6743F5F
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 20 Apr 2024 06:36:52 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 600443F485
	for <linaro-mm-sig@lists.linaro.org>; Sat, 20 Apr 2024 06:36:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=0FsGL3L3;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D973D602DC;
	Sat, 20 Apr 2024 06:36:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCFCAC072AA;
	Sat, 20 Apr 2024 06:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1713595001;
	bh=4ZTtTXI4g9M/agNAvTBYKN6n6HilBTuHVmnqwooqBfE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0FsGL3L3LeROXc734pyxXG2RCzM8GIMTdZqalBjsuAwWZi6SJsD3JhFih9MygA9bE
	 D67SPQ3KyoYcSoyKTfpl+yYe+OZe30YTkQTOP91tBSxltbxZq+xB6qjQGkTp4IOQwk
	 Y7xQ2ue8J76g2LIpRiDBWca/BWuJfFcunV0dCSwo=
Date: Sat, 20 Apr 2024 08:36:34 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christian Gmeiner <christian.gmeiner@gmail.com>
Message-ID: <2024042043-joyride-parish-3d3b@gregkh>
References: <20240409120605.4138472-1-Pascal.FONTAIN@bachmann.info>
 <20240409120605.4138472-3-Pascal.FONTAIN@bachmann.info>
 <2024040944-flashcard-tribune-6a8e@gregkh>
 <CAH9NwWezn1A=n9_NqY_Lp9VzYwzAd0dAjQPD9wBB3_ragddZWg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAH9NwWezn1A=n9_NqY_Lp9VzYwzAd0dAjQPD9wBB3_ragddZWg@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 600443F485
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.50 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	RCVD_IN_DNSWL_HI(-0.50)[139.178.84.217:from];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	DWL_DNSWL_BLOCKED(0.00)[linuxfoundation.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: IBPRLVSZLZ2VKJNCDPV737OYG3Y3R2YP
X-Message-ID-Hash: IBPRLVSZLZ2VKJNCDPV737OYG3Y3R2YP
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Pascal FONTAIN <Pascal.FONTAIN@bachmann.info>, linux-kernel@vger.kernel.org, Derek Kiernan <derek.kiernan@amd.com>, Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, afd@ti.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/2] misc: sram: Add DMA-BUF Heap exporting of SRAM areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IBPRLVSZLZ2VKJNCDPV737OYG3Y3R2YP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Apr 19, 2024 at 06:57:47PM +0200, Christian Gmeiner wrote:
> Am Di., 9. Apr. 2024 um 14:14 Uhr schrieb Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>:
> >
> > On Tue, Apr 09, 2024 at 02:06:05PM +0200, Pascal FONTAIN wrote:
> > > From: Andrew Davis <afd@ti.com>
> > >
> > > This new export type exposes to userspace the SRAM area as a DMA-BUF
> > > Heap,
> > > this allows for allocations of DMA-BUFs that can be consumed by various
> > > DMA-BUF supporting devices.
> > >
> > > Signed-off-by: Andrew Davis <afd@ti.com>
> > > Tested-by: Pascal Fontain <pascal.fontain@bachmann.info>
> >
> > When sending on a patch from someone else, you too must sign off on it
> > as per our documenation.  Please read it and understand what you are
> > agreeing to when you do that for a new version please.
> >
> > > ---
> > >  drivers/misc/Kconfig         |   7 +
> > >  drivers/misc/Makefile        |   1 +
> > >  drivers/misc/sram-dma-heap.c | 246 +++++++++++++++++++++++++++++++++++
> > >  drivers/misc/sram.c          |   6 +
> > >  drivers/misc/sram.h          |  16 +++
> > >  5 files changed, 276 insertions(+)
> > >  create mode 100644 drivers/misc/sram-dma-heap.c
> > >
> > > diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> > > index 9e4ad4d61f06..e6674e913168 100644
> > > --- a/drivers/misc/Kconfig
> > > +++ b/drivers/misc/Kconfig
> > > @@ -448,6 +448,13 @@ config SRAM
> > >  config SRAM_EXEC
> > >       bool
> > >
> > > +config SRAM_DMA_HEAP
> > > +     bool "Export on-chip SRAM pools using DMA-Heaps"
> > > +     depends on DMABUF_HEAPS && SRAM
> > > +     help
> > > +       This driver allows the export of on-chip SRAM marked as both pool
> > > +       and exportable to userspace using the DMA-Heaps interface.
> >
> > What will use this in userspace?
> >
> 
> I could imagine a way it might be used.

This implies it is not needed because no one actually has actually used
it for anything, so why make this change?

> Imagine a SoC like TI's AM64x series, where some cores (A53) run Linux
> and others (R5F) are managed by remoteproc to
> execute a RTOS. When it comes to efficiently exchanging large data
> sets, the conventional method involves using rpmsg,
> which has limitations due to message size and could potentially slow
> down data transfer. However, an alternative
> approach could be to allocate a sizable chunk of SRAM memory in
> userspace. By utilizing memcpy() to copy data into
> this memory, followed by a single rpmsg signal to notify the RTOS that
> the data is ready, we can leverage the faster access
> speed of SRAM compared to DDR from the remoteproc.

Why is virtio not used instead?

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
