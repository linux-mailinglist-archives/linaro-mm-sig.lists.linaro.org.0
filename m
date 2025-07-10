Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AC4AFFC9F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Jul 2025 10:42:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F55945749
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Jul 2025 08:42:33 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	by lists.linaro.org (Postfix) with ESMTPS id 8165141598
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Jul 2025 08:42:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of l.stach@pengutronix.de designates 185.203.201.7 as permitted sender) smtp.mailfrom=l.stach@pengutronix.de;
	dmarc=none
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1uZmqy-0007le-Dq; Thu, 10 Jul 2025 10:42:04 +0200
Message-ID: <aecd03f464f25d50f379be405a8596261f247897.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Pavel Machek <pavel@ucw.cz>, kraxel@redhat.com,
 vivek.kasireddy@intel.com,  dri-devel@lists.freedesktop.org,
 sumit.semwal@linaro.org,  benjamin.gaignard@collabora.com,
 Brian.Starkey@arm.com, jstultz@google.com,  tjmercier@google.com,
 linux-media@vger.kernel.org,  linaro-mm-sig@lists.linaro.org, kernel list
 <linux-kernel@vger.kernel.org>,  laurent.pinchart@ideasonboard.com,
 linux+etnaviv@armlinux.org.uk,  christian.gmeiner@gmail.com,
 etnaviv@lists.freedesktop.org,  phone-devel@vger.kernel.org
Date: Thu, 10 Jul 2025 10:42:02 +0200
In-Reply-To: <aG94uNDrL1MdHJPM@duo.ucw.cz>
References: <aG94uNDrL1MdHJPM@duo.ucw.cz>
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linaro-mm-sig@lists.linaro.org
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8165141598
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.59 / 15.00];
	BAYES_HAM(-2.99)[99.97%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:209379, ipnet:185.203.200.0/22, country:DE];
	TAGGED_RCPT(0.00)[etnaviv];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_TO(0.00)[ucw.cz,redhat.com,intel.com,lists.freedesktop.org,linaro.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.linaro.org,ideasonboard.com,armlinux.org.uk,gmail.com];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	DNSWL_BLOCKED(0.00)[185.203.201.7:from,2a0a:edc0:0:900:1d::77:received];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: KTRWN7TKMZHB5HP574HCLQGPXIVTZKHP
X-Message-ID-Hash: KTRWN7TKMZHB5HP574HCLQGPXIVTZKHP
X-MailFrom: l.stach@pengutronix.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-BUFs always uncached on arm64, causing poor camera performance on Librem 5
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KTRWN7TKMZHB5HP574HCLQGPXIVTZKHP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Pavel,

Am Donnerstag, dem 10.07.2025 um 10:24 +0200 schrieb Pavel Machek:
> Hi!
> 
> It seems that DMA-BUFs are always uncached on arm64... which is a
> problem.
> 
> I'm trying to get useful camera support on Librem 5, and that includes
> recording vidos (and taking photos).
> 
> memcpy() from normal memory is about 2msec/1MB. Unfortunately, for
> DMA-BUFs it is 20msec/1MB, and that basically means I can't easily do
> 760p video recording. Plus, copying full-resolution photo buffer takes
> more than 200msec!
> 
> There's possibility to do some processing on GPU, and its implemented here:
> 
> https://gitlab.com/tui/tui/-/tree/master/icam?ref_type=heads
> 
> but that hits the same problem in the end -- data is in DMA-BUF,
> uncached, and takes way too long to copy out.
> 
> And that's ... wrong. DMA ended seconds ago, complete cache flush
> would be way cheaper than copying single frame out, and I still have
> to deal with uncached frames.
> 
> So I have two questions:
> 
> 1) Is my analysis correct that, no matter how I get frame from v4l and
> process it on GPU, I'll have to copy it from uncached memory in the
> end?

If you need to touch the buffers using the CPU then you are either
stuck with uncached memory or you need to implement bracketed access to
do the necessary cache maintenance. Be aware that completely flushing
the cache is not really an option, as that would impact other
workloads, so you have to flush the cache by walking the virtual
address space of the buffer, which may take a significant amount of CPU
time.

However, if you are only going to use the buffer with the GPU I see no
reason to touch it from the CPU side. Why would you even need to copy
the content? After all dma-bufs are meant to enable zero-copy between
DMA capable accelerators. You can simply import the V4L2 buffer into a
GL texture using EGL_EXT_image_dma_buf_import. Using this path you
don't need to bother with the cache at all, as the GPU will directly
read the video buffers from RAM.

Regards,
Lucas

> 
> 2) Does anyone have patches / ideas / roadmap how to solve that? It
> makes GPU unusable for computing, and camera basically unusable for
> video.
> 
> Best regards,
> 								Pavel

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
