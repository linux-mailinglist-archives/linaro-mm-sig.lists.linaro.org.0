Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C44BE3B1D62
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jun 2021 17:15:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE01C63524
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jun 2021 15:15:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ACCFF6114F; Wed, 23 Jun 2021 15:15:17 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBC3861150;
	Wed, 23 Jun 2021 15:15:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C6D7D6114E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 15:15:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BC7EA61150; Wed, 23 Jun 2021 15:15:12 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by lists.linaro.org (Postfix) with ESMTPS id B10596114E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 15:15:10 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id gn32so4628656ejc.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 08:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=DvsYEcXsNWTy6Jnkq47KIklkbgVvy5KtMShh7FtY3u0=;
 b=WlyCtxxrit0F13PB5LKVc4W8ioTDxZGoz0BDxhp5ADy/+x0DPfJAboMCXqIWhMcdLM
 fG/7Lud5ltzga56OxZ3HjQOTY4JYgDVcvHd5L5Es73O2G10XryTWLzzy68cbS0Bc9LMT
 Vy9D6jY1Dy+wQUgKscUFQz8BiTIsqJcWTtFOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=DvsYEcXsNWTy6Jnkq47KIklkbgVvy5KtMShh7FtY3u0=;
 b=jUrhYx+gfhX7e0BWpR0cGNLfgj2LAT3mb7R44qbE5G9oFqKbSicz6AvoI94DbFwS5K
 iKnGBD216kn8jEOh+Yr8wvOar4BqSIQ+2x0JSAasn5BAy0KNIuUmO437zzwuXzlquxpU
 /G1J7jh+PI7aTI4JR1uhRLlZlsylJNWjf6zj39NC2vak+Rng4+t/8NrACQyM1LLKpWBf
 TTEG6UqIcqz4/fR3CUav2Q5DE6leRSnHJ04dDEam7fP0Ex3pTdJzumHn4uhJT1mI+Opb
 84drNbDsJA+1qPSGjB8216nNtZtIgXBST+70IMnmAe8Lyd/MmwqOjzteWkdnDMvuszwj
 g19A==
X-Gm-Message-State: AOAM533KhKuEcUy5zQj6I6NPaUDGfh0DR8wSsizs0PLy0w7nwc0nv3+0
 CKlWtNFjpBWCdqrzn8kdOrY6ChpBekYRng==
X-Google-Smtp-Source: ABdhPJzKLxUo3F8LpT0py8NX3d9PVLeW21ZVMvCiRMqKaQMl+9VP6WwlxqUsTydvPwu4FdZbDj+/aA==
X-Received: by 2002:a17:906:2608:: with SMTP id
 h8mr531968ejc.380.1624461309756; 
 Wed, 23 Jun 2021 08:15:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h6sm192144edj.91.2021.06.23.08.15.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jun 2021 08:15:09 -0700 (PDT)
Date: Wed, 23 Jun 2021 17:15:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YNNP+0YuiqsBxpZK@phenom.ffwll.local>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
 <20210622165511.3169559-2-daniel.vetter@ffwll.ch>
 <87f6529c-caf0-6e4b-6506-b0e2d1a0f9e0@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87f6529c-caf0-6e4b-6506-b0e2d1a0f9e0@amd.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 01/15] dma-resv: Fix kerneldoc
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Jun 23, 2021 at 10:31:18AM +0200, Christian K=F6nig wrote:
> Am 22.06.21 um 18:54 schrieb Daniel Vetter:
> > Oversight from
> > =

> > commit 6edbd6abb783d54f6ac4c3ed5cd9e50cff6c15e9
> > Author: Christian K=F6nig <christian.koenig@amd.com>
> > Date:   Mon May 10 16:14:09 2021 +0200
> > =

> >      dma-buf: rename and cleanup dma_resv_get_excl v3
> > =

> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Sumit Semwal <sumit.semwal@linaro.org>
> > Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> > Cc: linux-media@vger.kernel.org
> > Cc: linaro-mm-sig@lists.linaro.org
> =

> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>

Pushed to drm-misc-next.
-Daniel

> =

> > ---
> >   include/linux/dma-resv.h | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> > index 562b885cf9c3..e1ca2080a1ff 100644
> > --- a/include/linux/dma-resv.h
> > +++ b/include/linux/dma-resv.h
> > @@ -212,7 +212,7 @@ static inline void dma_resv_unlock(struct dma_resv =
*obj)
> >   }
> >   /**
> > - * dma_resv_exclusive - return the object's exclusive fence
> > + * dma_resv_excl_fence - return the object's exclusive fence
> >    * @obj: the reservation object
> >    *
> >    * Returns the exclusive fence (if any). Caller must either hold the =
objects
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
