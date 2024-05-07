Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCE38BED6D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 22:00:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09622447F6
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 20:00:05 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by lists.linaro.org (Postfix) with ESMTPS id 8ACE73F02C
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 19:59:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=JB2yhbqa;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.219.181 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-de610800da0so3495301276.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 12:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715111993; x=1715716793; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9u4+z96HwXR809ZF1PkEWCwnBjus+4ZFL2JjXWvh/IY=;
        b=JB2yhbqam0jF2lwM7i9ktMqFRpsgb5TkBI89/SWN9SvJQHrgQMp2O/IaZEWbLbub42
         U5W/alz9WmaFJ3MuXI2bAKG8NHkJ/7yHMMS/b6i7WUBtnRMjfbdl6fP7I1cxn8hcMDes
         XlyqAMWvr95SzzSHNfVHo8r2wW1IO32+/zlTcNeYGhMeNOii8S53vKUrystkGZzF6JSR
         /y+kgifJcRhoLQD19hFdPCB6eD9OCOwFmyyWTK0szpZdnOOhKV7cVm9cLbduIbZUF29l
         clx0RvodAKiLf1iQ6qxe7GI2+XfDg4S5zC4pcz1Vo4dh7/FX7/iMYhCVchIZFrGyrgG0
         iKrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715111993; x=1715716793;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9u4+z96HwXR809ZF1PkEWCwnBjus+4ZFL2JjXWvh/IY=;
        b=HMaEp0tlV98MSoae9ULKJzK1QA0E5Fulpj3IiB97i5LWgnRCiLMExs9LpYBsP4Z7KK
         39iJiGNIlN2U/I4vdSAFr+9g62/3jQoJjxjGkjqcTm6SPEzarucSE5aN6xrgW4kE4v1m
         MLfkJc8p3qxpZnn4SihpQb/s/yy8tIPaOIbu5Nw0wj/MGX+taCVueGMTLrEG8jvKaD4V
         jD0fkp/Emcv6R7ymTARuNBO21Np20hziX5Fhzx02SqXuU2b9RNOX9FiNJieWMltt2Etm
         1bMLVPx6gjNe9z28Y2th+jF0tvg8km4ULNZjQYM0sE/A46pwPsxhCHOq0zxcFHQ0t4/G
         ztzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzg+ntFs9X1kDYneCwDzloAtE2pudWel2a3dYkOiGmwT1TZ18gVFVEs/l6xtqPksIJ/Bdqwcx7FBhkq4Zz/zhy0NzQG3174AsRxcwz9XY=
X-Gm-Message-State: AOJu0YyynH9/E5FhoJ1eJiO9rzRulezpvT+tMPpGlKPwRWK0+XyKUgeq
	3R+87IKHU9j7MKMC3waKq3Y5YTCOjVTIBct2Ky25BvUti410JGHmuch4J96+eT/KgmemQ3iPNkM
	dyzISL8107jlRlgn09uqmili1AXMKb0OabCGdnLjO
X-Google-Smtp-Source: AGHT+IHOidTRxfaPcTyYfkMUG+K57a4v9CN0Di3Y62BasjAdrMLYfJVqOjaj2F7Xus+0Xcdfeto1KfCFGsurjzlI9PQ=
X-Received: by 2002:a5b:881:0:b0:deb:b3da:b1ad with SMTP id
 3f1490d57ef6-debb9cf9739mr749935276.12.1715111993047; Tue, 07 May 2024
 12:59:53 -0700 (PDT)
MIME-Version: 1.0
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <ojduxo54lpcbfg2wfuhqhy7k3phncamtklh65z7gvttcwztmhk@zkifewcy4ovi>
 <3c0c7e7e-1530-411b-b7a4-9f13e0ff1f9e@redhat.com> <e7ilwp3vc32xze3iu2ejgqlgz44codsktnvyiufjhuf2zxcnnf@tnwzgzoxvbg2>
 <d2a512b2-e6b1-4675-b406-478074bbbe95@linaro.org> <CAA8EJpr4bJUQt2T63_FZ=KHGEm4vixfpk3pMV9naABEONJfMmQ@mail.gmail.com>
 <20240507184049.GC20390@pendragon.ideasonboard.com>
In-Reply-To: <20240507184049.GC20390@pendragon.ideasonboard.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 7 May 2024 22:59:42 +0300
Message-ID: <CAA8EJpqLu5w7gnqtDyuDDQBd7AEROTd6LTYi8muzjToXmkKR3w@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8ACE73F02C
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,redhat.com,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,x.org:url,ideasonboard.com:email];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.181:from];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: ZVCKAPMJSB2G2XTCD6DGDRE7YMGARITN
X-Message-ID-Hash: ZVCKAPMJSB2G2XTCD6DGDRE7YMGARITN
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Milan Zamazal <mzamazal@redhat.com>, Maxime Ripard <mripard@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZVCKAPMJSB2G2XTCD6DGDRE7YMGARITN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 7 May 2024 at 21:40, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> On Tue, May 07, 2024 at 06:19:18PM +0300, Dmitry Baryshkov wrote:
> > On Tue, 7 May 2024 at 18:15, Bryan O'Donoghue wrote:
> > > On 07/05/2024 16:09, Dmitry Baryshkov wrote:
> > > > Ah, I see. Then why do you require the DMA-ble buffer at all? If you are
> > > > providing data to VPU or DRM, then you should be able to get the buffer
> > > > from the data-consuming device.
> > >
> > > Because we don't necessarily know what the consuming device is, if any.
> > >
> > > Could be VPU, could be Zoom/Hangouts via pipewire, could for argument
> > > sake be GPU or DSP.
> > >
> > > Also if we introduce a dependency on another device to allocate the
> > > output buffers - say always taking the output buffer from the GPU, then
> > > we've added another dependency which is more difficult to guarantee
> > > across different arches.
> >
> > Yes. And it should be expected. It's a consumer who knows the
> > restrictions on the buffer. As I wrote, Zoom/Hangouts should not
> > require a DMA buffer at all.
>
> Why not ? If you want to capture to a buffer that you then compose on
> the screen without copying data, dma-buf is the way to go. That's the
> Linux solution for buffer sharing.

Yes. But it should be allocated by the DRM driver. As Sima wrote,
there is no guarantee that the buffer allocated from dma-heaps is
accessible to the GPU.

>
> > Applications should be able to allocate
> > the buffer out of the generic memory.
>
> If applications really want to copy data and degrade performance, they
> are free to shoot themselves in the foot of course. Applications (or
> compositors) need to support copying as a fallback in the worst case,
> but all components should at least aim for the zero-copy case.

I'd say that they should aim for the optimal case. It might include
both zero-copying access from another DMA master or simple software
processing of some kind.

> > GPUs might also have different
> > requirements. Consider GPUs with VRAM. It might be beneficial to
> > allocate a buffer out of VRAM rather than generic DMA mem.
>
> Absolutely. For that we need a centralized device memory allocator in
> userspace. An effort was started by James Jones in 2016, see [1]. It has
> unfortunately stalled. If I didn't have a camera framework to develop, I
> would try to tackle that issue :-)

I'll review the talk. However the fact that the effort has stalled
most likely means that 'one fits them all' approach didn't really fly
well. We have too many usecases.

>
> [1] https://www.x.org/wiki/Events/XDC2016/Program/Unix_Device_Memory_Allocation.pdf

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
