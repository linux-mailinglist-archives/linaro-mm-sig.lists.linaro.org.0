Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C17E4386B7F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 22:37:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 110A160EE1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 20:37:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7685960FC4; Mon, 17 May 2021 20:37:04 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 46B186084F;
	Mon, 17 May 2021 20:37:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 68A6B604EE
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 20:36:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 667A46084F; Mon, 17 May 2021 20:36:59 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 5EB65604EE
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 20:36:57 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id j14so6039131wrq.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 13:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=oT1kfOKsvB3eKB/ISFtj3GgwhSj6SpZpAhs3W98vSHQ=;
 b=cigLzIjZCzsk3str9RA+LvaYg5qDuYK4bV4zG751sXnbfbLXPo7JG0jGrX5B+oeHSD
 VUTJ1FhtRYnSQkfdvekyXpHAPp5K9WTP1WnKoQwqYEOLX/1h81y3vYsymZ8sIK5+FpmJ
 t4ZHqG1/rvPEFLfhsgz8Dlz8Zzzj/WG+MtGJs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=oT1kfOKsvB3eKB/ISFtj3GgwhSj6SpZpAhs3W98vSHQ=;
 b=TfLSc/rTv3t7zV2b8fflZ+oVTS+s11M+MvQJNRZXyuSJ+Fz+pn5KeAhO74qGMXnjNu
 IoFSrhzvfP+s/nJtCzXSqjdTsqBcG4IUXG6hbBMJetu3MSDSkSruWIlM4wUrB3J0dNpw
 YQKEDenGR9E8UTD/BkdwQou6wbzBDmWxEqEwKoJcqc26kgEOnEGziOmUujOzGT31r2D3
 FJ8P+U031eDstGdTEYNXFfKesRWwYCJ1p56GYMd0OO2kOppw/AsKuWbS1ZhYEl2R+YWe
 rGCjNvGceIs7aujUPZyhLR8Y2VqLKXVrBb0suAoEd59Ck1P88OzxJlfvRb1cLBRWkl9n
 T6CA==
X-Gm-Message-State: AOAM532PGYpsjThP1inasjeZEMfDir7sM6GzbA5LXjg8ZvPIFcyaNjYf
 fEmxEBR1/7hxulyd9DkZ5oK46w==
X-Google-Smtp-Source: ABdhPJwfJaR6KRK5ct+Ys2UmzHOgpFgn5mw/saiMD8v2rH8oK3eVm9SpzLl799wQWfRSdgjXyON5SQ==
X-Received: by 2002:a5d:570c:: with SMTP id a12mr1797059wrv.354.1621283816448; 
 Mon, 17 May 2021 13:36:56 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 6sm17840361wry.60.2021.05.17.13.36.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 May 2021 13:36:55 -0700 (PDT)
Date: Mon, 17 May 2021 22:36:53 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YKLT5WO+7dKUVhyP@phenom.ffwll.local>
References: <20210517141129.2225-1-christian.koenig@amd.com>
 <20210517141129.2225-10-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210517141129.2225-10-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 09/11] dma-buf: add shared fence usage
 flags
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

On Mon, May 17, 2021 at 04:11:27PM +0200, Christian K=F6nig wrote:
> Add usage flags for shared fences and improve the documentation.
> =

> This allows driver to better specify what shared fences
> are doing with the resource.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
> index 16b869d9b1d6..c9bbc4630afc 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> @@ -700,7 +700,7 @@ static int ttm_bo_add_move_fence(struct ttm_buffer_ob=
ject *bo,
>  		return ret;
>  	}
>  =

> -	dma_resv_add_shared_fence(bo->base.resv, fence);
> +	dma_resv_add_shared(bo->base.resv, fence, DMA_RESV_USAGE_RW);

Entirely aside, but I ended up scratching my head a lot for why exactly
this here is a shared fence, and why that's ok. Since just looking at this
it seems like waiting for the memory allocation to actually be owned by
this driver is optional.

Is this ok because the next thing we'll do is a move, which will then set
the exclusive fence here. Which will then wait on the shared one here, so
it doesn't matter? Or well, allows us to pipeline the eviction of ttm_man
against whatever might be currently keeping the bo busy in it's current
place?

Might be good candidate to explain this in a comment or something like
that.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
