Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF938BEDEB
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 22:15:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0CE9447F5
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 20:15:28 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id 74CFB40A7C
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 20:15:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=ZjPGeIOJ;
	spf=pass (lists.linaro.org: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com;
	dmarc=none
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C2E26DFB;
	Tue,  7 May 2024 22:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715112909;
	bh=gpzcY4y3i2KBXNv1yb0z2rP0d1+GAgC9/AU3xoG+moM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZjPGeIOJTDi4STMtKK6eRAtKTpi5o3A1Luo604bMWViu+xRjvML3zbzSvIkJw3ocP
	 UHz4M9uRyXtZjvHW0U6OIGFZVGYQ/cLL8yS5QF7s4z9C72gXFpE34klgqi+laBoxJH
	 ASfjttCYYcd0K9T9QjIQ7QeK0dGXZAV20oUxCgg8=
Date: Tue, 7 May 2024 23:15:02 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <20240507201502.GC2012@pendragon.ideasonboard.com>
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <ojduxo54lpcbfg2wfuhqhy7k3phncamtklh65z7gvttcwztmhk@zkifewcy4ovi>
 <3c0c7e7e-1530-411b-b7a4-9f13e0ff1f9e@redhat.com>
 <e7ilwp3vc32xze3iu2ejgqlgz44codsktnvyiufjhuf2zxcnnf@tnwzgzoxvbg2>
 <d2a512b2-e6b1-4675-b406-478074bbbe95@linaro.org>
 <CAA8EJpr4bJUQt2T63_FZ=KHGEm4vixfpk3pMV9naABEONJfMmQ@mail.gmail.com>
 <20240507184049.GC20390@pendragon.ideasonboard.com>
 <CAA8EJpqLu5w7gnqtDyuDDQBd7AEROTd6LTYi8muzjToXmkKR3w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpqLu5w7gnqtDyuDDQBd7AEROTd6LTYi8muzjToXmkKR3w@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 74CFB40A7C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	URIBL_BLOCKED(0.00)[ideasonboard.com:dkim,x.org:url];
	DMARC_NA(0.00)[ideasonboard.com];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,redhat.com,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:29169, ipnet:213.167.240.0/20, country:FR];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: GKLMGFR6D6MFNFLQPZ7KHIDI4TOSGPJI
X-Message-ID-Hash: GKLMGFR6D6MFNFLQPZ7KHIDI4TOSGPJI
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Milan Zamazal <mzamazal@redhat.com>, Maxime Ripard <mripard@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GKLMGFR6D6MFNFLQPZ7KHIDI4TOSGPJI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, May 07, 2024 at 10:59:42PM +0300, Dmitry Baryshkov wrote:
> On Tue, 7 May 2024 at 21:40, Laurent Pinchart wrote:
> > On Tue, May 07, 2024 at 06:19:18PM +0300, Dmitry Baryshkov wrote:
> > > On Tue, 7 May 2024 at 18:15, Bryan O'Donoghue wrote:
> > > > On 07/05/2024 16:09, Dmitry Baryshkov wrote:
> > > > > Ah, I see. Then why do you require the DMA-ble buffer at all? If you are
> > > > > providing data to VPU or DRM, then you should be able to get the buffer
> > > > > from the data-consuming device.
> > > >
> > > > Because we don't necessarily know what the consuming device is, if any.
> > > >
> > > > Could be VPU, could be Zoom/Hangouts via pipewire, could for argument
> > > > sake be GPU or DSP.
> > > >
> > > > Also if we introduce a dependency on another device to allocate the
> > > > output buffers - say always taking the output buffer from the GPU, then
> > > > we've added another dependency which is more difficult to guarantee
> > > > across different arches.
> > >
> > > Yes. And it should be expected. It's a consumer who knows the
> > > restrictions on the buffer. As I wrote, Zoom/Hangouts should not
> > > require a DMA buffer at all.
> >
> > Why not ? If you want to capture to a buffer that you then compose on
> > the screen without copying data, dma-buf is the way to go. That's the
> > Linux solution for buffer sharing.
> 
> Yes. But it should be allocated by the DRM driver. As Sima wrote,
> there is no guarantee that the buffer allocated from dma-heaps is
> accessible to the GPU.

No disagreement there. From a libcamera point of view, we want to import
buffers allocated externally. It's for use cases where applications
can't provide dma buf instances easily that we need to allocate them
through the libcamera buffer allocator helper. That helper has to a)
provide dma buf fds, and b) make a best effort to allocate buffers that
will have a decent chance of being usable by other devices. We're open
to exploring other solutions than dma heaps, although I wonder what the
dma heaps are for if nobody enables them :-)

> > > Applications should be able to allocate
> > > the buffer out of the generic memory.
> >
> > If applications really want to copy data and degrade performance, they
> > are free to shoot themselves in the foot of course. Applications (or
> > compositors) need to support copying as a fallback in the worst case,
> > but all components should at least aim for the zero-copy case.
> 
> I'd say that they should aim for the optimal case. It might include
> both zero-copying access from another DMA master or simple software
> processing of some kind.
> 
> > > GPUs might also have different
> > > requirements. Consider GPUs with VRAM. It might be beneficial to
> > > allocate a buffer out of VRAM rather than generic DMA mem.
> >
> > Absolutely. For that we need a centralized device memory allocator in
> > userspace. An effort was started by James Jones in 2016, see [1]. It has
> > unfortunately stalled. If I didn't have a camera framework to develop, I
> > would try to tackle that issue :-)
> 
> I'll review the talk. However the fact that the effort has stalled
> most likely means that 'one fits them all' approach didn't really fly
> well. We have too many usecases.
> 
> > [1] https://www.x.org/wiki/Events/XDC2016/Program/Unix_Device_Memory_Allocation.pdf

-- 
Regards,

Laurent Pinchart
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
