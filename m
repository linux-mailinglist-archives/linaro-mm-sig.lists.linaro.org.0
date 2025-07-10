Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F63AB00E35
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Jul 2025 23:53:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7CC344575C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Jul 2025 21:53:26 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with UTF8SMTPS id C2CC043C33
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Jul 2025 21:53:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=uN7shFZo;
	spf=pass (lists.linaro.org: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com;
	dmarc=pass (policy=none) header.from=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 24171EFE;
	Thu, 10 Jul 2025 23:52:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1752184364;
	bh=HdHcUNEwnHO7i+iCXJrbRQoTaOpw3e20BB/FSIxX30I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uN7shFZoQ7WqWZyO4afhcLdyRJaXpHBb8hzbkYxasCO8v1QaVrbuWky6bcnENVZln
	 f2p9QjA6LfCrrvKF8h59Irl0f95vlz4iv5g7KQMW7alIJHBtwTsRYP+aK2G+kPsBa9
	 lXsKSHNTLVhwpvSJehNCUL0fn6R44ktbih+1GO/g=
Date: Fri, 11 Jul 2025 00:52:42 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20250710215242.GA16271@pendragon.ideasonboard.com>
References: <aG94uNDrL1MdHJPM@duo.ucw.cz>
 <aecd03f464f25d50f379be405a8596261f247897.camel@pengutronix.de>
 <aG9+j3p0+fdLQZwu@duo.ucw.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aG9+j3p0+fdLQZwu@duo.ucw.cz>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C2CC043C33
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	ONCE_RECEIVED(0.20)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[17];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:29169, ipnet:213.167.240.0/20, country:FR];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	TAGGED_RCPT(0.00)[etnaviv];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,redhat.com,intel.com,lists.freedesktop.org,linaro.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.linaro.org,armlinux.org.uk,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: TZIWZTFK7L2H2KAWSWIDY64VLNOJQ6LQ
X-Message-ID-Hash: TZIWZTFK7L2H2KAWSWIDY64VLNOJQ6LQ
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kraxel@redhat.com, vivek.kasireddy@intel.com, dri-devel@lists.freedesktop.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, kernel list <linux-kernel@vger.kernel.org>, linux+etnaviv@armlinux.org.uk, christian.gmeiner@gmail.com, etnaviv@lists.freedesktop.org, phone-devel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-BUFs always uncached on arm64, causing poor camera performance on Librem 5
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TZIWZTFK7L2H2KAWSWIDY64VLNOJQ6LQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jul 10, 2025 at 10:49:19AM +0200, Pavel Machek wrote:
> Hi!
> 
> > > memcpy() from normal memory is about 2msec/1MB. Unfortunately, for
> > > DMA-BUFs it is 20msec/1MB, and that basically means I can't easily do
> > > 760p video recording. Plus, copying full-resolution photo buffer takes
> > > more than 200msec!
> > > 
> > > There's possibility to do some processing on GPU, and its implemented here:
> > > 
> > > https://gitlab.com/tui/tui/-/tree/master/icam?ref_type=heads
> > > 
> > > but that hits the same problem in the end -- data is in DMA-BUF,
> > > uncached, and takes way too long to copy out.
> > > 
> > > And that's ... wrong. DMA ended seconds ago, complete cache flush
> > > would be way cheaper than copying single frame out, and I still have
> > > to deal with uncached frames.
> > > 
> > > So I have two questions:
> > > 
> > > 1) Is my analysis correct that, no matter how I get frame from v4l and
> > > process it on GPU, I'll have to copy it from uncached memory in the
> > > end?
> > 
> > If you need to touch the buffers using the CPU then you are either
> > stuck with uncached memory or you need to implement bracketed access to
> > do the necessary cache maintenance. Be aware that completely flushing
> > the cache is not really an option, as that would impact other
> > workloads, so you have to flush the cache by walking the virtual
> > address space of the buffer, which may take a significant amount of CPU
> > time.
> 
> What kind of "significant amount of CPU time" are we talking here?
> Millisecond?

It really depends on the platform, the type of cache, and the size of
the buffer. I remember that back in the N900 days a selective cash clean
of a large buffer for full resolution images took several dozens of
milliseconds, possibly close to 100ms. We had to clean the whole D-cache
to make it fast enough, but you can't always do that as Lucas mentioned.

> Bracketed access is fine with me.
> 
> Flushing a cache should be an option. I'm root, there's no other
> significant workload, and copying out the buffer takes 200msec+. There
> are lot of cache flushes that can be done in quarter a second!
> 
> > However, if you are only going to use the buffer with the GPU I see no
> > reason to touch it from the CPU side. Why would you even need to copy
> > the content? After all dma-bufs are meant to enable zero-copy between
> > DMA capable accelerators. You can simply import the V4L2 buffer into a
> > GL texture using EGL_EXT_image_dma_buf_import. Using this path you
> > don't need to bother with the cache at all, as the GPU will directly
> > read the video buffers from RAM.
> 
> Yes, so GPU will read video buffer from RAM, then debayer it, and then
> what? Then I need to store a data into raw file, or use CPU to turn it
> into JPEG file, or maybe run video encoder on it. That are all tasks
> that are done on CPU...

-- 
Regards,

Laurent Pinchart
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
