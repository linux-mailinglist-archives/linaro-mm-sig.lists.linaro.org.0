Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E49318BF8D8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 10:40:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1AF843F5E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 08:40:14 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by lists.linaro.org (Postfix) with ESMTPS id 258993F02C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 08:40:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=NYXZnwmT;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.218.54) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a599b74fd49so102108766b.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 May 2024 01:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715157601; x=1715762401; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TjDECsAq9W3dnXC6ANhg0GrZ6XSPEO0XVnHc2JQoQ80=;
        b=NYXZnwmTEWxoRymK+QoE4TBGTqbFZ1p/oETCrOMDf17hQwi+JLOJBmFKRLPi+ELV9F
         sZ98va7/UC1kKrh8KPyvdeRad884Wz+ejIQGWu1ngGWV5Gz7KfiX3lMB3QMikteikcOk
         5cSG2uu9wO2UHVrlWYenXpCYzvmiX7BbF1Hmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715157601; x=1715762401;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TjDECsAq9W3dnXC6ANhg0GrZ6XSPEO0XVnHc2JQoQ80=;
        b=QuNvTfLU3YSWP+IA34Y/llmYo9HxISdW/POY/mUQEb2uaNeLrvQ89mL0S2zrhD6Utq
         aBgViFKiUNQzm4CYyPhqJkghC1rHQX6G45QxTjpTBwC+J+I4OsWUdldf/QFnQeGpjytY
         l8vDNLYyxJQX5RM7UsRId+Ue37IlpgUxtx2DqZ6H+tCFQyYv7CbDX3Gl4hHe7jroAxGW
         KqcRAgRS+hg821oUsqZFQq+gwu5B8wMI7FZ/7woGi2Icb9Lt06T5Tyzd12qBQ5pH9FOy
         KhrfgFMszsoNeJgRB4Db4gIofqIEUTuAAX9BqDnTtuT86t49z9mNuAomdYchYHlUFKUn
         LX/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWv71Dsb9x7/eXBFBoMPNVIj99m6DmwJXcNdKAmlauV/o00evvuvY0W5YhWGuswHCkA33TouMHPqGMNcaksuKltHk80au8I6ZYTa0MydAU=
X-Gm-Message-State: AOJu0YxCiIy6M1RaIGnaUPuzeF3U//wVPViOSu8toyo+YS91sZyV9H6l
	ruRhkhiqQUW/3N4+Zbt5mZNAlZuGAfjqH1jmUKREaYhgl8GvM2i4t8zSvSquEkY=
X-Google-Smtp-Source: AGHT+IGPIAQ6Tm4FnC70hw3PFhT5mBH/5wt01YJzyWABi0B27GbCxWEn36XIAqIwrxHxasKk9JiZiw==
X-Received: by 2002:a17:906:ccce:b0:a59:cf59:f7ff with SMTP id a640c23a62f3a-a59fb94f3c4mr140742766b.2.1715157601017;
        Wed, 08 May 2024 01:40:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id bi11-20020a170907368b00b00a59f73fb086sm1155563ejc.196.2024.05.08.01.40.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 May 2024 01:40:00 -0700 (PDT)
Date: Wed, 8 May 2024 10:39:58 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <Zjs6Xt_W0VsY8wJc@phenom.ffwll.local>
Mail-Followup-To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Lennart Poettering <mzxreary@0pointer.de>,
	Robert Mader <robert.mader@collabora.com>,
	Sebastien Bacher <sebastien.bacher@canonical.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	linaro-mm-sig@lists.linaro.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Milan Zamazal <mzamazal@redhat.com>,
	Maxime Ripard <mripard@redhat.com>,
	Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
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
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 258993F02C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.54:from];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[ffwll.ch:url,ffwll.ch:dkim];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,linaro.org,redhat.com,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 3GKYOOE6YG6BP2P5OUKLWYUDWYE4ENQH
X-Message-ID-Hash: 3GKYOOE6YG6BP2P5OUKLWYUDWYE4ENQH
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Milan Zamazal <mzamazal@redhat.com>, Maxime Ripard <mripard@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3GKYOOE6YG6BP2P5OUKLWYUDWYE4ENQH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, May 07, 2024 at 10:59:42PM +0300, Dmitry Baryshkov wrote:
> On Tue, 7 May 2024 at 21:40, Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> >
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
> 
> >
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

I think there's two reasons:

- It's a really hard problem with many aspects. Where you need to allocate
  the buffer is just one of the myriad of issues a common allocator needs
  to solve.

- Every linux-based os has their own solution for these, and the one that
  suffers most has an entirely different one from everyone else: Android
  uses binder services to allow apps to make these allocations, keep track
  of them and make sure there's no abuse. And if there is, it can just
  nuke the app.

Cheers, Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
