Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UItuC2VgBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:28:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D63315323FC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:28:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73E1A4043A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:28:35 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id CEC153F75F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 12:44:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=bpzqFq8Z;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of nicolas.frattaroli@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=nicolas.frattaroli@collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
ARC-Seal: i=1; a=rsa-sha256; t=1778071430; cv=none;
	d=zohomail.com; s=zohoarc;
	b=lwcAHOQ9qKgB6gd/9on1FXLK0UkDSvYUDqw8dWjksSDlhrGY71mr6dLuvD+Juxe7xZVjqeJdePgX0oelI7eQUHqqowgB8a6OMxv6o1UV6i0eChNz60qd+WnKM+eJoBrwIjImFw07Yt0V27nCcqSlbOo6ShtG+Fo4J4K4qq2kCS8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1778071430; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=4WOETdo7BhC8/fmfwEMHN4WnoE6JbrZL+S0o9p8CuQg=;
	b=QQtT0Z2HOlpHk1d9Psdmk2ZCNNPApPHJlD8+9lgEYkTjwIU+QWETNPS0/0co+QVLUGW99oqJLrb2APT0E4slFtgSK84HyYQSTdb7+WUFt9JJi0L0l9LJFfnCCLxwnWo5UvjBeYpz5WfQatVYER/N+9ert4DqpakFi/YFAGl6j+8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1778071430;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=4WOETdo7BhC8/fmfwEMHN4WnoE6JbrZL+S0o9p8CuQg=;
	b=bpzqFq8ZonERTui7D7EsOZ4TgLTnWPmS5jc1gVcCh9oknNoPr4foc8lVt6qDxno8
	NEFNeYkeNwiwAWclb9gxJan+sWCuuXr5s7umaNf7RGIRgmWvVTXIMxOC8jV1DLLjjvM
	Nm1YHD+K9808tVd7G2lSqrJ4FTNe1uXI84ums7Cw=
Received: by mx.zohomail.com with SMTPS id 1778071429188905.6876124875138;
	Wed, 6 May 2026 05:43:49 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Ketil Johnsen <ketil.johnsen@arm.com>, Maxime Ripard <mripard@kernel.org>
Date: Wed, 06 May 2026 14:43:42 +0200
Message-ID: <SurytM7FTOazQNVXXqCU7g@collabora.com>
In-Reply-To: <20260506-energetic-azure-pig-2b6ec4@houat>
References: 
 <20260505140516.1372388-1-ketil.johnsen@arm.com>
 <20260505140516.1372388-5-ketil.johnsen@arm.com>
 <20260506-energetic-azure-pig-2b6ec4@houat>
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: nicolas.frattaroli@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6RTATPM3GPTGLCTWDGXWEZONWUSBN6X5
X-Message-ID-Hash: 6RTATPM3GPTGLCTWDGXWEZONWUSBN6X5
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:46 +0000
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.inf
 radead.org, linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6RTATPM3GPTGLCTWDGXWEZONWUSBN6X5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: D63315323FC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	DATE_IN_PAST(1.00)[166];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,arm.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.inf,lists.infradead.org];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.272];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,arm.com:email]
X-Rspamd-Action: no action

On Wednesday, 6 May 2026 12:08:24 Central European Summer Time Maxime Ripard wrote:
> Hi,
> 
> On Tue, May 05, 2026 at 04:05:10PM +0200, Ketil Johnsen wrote:
> > From: Florent Tomasin <florent.tomasin@arm.com>
> > 
> > This patch allows Panthor to allocate buffer objects from a
> > protected heap. The Panthor driver should be seen as a consumer
> > of the heap and not an exporter.
> > 
> > Protected memory buffers needed by the Panthor driver:
> > - On CSF FW load, the Panthor driver must allocate a protected
> >   buffer object to hold data to use by the FW when in protected
> >   mode. This protected buffer object is owned by the device
> >   and does not belong to a process.
> > - On CSG creation, the Panthor driver must allocate a protected
> >   suspend buffer object for the FW to store data when suspending
> >   the CSG while in protected mode. The kernel owns this allocation
> >   and does not allow user space mapping. The format of the data
> >   in this buffer is only known by the FW and does not need to be
> >   shared with other entities.
> > 
> > The driver will retrieve the protected heap using the name of the
> > heap provided to the driver as module parameter.
> 
> I know it's what dma_heap_find asks for, but I wonder if it wouldn't be
> better in the device tree and lookup through the device node? heaps are
> going to have a node anyway, right?
> 
> This would allow you to have a default that works and not mess to much
> with the kernel parameters that aren't always easy to change for
> end-users.

Hopefully the kernel parameters aren't easy to change for end-users on
systems that deploy this. :) The use-case is copy protection for embedded
devices running on locked-down systems. Though admittedly the mechanism
works even on "tampered"-with systems, as long as the underlying hardware
implements the access restrictions properly.

I'm a bit hesitant about making this DT myself. It would solve the problem
that panthor could probe before the heap provider and needs to handle
deferral by itself, but it does mean that we'd be putting software
configuration into the device tree. Having the secure heap be a node with
no address would allow the tee (or whatever else) to still dynamically
allocate it wherever, and let us handle the dependency relationship
between dma heap and GPU, but then we require that tee heap driver
implementations play nice with this scheme, and bring OF into the
dma_heap APIs.

I'm not against making the dma heap a phandle property for the GPU
node and then extending the dma-heap API to get a heap by name or
by index from a user device's standardised phandle property/names
property, but that's potentially a very large can of worms to open.

> 
> Maxime
> 

Kind regards,
Nicolas Frattaroli


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
