Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8964840B06D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 16:18:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CB4362D35
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 14:18:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AB1FA61C55; Tue, 14 Sep 2021 14:18:41 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBA7E6100C;
	Tue, 14 Sep 2021 14:18:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8F78660C2C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 14:18:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 81E3C6100C; Tue, 14 Sep 2021 14:18:37 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 796A560C2C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 14:18:35 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id q26so20493846wrc.7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 07:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=kpn+M1bqQCPZctbXT2rMFocOAVoHTOH/YHoMT77kaXA=;
 b=KB4MNAxhrmlbX59MwAQZ6hLhzSFEWzYdMbFTOohpBg3/xVF58nlidY6zi0qGimEhqm
 Jl6OCNnnQMIFIqi85bkucA2jwEyap/QQOUngnGS5sFkRXOcZpJV0qG67XAOWE7gBHPBL
 dZ2GY6mBv3tc5NBbWhoYZ9ImG68TbT4LJGvgk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=kpn+M1bqQCPZctbXT2rMFocOAVoHTOH/YHoMT77kaXA=;
 b=PJWy+LfTjwuTb+PiAuUgSl4wF9SD+6tZbnYOg/alGd5VDG8XdPPd3CWnVvgoDzXLSx
 qHAebkaunY3C2Wpgxu5Dv5MdGohAnY6ieZs6AyPXMeAQLbVA0KJ6qmByYEIkk/8F5p49
 Q8edHlqeuysazyzjDLdrX6E1nFEs330+Dv5Ocz1SBgHR5MxychcFevW4UThpAwCD8RwG
 WBD0TiGJf7FsOpeqmSS1xIkQmLcD3Qe4uBwjmRRC0scpGqjrKDtrrqX+rfW8rrpGMM1C
 eG5WcksLa2DOhdwHZebOJQiXzcYmCEqtyGRu46St+tYxbu4tY2/VX8XPc74mV6L/V8FZ
 R7fg==
X-Gm-Message-State: AOAM531W6Y8sE0U+SA8kOySdxPg0JvUIlWWreESrahf4AeiY4jDyhXQ/
 q4Sv6tYiQzEzqDn1FffY2wkTMA==
X-Google-Smtp-Source: ABdhPJwKQcZFGHqC1jw8lf4RoQcxifPnrx41rU4gRLMHuOSauY9GY+Cp86a0hl31Z0tdwkoEknt34g==
X-Received: by 2002:adf:f183:: with SMTP id h3mr13825816wro.32.1631629114235; 
 Tue, 14 Sep 2021 07:18:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l15sm1251759wme.42.2021.09.14.07.18.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Sep 2021 07:18:33 -0700 (PDT)
Date: Tue, 14 Sep 2021 16:18:31 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Oded Gabbay <ogabbay@kernel.org>
Message-ID: <YUCvNzpyC091KeaJ@phenom.ffwll.local>
Mail-Followup-To: Oded Gabbay <ogabbay@kernel.org>,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org,
 jgg@ziepe.ca, christian.koenig@amd.com, galpress@amazon.com,
 sleybo@amazon.com, dri-devel@lists.freedesktop.org,
 linux-rdma@vger.kernel.org, linux-media@vger.kernel.org,
 dledford@redhat.com, airlied@gmail.com, alexander.deucher@amd.com,
 leonro@nvidia.com, hch@lst.de, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20210912165309.98695-1-ogabbay@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210912165309.98695-1-ogabbay@kernel.org>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v6 0/2] Add p2p via dmabuf to habanalabs
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
Cc: linux-rdma@vger.kernel.org, sleybo@amazon.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, galpress@amazon.com,
 linaro-mm-sig@lists.linaro.org, jgg@ziepe.ca, dledford@redhat.com, hch@lst.de,
 amd-gfx@lists.freedesktop.org, gregkh@linuxfoundation.org,
 alexander.deucher@amd.com, christian.koenig@amd.com, leonro@nvidia.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Sun, Sep 12, 2021 at 07:53:07PM +0300, Oded Gabbay wrote:
> Hi,
> Re-sending this patch-set following the release of our user-space TPC
> compiler and runtime library.
> 
> I would appreciate a review on this.

I think the big open we have is the entire revoke discussions. Having the
option to let dma-buf hang around which map to random local memory ranges,
without clear ownership link and a way to kill it sounds bad to me.

I think there's a few options:
- We require revoke support. But I've heard rdma really doesn't like that,
  I guess because taking out an MR while holding the dma_resv_lock would
  be an inversion, so can't be done. Jason, can you recap what exactly the
  hold-up was again that makes this a no-go?

- The other option I discussed is a bit more the exlusive device ownership
  model we've had for gpus in drm of the really old kind. Roughly this
  would work like this, in terms of drm_device:
  - Only the current owner (drm_master in current drm code, but should
    probably rename that to drm_owner) is allowed to use the accel driver.
    So all ioctl would fail if you're not drm_master.
  - On dropmaster/file close we'd revoke as much as possible, e.g.
    in-flight commands, mmaps, anything really that can be revoked.
  - For non-revokable things like these dma-buf we'd keep a drm_master
    reference around. This would prevent the next open to acquire
    ownership rights, which at least prevents all the nasty potential
    problems.
  - admin (or well container orchestrator) then has responsibility to
    shoot down all process until the problem goes away (i.e. until you hit
    the one with the rdma MR which keeps the dma-buf alive)

- Not sure there's another reasonable way to do this without inviting some
  problems once we get outside of the "single kernel instance per tenant"
  use-case.

Wrt implementation there's the trouble of this reinventing a bunch of drm
stuff and concepts, but that's maybe for after we've figured out
semantics.

Also would be great if you have a pull request for the userspace runtime
that shows a bit how this all gets used and tied together. Or maybe some
pointers, since I guess retconning a PR in github is maybe a bit much.

Cheers, Daniel

> 
> Thanks,
> Oded
> 
> Oded Gabbay (1):
>   habanalabs: define uAPI to export FD for DMA-BUF
> 
> Tomer Tayar (1):
>   habanalabs: add support for dma-buf exporter
> 
>  drivers/misc/habanalabs/Kconfig             |   1 +
>  drivers/misc/habanalabs/common/habanalabs.h |  22 +
>  drivers/misc/habanalabs/common/memory.c     | 522 +++++++++++++++++++-
>  drivers/misc/habanalabs/gaudi/gaudi.c       |   1 +
>  drivers/misc/habanalabs/goya/goya.c         |   1 +
>  include/uapi/misc/habanalabs.h              |  28 +-
>  6 files changed, 570 insertions(+), 5 deletions(-)
> 
> -- 
> 2.17.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
