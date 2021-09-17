Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B33540FAA6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 16:45:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58A8D66740
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:45:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 527EC64AD6; Fri, 17 Sep 2021 14:45:39 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 943A96341D;
	Fri, 17 Sep 2021 14:45:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 86E696323F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:45:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 846B36341D; Fri, 17 Sep 2021 14:45:34 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 by lists.linaro.org (Postfix) with ESMTPS id 7BF666323F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:45:32 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id g8so30999380edt.7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 07:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=wz2r8Rw4gqbVGILBBsKjUR6eLdLizuihefxtloorVPI=;
 b=dGMlVF44MnGWCRZ8L0BQUFARQV3UIV2ckjuP2h0mTeMnC2rx1AQmsBDqh9NUl10eYg
 97kY/fQ7d7vLDu2qysmuF0Y6SRaryxtgQigFFsi0Cs4QDmHbLtNHqjYJL2Gl22iqKKpH
 h4U+lM/8nH6QEKWdzBQVwstmSCRzK2Kbo8i/k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=wz2r8Rw4gqbVGILBBsKjUR6eLdLizuihefxtloorVPI=;
 b=6LbcKLIv/LKhCEbG024l5w+uVoKx4DWgEbF2ap0+ZJPX+LCsqDzN8gHEIyn+kIXJq3
 TvZ1rEWmRrnl+FR9CduiBAASh0hSmtYj+/HEM4/Av6hmWlsq1S7V/b2ARjuMdVHs9Uge
 /Y78d75+VrCa9OGQpjL24wW4/HfkLI3h2OplUfJP2EnzPjOoFfz6f94QGebUTElLaN68
 nRv1dxexc2tIYlC5lIxc9i4X39gAAwk+Q13oaC5mFw041UcBjoneHQHH8cr/C6UpCXwv
 Y0zGs3b31NrOX6tPrZxyuLipYNUdD0zvokqhRZ/Mn+FFPHTr6zrd20l5fTpiP/2UQt6/
 ysgg==
X-Gm-Message-State: AOAM5313YzALye/FMtmTYV1Akc6KuTLyuZY/gEGRsHWorHJU2Or6flX0
 j70WJMVTteqoAJcHMIJ+I/MPtg==
X-Google-Smtp-Source: ABdhPJyyblJCLjZajzeKpqWDj9X2cRAcImcMI5oX9JtcEMGLvT6fyS0mnqKK2zSi0SFdhRRdLUWHzA==
X-Received: by 2002:a17:906:1856:: with SMTP id
 w22mr13230531eje.393.1631889931009; 
 Fri, 17 Sep 2021 07:45:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b3sm2105487edx.55.2021.09.17.07.45.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 07:45:30 -0700 (PDT)
Date: Fri, 17 Sep 2021 16:45:28 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YUSqCIxUbkk0qCO9@phenom.ffwll.local>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-7-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917123513.1106-7-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 06/26] dma-buf: use new iterator in
 dma_resv_test_signaled
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
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Sep 17, 2021 at 02:34:53PM +0200, Christian K=F6nig wrote:
> This makes the function much simpler since the complex
> retry logic is now handled elsewhere.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-resv.c | 56 ++++++--------------------------------
>  1 file changed, 9 insertions(+), 47 deletions(-)
> =

> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index c7db553ab115..d8f428ddaedd 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -593,22 +593,6 @@ long dma_resv_wait_timeout(struct dma_resv *obj, boo=
l wait_all, bool intr,
>  EXPORT_SYMBOL_GPL(dma_resv_wait_timeout);
>  =

>  =

> -static inline int dma_resv_test_signaled_single(struct dma_fence *passed=
_fence)
> -{
> -	struct dma_fence *fence, *lfence =3D passed_fence;
> -	int ret =3D 1;
> -
> -	if (!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &lfence->flags)) {
> -		fence =3D dma_fence_get_rcu(lfence);
> -		if (!fence)
> -			return -1;
> -
> -		ret =3D !!dma_fence_is_signaled(fence);
> -		dma_fence_put(fence);
> -	}
> -	return ret;
> -}
> -
>  /**
>   * dma_resv_test_signaled - Test if a reservation object's fences have b=
een
>   * signaled.
> @@ -625,43 +609,21 @@ static inline int dma_resv_test_signaled_single(str=
uct dma_fence *passed_fence)
>   */
>  bool dma_resv_test_signaled(struct dma_resv *obj, bool test_all)
>  {
> +	struct dma_resv_iter cursor;
>  	struct dma_fence *fence;
> -	unsigned int seq;
> -	int ret;
>  =

>  	rcu_read_lock();
> -retry:
> -	ret =3D true;
> -	seq =3D read_seqcount_begin(&obj->seq);
> -
> -	if (test_all) {
> -		struct dma_resv_list *fobj =3D dma_resv_shared_list(obj);
> -		unsigned int i, shared_count;
> -
> -		shared_count =3D fobj ? fobj->shared_count : 0;
> -		for (i =3D 0; i < shared_count; ++i) {
> -			fence =3D rcu_dereference(fobj->shared[i]);
> -			ret =3D dma_resv_test_signaled_single(fence);
> -			if (ret < 0)
> -				goto retry;
> -			else if (!ret)
> -				break;
> +	dma_resv_iter_begin(&cursor, obj, test_all);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> +		if (!dma_fence_is_signaled(fence)) {

Should we be extremely clever and document that the iterator already
filters out unsignalled fences? We could rely on that here :-) Otoh we
don't want to make the full is_signalled check in that iterator, so this
makes sense.

Again rcu_read_lock into the iterators pls. With that:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +			dma_resv_iter_end(&cursor);
> +			rcu_read_unlock();
> +			return false;
>  		}
>  	}
> -
> -	fence =3D dma_resv_excl_fence(obj);
> -	if (ret && fence) {
> -		ret =3D dma_resv_test_signaled_single(fence);
> -		if (ret < 0)
> -			goto retry;
> -
> -	}
> -
> -	if (read_seqcount_retry(&obj->seq, seq))
> -		goto retry;
> -
> +	dma_resv_iter_end(&cursor);
>  	rcu_read_unlock();
> -	return ret;
> +	return true;
>  }
>  EXPORT_SYMBOL_GPL(dma_resv_test_signaled);
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
