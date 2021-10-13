Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A73342C347
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 16:32:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5667361516
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 14:32:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4697461793; Wed, 13 Oct 2021 14:32:25 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 967CA6141E;
	Wed, 13 Oct 2021 14:32:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3E5AD607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:32:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 333266141E; Wed, 13 Oct 2021 14:32:19 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by lists.linaro.org (Postfix) with ESMTPS id 12D9C607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:32:17 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id e3so8957181wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 07:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=iKQ96m1zzkQMuFL3fcXQPzaxnnE4DluBXjRvFkSR5wI=;
 b=ODf6itJ3fnWbDlharuS4Wj+1XeDkgwC8SSXHTy+CeDfYmS8y1a4+OuduJ3MChaifTP
 GgeKZkeLiaUbLvIOiC9S9XqAmkICJYYBhlnJYHE/QKU/OA30SExGMtA3ucg3zDbW//2+
 KcKkk1wVoLLSvWfWDVDOeUNBKIGDSsrz3/GoE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=iKQ96m1zzkQMuFL3fcXQPzaxnnE4DluBXjRvFkSR5wI=;
 b=qsd/UyOnBvJNGsAeiSYoFPATHpwny1aUf4pQ1ohaIb3+0abiuhIl+thRUHyKOZMfGt
 s9DiDZyl41pAbVhKbZPPINd8YnyJZcdDTcC3CuBrYYW+F0UOoYX5FHv4MeAe6DoLD7Gq
 21mWXbx/X5Z+7J4FuIXMWU96R6o8vU9uc1lluOd1JmuIUPEJIkmrpWcg6fl+P2i80WTm
 0Ugt4P55Lh6YIbqxnt/mBjUh8ERui2Lxr4UTnHe/UclfM3GJzgoSGpRzYuZzL4nVgPB/
 Lrgd34yqqupGB10SkuBWXg44HMqroCK0Ea23hCY2GvetEeOj8R0FZI7FUGZ/jFAwQE2E
 4QTw==
X-Gm-Message-State: AOAM531dLjBytWdsmkLN9M1Hp+4yZPIF/MH6568BhlRGXIJFYikwb4jQ
 lWlGulwMN19azlXtdaxEL7Nq/w==
X-Google-Smtp-Source: ABdhPJxOOVUWtj4KaDAa/dBN+HmwBExqoN7dFMBZ9hrJ2SWC4H73/jm3/GoodLipJP6b1uo6WHOAGQ==
X-Received: by 2002:a7b:c114:: with SMTP id w20mr13006075wmi.143.1634135535984; 
 Wed, 13 Oct 2021 07:32:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b19sm5756585wmb.1.2021.10.13.07.32.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:32:15 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:32:13 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YWbt7cLOLDSQhkOV@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-29-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005113742.1101-29-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 28/28] drm/etnaviv: replace
 dma_resv_get_excl_unlocked
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
Cc: tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 daniel@ffwll.ch, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Oct 05, 2021 at 01:37:42PM +0200, Christian K=F6nig wrote:
> We certainly hold the reservation lock here, no need for the RCU dance.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c b/drivers/gpu/d=
rm/etnaviv/etnaviv_gem_submit.c
> index 4dd7d9d541c0..7e17bc2b5df1 100644
> --- a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
> @@ -195,7 +195,7 @@ static int submit_fence_sync(struct etnaviv_gem_submi=
t *submit)
>  			if (ret)
>  				return ret;
>  		} else {
> -			bo->excl =3D dma_resv_get_excl_unlocked(robj);

Maybe have that in the series to sunset dma_resv_get_excl_unlocked()? Just
so it makes a bit more sense from a motivation pov. Or explain that in the
commit message.

Anyway looks correct.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> +			bo->excl =3D dma_fence_get(dma_resv_excl_fence(robj));
>  		}
>  =

>  	}
> -- =

> 2.25.1
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
