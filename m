Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BA93A3B7600
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jun 2021 17:55:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C413565FE4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jun 2021 15:55:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4BCF1631D0; Tue, 29 Jun 2021 15:55:25 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A47B760A41;
	Tue, 29 Jun 2021 15:55:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5E55760570
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Jun 2021 15:55:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5C2AA60A41; Tue, 29 Jun 2021 15:55:21 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 4FE5E60570
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Jun 2021 15:55:19 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id g7so21817395wri.7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Jun 2021 08:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=WEojPjsV3ykyxbi9z7NRgZv6sToKhUFLAsfPvjr4z+E=;
 b=kav40qXis5AYEd1L7EDM6xxJivVvxbNSKSq+CBd5s+18VHu75OqZrXoI+sY+3/1k6t
 +00O8pauIDVVjBILhvdBPu4wUErbUhmbZermGLoCv9sB5xLLeUgW9PhBNqBhLLlJd4R0
 eXT70pVBcNa+evB30t/7wTKlxa/kXzLRBdMu0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=WEojPjsV3ykyxbi9z7NRgZv6sToKhUFLAsfPvjr4z+E=;
 b=WE/FjU6IZV3wNuERcjO6H1E4nbDc4z0wvLwkUgO9LMiTK5hb15bs3oB6MYzTaVb9J5
 XiAqlXCjCiDUMuGcYFDuRybw7iL/NS1tO8wmN2PFZyIulZmygGBTWJIJ1dGPg1KsEvbb
 jK3y/TV4f/fWQrMyOW3SlQ8pXi+GGo7nN+S5Q4KzXyzga7sO46308ngoabWnvUW/AHF0
 5W7G4AI9RUtoDcOB0Yt+HZ/I+prnXQjq2icczEkgsx660wdisFA1lpS0W4MOQrI21jCB
 QO/JFPJEL9SXx2tRsfju8vMGkt61xb+UkQ+Oa96K1kPh2RuS9EMkp5DaxzAzJa1s5uv2
 bxRw==
X-Gm-Message-State: AOAM530Ri7G5EwkBTP9+402LMerQpPaMGb2p/t9kvsHUxAOvpbm/DCqw
 rBLkiSwd4qN1qaj5iQtamNdh4A==
X-Google-Smtp-Source: ABdhPJwy//RfOpOtuDUFzUPw0qGyBWCU1xYg2FxNtD+pBORPuM1k7hT2WqXFwV1cl1tJjWezk3iDOA==
X-Received: by 2002:adf:f246:: with SMTP id b6mr8264853wrp.331.1624982118145; 
 Tue, 29 Jun 2021 08:55:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t16sm4438422wrx.89.2021.06.29.08.55.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 08:55:17 -0700 (PDT)
Date: Tue, 29 Jun 2021 17:55:15 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <YNtCYyHXOrObRUDK@phenom.ffwll.local>
Mail-Followup-To: Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
References: <20210628004012.6792-1-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210628004012.6792-1-rdunlap@infradead.org>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH -next] <linux/dma-resv.h>: correct a
 function name in kernel-doc
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
Cc: linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Sun, Jun 27, 2021 at 05:40:12PM -0700, Randy Dunlap wrote:
> Fix kernel-doc function name warning:
> =

> ../include/linux/dma-resv.h:227: warning: expecting prototype for dma_res=
v_exclusive(). Prototype was for dma_resv_excl_fence() instead
> =

> Fixes: 6edbd6abb783d ("ma-buf: rename and cleanup dma_resv_get_excl v3")
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: Christian K=F6nig <christian.koenig@amd.com>
> Cc: linux-media@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linaro-mm-sig@lists.linaro.org

Queued up, thanks for your patch (and the handy -next signifier in the
patch tag). I think Christian had the fix for this already, but queued up
in the next branch (for the 5.15 merge window, we're already prepping
stuff there to avoid late feature additions for 5.14), so applied yours
once more to the right tree.

Cheers, Daniel

> ---
>  include/linux/dma-resv.h |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> --- linux-next-20210625.orig/include/linux/dma-resv.h
> +++ linux-next-20210625/include/linux/dma-resv.h
> @@ -212,7 +212,7 @@ static inline void dma_resv_unlock(struc
>  }
>  =

>  /**
> - * dma_resv_exclusive - return the object's exclusive fence
> + * dma_resv_excl_fence - return the object's exclusive fence
>   * @obj: the reservation object
>   *
>   * Returns the exclusive fence (if any). Caller must either hold the obj=
ects

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
