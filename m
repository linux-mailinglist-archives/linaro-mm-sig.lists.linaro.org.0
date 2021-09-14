Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B611D40B443
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 18:12:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0310B61ED8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 16:12:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E69B861C3D; Tue, 14 Sep 2021 16:12:27 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 910FE6194E;
	Tue, 14 Sep 2021 16:12:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1C6AE61021
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 16:12:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 107F56194E; Tue, 14 Sep 2021 16:12:22 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 by lists.linaro.org (Postfix) with ESMTPS id 05AB861021
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 16:12:19 +0000 (UTC)
Received: by mail-qk1-f177.google.com with SMTP id y144so15438775qkb.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 09:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=I7DiJbd0cxUCLQIOVYzn8bpAGXC1DpRRoThWyrXU5us=;
 b=VLAPpylLAYTeobmTkVR3mMWEApbSzQVCY6y9NZmlGqOYAYmCLqLovz+JRKOW4zbFQO
 SsICmqARfpElDi01jfGPfhfGp+XbjOWG5j7xhqkXBcfxNTtfN0Q2EHL2YIPXJAmE5lqq
 9fO4vT4ebWpM51oXh2PN3UzJN/nZE167NxFttlYk9zDneLRVxgg54Ms6stPw+IfwS8fE
 BcU8DH0Wkz0TT/2TEuDT6T2VOxScMtYxzNvvbGLNasoE4MraqR/e/O1maoUvya4XQnt5
 8ZqntLHL5K06ZWcY7hFsB6CkWDvb6eMwUQMOMC/DyK5zV21pUx/5Wgk/nJhjm274HIe8
 i/Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=I7DiJbd0cxUCLQIOVYzn8bpAGXC1DpRRoThWyrXU5us=;
 b=QMzmgGKperWA9pVqwy+B0/wFIdz/3ZU+7PUOvtxcF1k0KUTfNaJU1Grdb57LOA6p0j
 ztUkTGPDVseBQG87ccHicLik5Dwe+3l71YAZVPKEAeaqhlpefRqBxN/XETVrQ69bF16e
 eq6h86co4ydK+zSZ66BiVt4/Ln2EO8ela/fQU9VA9B+CwXMzH7aeRr9ns71/J8oVDOZ2
 8NKOdUA47kNmb4J0eDFNGMzib/d1+XKXl5jN/ej9DN5HwOGEPYtqDQ0Gb6I1AfAeOZx4
 3QsIDKoMXcCR6gvuKOFbGAVKwNWTDBKLBO6+kUW74eP5HwoToLy9vyaK/si+PEzWKil9
 YOSA==
X-Gm-Message-State: AOAM532wwgGBelz4tcePXLViL8KWziRvwP0Gvx2CEITSSGl6nXGnjE+u
 tz6yX9lst2z/W28Ce6vA5y1iFg==
X-Google-Smtp-Source: ABdhPJx4jViYSyei0WdKfCFMJbXr109wAbeh5pMtA2HJlrp+YG8SrdRPcGb67UHsXDEjE3Pl7PPDDA==
X-Received: by 2002:a05:620a:4541:: with SMTP id
 u1mr5785047qkp.106.1631635939466; 
 Tue, 14 Sep 2021 09:12:19 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-162-113-129.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.162.113.129])
 by smtp.gmail.com with ESMTPSA id s18sm7826361qkj.87.2021.09.14.09.12.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Sep 2021 09:12:18 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1mQB2g-000UiF-8O; Tue, 14 Sep 2021 13:12:18 -0300
Date: Tue, 14 Sep 2021 13:12:18 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org, christian.koenig@amd.com,
 galpress@amazon.com, sleybo@amazon.com,
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org,
 linux-media@vger.kernel.org, dledford@redhat.com, airlied@gmail.com,
 alexander.deucher@amd.com, leonro@nvidia.com, hch@lst.de,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
Message-ID: <20210914161218.GF3544071@ziepe.ca>
References: <20210912165309.98695-1-ogabbay@kernel.org>
 <YUCvNzpyC091KeaJ@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YUCvNzpyC091KeaJ@phenom.ffwll.local>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Sep 14, 2021 at 04:18:31PM +0200, Daniel Vetter wrote:
> On Sun, Sep 12, 2021 at 07:53:07PM +0300, Oded Gabbay wrote:
> > Hi,
> > Re-sending this patch-set following the release of our user-space TPC
> > compiler and runtime library.
> > 
> > I would appreciate a review on this.
> 
> I think the big open we have is the entire revoke discussions. Having the
> option to let dma-buf hang around which map to random local memory ranges,
> without clear ownership link and a way to kill it sounds bad to me.
> 
> I think there's a few options:
> - We require revoke support. But I've heard rdma really doesn't like that,
>   I guess because taking out an MR while holding the dma_resv_lock would
>   be an inversion, so can't be done. Jason, can you recap what exactly the
>   hold-up was again that makes this a no-go?

RDMA HW can't do revoke.

So we have to exclude almost all the HW and several interesting use
cases to enable a revoke operation.

>   - For non-revokable things like these dma-buf we'd keep a drm_master
>     reference around. This would prevent the next open to acquire
>     ownership rights, which at least prevents all the nasty potential
>     problems.

This is what I generally would expect, the DMABUF FD and its DMA
memory just floats about until the unrevokable user releases it, which
happens when the FD that is driving the import eventually gets closed.

I still don't think any of the complexity is needed, pinnable memory
is a thing in Linux, just account for it in mlocked and that is
enough.

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
