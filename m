Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD1C3ABCAB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 21:26:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B179863524
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 19:26:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C8AFC63538; Thu, 17 Jun 2021 19:26:16 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE4B663500;
	Thu, 17 Jun 2021 19:26:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 19883634F3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 19:26:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0B8A463500; Thu, 17 Jun 2021 19:26:12 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id F422F634F3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 19:26:09 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id a11so7985873wrt.13
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 12:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=uOCbhZ/ibkRBObHTOgKs1UFBQ9qhD4uIcfjgRg2K5Rs=;
 b=IH1EtHRcSfinmclrpIc4Ng6Z7QMgqeen5j6b9qDw9LlX3wUMNyz7FR5R2CPO52LkTf
 QD+gv9wIv5pC6wI/j5ngc570YTPSoQC2HVxc+/PgCaUlG19XD4VHTKEeFdM63kxC4KXb
 RWLz1Vo9kZ1DZtt0ovCaSIdBs4XA0bFdD5FjA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=uOCbhZ/ibkRBObHTOgKs1UFBQ9qhD4uIcfjgRg2K5Rs=;
 b=uNxRpVWfl4amZZCzCW5shHSCNp6CJhJnuptRxr2NNDbiXh5veg/61g4BUJA92pmCnH
 OZWtn6vQeZhpil1nxmHsnvC1aQS3AfDYK6pnDhINwa43vGe+qSzyEYxMlhsZ9WHzdNKN
 TlKAFBpCopZAhbS8vaT21TQ9E9bu51fdNMmJYSeTawDs82Jva/sY1EK8QqplWGpPUbHm
 DCvMtJax7bQNAw34/G/9vQAkzvUIoOTpdq3XjTALiSNi4YM5oGogc77ykA1NPSQ1tct1
 bdzkRcMdturZtw04c3AKXnemssvkwjMOnJroaPq4DnQpmlpuValrZutGjMczeIq+deHt
 o0sg==
X-Gm-Message-State: AOAM533ZxXqhRUYCDIELQr3Ck5VD9klJ+UhwNwrHRA0mwPmQCDccrRLI
 mOKwHyPRVzQuKifhJawyxdmrYg==
X-Google-Smtp-Source: ABdhPJyFfhTApY3wh24dH1FBegs1U/7U9Tg5s0DawhN6NGiIRg2uLHMj8Cb4gBd6mBJpG1xllNPadg==
X-Received: by 2002:adf:e80c:: with SMTP id o12mr4048275wrm.425.1623957969045; 
 Thu, 17 Jun 2021 12:26:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r6sm6181038wrz.91.2021.06.17.12.26.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 12:26:08 -0700 (PDT)
Date: Thu, 17 Jun 2021 21:26:06 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YMuhzpyiNMSz3Nx+@phenom.ffwll.local>
References: <20210616082655.111001-1-christian.koenig@amd.com>
 <20210616082655.111001-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210616082655.111001-2-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 1/7] dma-buf: add some more kerneldoc to
 dma_resv_add_shared_fence
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

On Wed, Jun 16, 2021 at 10:26:49AM +0200, Christian K=F6nig wrote:
> Explicitly document that code can't assume that shared fences
> signal after the exclusive fence.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-resv.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index f26c71747d43..4ab02b6c387a 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -235,7 +235,10 @@ EXPORT_SYMBOL(dma_resv_reset_shared_max);
>   * @fence: the shared fence to add
>   *
>   * Add a fence to a shared slot, obj->lock must be held, and
> - * dma_resv_reserve_shared() has been called.
> + * dma_resv_reserve_shared() has been called. The shared fences can sign=
al in
> + * any order and there is especially no guarantee that shared fences sig=
nal
> + * after the exclusive one. Code relying on any signaling order is broke=
n and
> + * needs to be fixed.

So I agree this are reasonable semantics, but you need to audit drivers
first. Because currently that's not how at least a bunch of them work.
There's way more drivers than the handful you've looked at.

Imo gold standard here is what I've tried doing for the "how do we set
fences" side, which is going through all of them. The trouble is that this
is a bit nastier, because a) drivers play much more tricks here and b)
understand each driver's scheduling logic is more work than how they set
fences for a request/cs.

Unfortunately I haven't gotten around to doing that yet, because it means
a few days of uninterrupted time crawling through way too much code. I
haven't even found time to respin my old series to make the fence setting
more consistent (since I find a few more issues there than just the amdgpu
one that sparked it all).
-Daniel

>   */
>  void dma_resv_add_shared_fence(struct dma_resv *obj, struct dma_fence *f=
ence)
>  {
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
