Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 14321462F2A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 10:02:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F162661B00
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 09:02:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C802261A49; Tue, 30 Nov 2021 09:02:17 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F2B560E25;
	Tue, 30 Nov 2021 09:02:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7406A6090F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 09:02:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4DEF060E25; Tue, 30 Nov 2021 09:02:12 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by lists.linaro.org (Postfix) with ESMTPS id 414C06090F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 09:02:10 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id d9so21896239wrw.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 01:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=SyhOY1PWVHdj7OGLzuhI+3QnabA2X3t1wGqtY/Cum7o=;
 b=WwH7MvELKyxjjGwc9yiPsyAAIBuF06DvxGYA/WES6IfpRL3NVHrVKKnvpMKaQ6PJA5
 mykiDsNEKYKjPzfhIkzfa0dgIhrUaySGoMtOSwTMMWbcn7bxmVTQzeVIecytjaKeRWCJ
 EzTT47ZYbGku37TfsYG3lYHRrnKE8aD5dYSik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=SyhOY1PWVHdj7OGLzuhI+3QnabA2X3t1wGqtY/Cum7o=;
 b=CSY8EVPc6iUy+bmzdKhGiT4P3Dd7+gt4F8m+dt+0AGvXJR72/txBdnzMquCsKrg4K0
 42uflxEqfF3z5rGEDgEwsBJWoR9/tj/o2nWhbxuom8G4IIfLbwsJXagIDjDdstmJveAv
 d2e8cWi6qPeVUD1pZ98CG+vstHuyo4lrsLJVp87M4zhrXkS1m8XO1759iwFythx+qhgG
 cMryOgwTo5M7w2DmZSH6Cs19G3eEcqmYe2vXsy6D6WspIWNkOisWKFVfOPX3VLGKkm8j
 5unXduCPr0V7Ftrnz1yZnHIWXNj5On06nV/Yq2HxApIBiKCKfhIwUd5TqdZyxfU3Y3b4
 mK0w==
X-Gm-Message-State: AOAM533nb64wO2/UbAh9s3HUnCDGXe3JA+Wx2evNoFFVifjKt2zRMYRi
 In4TO6XZLucL4i9z0fWTB+dw4PgdzbRKDA==
X-Google-Smtp-Source: ABdhPJzIghKd5RuGlVbrc+DKuTzdkXkSPPV5i18aTKE6MdkrhHBQB8No2j9Zb80BZ0xtQuH7QekziQ==
X-Received: by 2002:a05:6000:12d2:: with SMTP id
 l18mr39532679wrx.289.1638262929322; 
 Tue, 30 Nov 2021 01:02:09 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h204sm1797534wmh.33.2021.11.30.01.02.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Nov 2021 01:02:08 -0800 (PST)
Date: Tue, 30 Nov 2021 10:02:07 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YaXoj3fzu0cfhd6j@phenom.ffwll.local>
References: <20211129120659.1815-1-christian.koenig@amd.com>
 <20211129120659.1815-3-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211129120659.1815-3-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 02/28] drm/ttm: stop pruning fences
 after wait
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Nov 29, 2021 at 01:06:33PM +0100, Christian K=F6nig wrote:
> This is just abusing internals of the dma_resv object.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Yeah I think if we want this back we could do a _locked version of the
wait, which prunes internally.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Btw I wonder, should we put the ttm_bo_wait wrapper on the chopping block
in gpu/todo.rst? It's really just complications I think in most cases. And
it would be nice if ttm has the same errno semantics for these as everyone
else, I always get very confused about this stuff ...

Cheers, Daniel

> ---
>  drivers/gpu/drm/ttm/ttm_bo.c | 1 -
>  1 file changed, 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
> index e4a20a3a5d16..fc124457ba2f 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> @@ -1086,7 +1086,6 @@ int ttm_bo_wait(struct ttm_buffer_object *bo,
>  	if (timeout =3D=3D 0)
>  		return -EBUSY;
>  =

> -	dma_resv_add_excl_fence(bo->base.resv, NULL);
>  	return 0;
>  }
>  EXPORT_SYMBOL(ttm_bo_wait);
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
