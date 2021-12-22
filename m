Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA4E47D8AD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 22:23:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 24501610BE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Dec 2021 21:23:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A214661082; Wed, 22 Dec 2021 21:23:20 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 929A460DC1;
	Wed, 22 Dec 2021 21:23:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6813F606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:23:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6065660DC1; Wed, 22 Dec 2021 21:23:05 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by lists.linaro.org (Postfix) with ESMTPS id 42069606D5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 21:23:03 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id b13so13506053edd.8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Dec 2021 13:23:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=7uCwVgIdUNyS2+Vf8fBeHDqgyCKmyllVBt9AhJderrQ=;
 b=OFb4TBFRFmRtLgziqM2CU3Xz/keCLRPRbJxJLqSIzPw5DsjC77+SED3+wEqweXZu/r
 7f53W11o9hzg3gdkyNlw+8upEFr7t4TQVmqHZcqTjXzUvqpX8nW36zyW9isb3N8Jp7d4
 rznjmDEjh0Xj8pBPNSJvAmLkVwdGzapOlXhC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=7uCwVgIdUNyS2+Vf8fBeHDqgyCKmyllVBt9AhJderrQ=;
 b=Ben1w73auxsAXN+dG2fUGXtne7fi4nbBWuvX5kMD1Fsx5bPVObJtQfch+xZIZWxurq
 Z5P0qa6pgJmfcAQQxLnbyGGUMr/mtyKvUNctxvj4oBoNl7kqxg2u1VZ3SlwJItO4/11K
 +SLE/s3zgXts42KHst9u18sQtViDzTq/F8km7cA0+Tic2lEB9gFNq9HS8b0TAW/rOvTE
 P5C/F9C9oHEt+A3vWFVsDvADqMjC/FEzBWHuAl/lqObMQveDh2MRup3sxgd1hvQHqZ2e
 HeBNME7z5OcvHYPgxNxYf80dOWBxpQxVDHE4lt1T3LFkpWgW/8Phxie4m+7RDLTX8jRt
 I7lg==
X-Gm-Message-State: AOAM532zffb6iRI5I4AtD8/JqC9xp96fQtHbYlXB7S8XUIjAPJ3WJXni
 TbR9zi8ABWtg7g1So0CTwhw08Q==
X-Google-Smtp-Source: ABdhPJzmRP8AML3qliy2Op5iUsEArD0nhe3n5SG1dTwdhl3Xs7qcVR7f3Ddt4pQqd/BGaE2rQkP+2A==
X-Received: by 2002:a17:907:1629:: with SMTP id
 hb41mr4114530ejc.328.1640208182181; 
 Wed, 22 Dec 2021 13:23:02 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id jt4sm1061781ejb.105.2021.12.22.13.23.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:23:01 -0800 (PST)
Date: Wed, 22 Dec 2021 22:23:00 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YcOXNNxN4WajDN4L@phenom.ffwll.local>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-6-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207123411.167006-6-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 05/24] RDMA: use dma_resv_wait() instead
 of extracting the fence
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

On Tue, Dec 07, 2021 at 01:33:52PM +0100, Christian K=F6nig wrote:
> Use dma_resv_wait() instead of extracting the exclusive fence and
> waiting on it manually.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

No rdma lists nor maintainers on cc, so no chances to get the ack you need
to merge this through drm-misc-next.


> ---
>  drivers/infiniband/core/umem_dmabuf.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/infiniband/core/umem_dmabuf.c b/drivers/infiniband/c=
ore/umem_dmabuf.c
> index f0760741f281..d32cd7538835 100644
> --- a/drivers/infiniband/core/umem_dmabuf.c
> +++ b/drivers/infiniband/core/umem_dmabuf.c
> @@ -16,7 +16,6 @@ int ib_umem_dmabuf_map_pages(struct ib_umem_dmabuf *ume=
m_dmabuf)
>  {
>  	struct sg_table *sgt;
>  	struct scatterlist *sg;
> -	struct dma_fence *fence;
>  	unsigned long start, end, cur =3D 0;
>  	unsigned int nmap =3D 0;
>  	int i;
> @@ -68,11 +67,8 @@ int ib_umem_dmabuf_map_pages(struct ib_umem_dmabuf *um=
em_dmabuf)
>  	 * may be not up-to-date. Wait for the exporter to finish
>  	 * the migration.
>  	 */
> -	fence =3D dma_resv_excl_fence(umem_dmabuf->attach->dmabuf->resv);
> -	if (fence)
> -		return dma_fence_wait(fence, false);
> -
> -	return 0;
> +	return dma_resv_wait_timeout(umem_dmabuf->attach->dmabuf->resv, false,
> +				     false, MAX_SCHEDULE_TIMEOUT);

I think a wrapper for dma_resv_wait() without timeout would be neat, which
we lack. Either way:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  }
>  EXPORT_SYMBOL(ib_umem_dmabuf_map_pages);
>  =

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
