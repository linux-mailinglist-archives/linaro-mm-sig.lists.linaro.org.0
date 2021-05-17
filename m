Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B87383409
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 17:05:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 857BC61033
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 15:05:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A0B63610C1; Mon, 17 May 2021 15:05:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C6DD860B8C;
	Mon, 17 May 2021 15:04:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1A166607E1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 15:04:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1506A60B83; Mon, 17 May 2021 15:04:08 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by lists.linaro.org (Postfix) with ESMTPS id 0D8DA607E1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 15:04:05 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id d11so6752173wrw.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 08:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=eGphPJuK3cgRJFETzUcO/LShGRgzjvs38A9VSCQLJ8k=;
 b=Mzc8dj5AYMq4ixYcDwtq6ArgNnS+NXanSSzxBsoB2qZjEvwsrcIafBggZar4BpgfIU
 iZ3OeRFUoLoYejrvpno0p5K66ZYHyCztQh604uMjFaxBlqdrZPuYg6lYvkgA5WLiMsLA
 S7w9HU1uGA/AkeYqP0LdyXB2Zuh7F8CdmWgwY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=eGphPJuK3cgRJFETzUcO/LShGRgzjvs38A9VSCQLJ8k=;
 b=c/EKhfa3mjs2r2PpjMHNvyKMsHIn+fE0emxn9M8uwQK1IWfVAv8UuLvyp4mkvd9m/7
 dYivujAhx+8kW5wYwezuijQNc1Z0E0ZrSb+G3h8rEKv6IBcWBS3wdhqacv0+OymNveBL
 YTI22Q0SduCf62jpijCzcSDeZ0NsH6Nk/w5WBOcfJJNsF+3CRzopCWdeW/Q4+Ch6/6V/
 LwYF81dYam8GyEbZqDbMO3CN+yj1wMYelL+Tx7+YT0OYzLwlkyBrcRVi4oYi50gqYpUF
 JYeKDI2ezNTE/xRQBTxJx5zSUpfxBiN2ZY+JUoqrglj3l6T1E4wJdraLCmimpqLSuvs/
 hHRA==
X-Gm-Message-State: AOAM531NVE1dnxSM7JHCAmuu8Q3yPjE5aioFFSd+hfbCwjHItHtOWukw
 14q0a7S2VDwuxrTRSN9NjmWNIA==
X-Google-Smtp-Source: ABdhPJwRQA0zY+tq7EPgKIHjccQyA7oUyu/7jvW/KHgUwjb48uOykuD48aikU0azq/JragIivlTvZQ==
X-Received: by 2002:adf:f00b:: with SMTP id j11mr104515wro.181.1621263845106; 
 Mon, 17 May 2021 08:04:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v3sm10283270wrr.19.2021.05.17.08.04.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 May 2021 08:04:04 -0700 (PDT)
Date: Mon, 17 May 2021 17:04:02 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YKKF4jOvM4gJT6a4@phenom.ffwll.local>
References: <20210517141129.2225-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210517141129.2225-1-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC] Add DMA_RESV_USAGE flags
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linaro-mm-sig@lists.linaro.org, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, May 17, 2021 at 04:11:18PM +0200, Christian K=F6nig wrote:
> We had a long outstanding problem in amdgpu that buffers exported to
> user drivers by DMA-buf serialize all command submissions using them.
> =

> In other words we can't compose the buffer with different engines and
> then send it to another driver for display further processing.
> =

> This was added to work around the fact that i915 didn't wanted to wait
> for shared fences in the dma_resv objects before displaying a buffer.
> =

> Since this problem is now causing issues with Vulkan we need to find a
> better solution for that.
> =

> The patch set here tries to do this by adding an usage flag to the
> shared fences noting when and how they should participate in implicit
> synchronization.

So the way this is fixed in every other vulkan driver is that vulkan
userspace sets flags in the CS ioctl when it wants to synchronize with
implicit sync. This gets you mostly there. Last time I checked amdgpu
isn't doing this, and yes that's broken.

I915 and iirc msm has explicit flags for this, panfrost was designed to
support this correctly from the start (also with flags I think). That's at
least what I remember from all the discussions at XDC and #dri-devel, but
didn't check the code again to give you the list of uapi flags you need
for each driver.

The other piece is making sure you're only picking up implicit fences when
you should, and not any later ones, for which Jason has a solution:

https://lore.kernel.org/dri-devel/20210317221940.2146688-1-jason@jlekstrand=
.net/

If amdgpu isn't using those, then you will suffer from
over-synchronization in vulkan and pay a price. The entire point of vulkan
is that you pick up sync points very explicitly, and we also need to have
very explicit uapi for userspace to pick up/set the implicit fences.

Trying to paper over this with more implicit magic is imo just wrong, and
definitely not the long term explicit sync model we want.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
