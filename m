Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 03398462F3F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 10:06:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B88761A27
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 09:06:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EF46A617AB; Tue, 30 Nov 2021 09:06:37 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0102760E25;
	Tue, 30 Nov 2021 09:06:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EA4A96090F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 09:06:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E440960E25; Tue, 30 Nov 2021 09:06:31 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by lists.linaro.org (Postfix) with ESMTPS id D35536090F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 09:06:29 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id 137so16796279wma.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 01:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=1dBZLbZF5dWyM/EMU1vFF6wg/o7BNOVLFgZ+CDZNwEw=;
 b=aU52l4grnl9Q6gd5C2o3kKic3WMh2p6CdW3kAm0pct7ZVvj7zU0BBh45fQmrmHOztg
 OxdsB7YWiGeA0lvH/JfF7DQhVOLZIlW2u8W7aZXa+iVfVwo8JwUx+3bfN76SZPeiCN+5
 9X8sJnE+ZtPAD1r6WM9Rh6r6UfwKe5jIiRFwc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=1dBZLbZF5dWyM/EMU1vFF6wg/o7BNOVLFgZ+CDZNwEw=;
 b=aZP9PsHor+sbhZsAIFA5IF+1GRVmJRk3PRYuRZVOaCZSC3seQ6AHPHhoAaeYWHiOG/
 4/4wKxlYzVNwsOxDWFwDHkjJv/rp0yC1Gn7hYeFrHXAhqiI9aWpiqcPWdxo2gKGTr3uo
 P4a8VnUJNBTbxdQA0c0tDNUPbALV1++ZuX+4HVmz4Su0ZS0UDnmx552IKOcjijk28KMf
 SXueB+Mz//LMxQQgIRaQq96lwwzvxZuIqpbdMr3fKG8R5vgOAlgWIBGAb9eaKfbhgMO5
 WrVSMrwZhBLFFwuJMyJnbar0zxmPLDPVvaYLifVP0VXMo2vgqh37/x0K0iWHDx0e6rCM
 FBGA==
X-Gm-Message-State: AOAM532eIbkKmJI7Wf8O5cVWCKlKO+PvxqT57CuReiDR5p3q2xvupoHj
 aNtzb3+J6URu+8vzWYkJOGIp3g==
X-Google-Smtp-Source: ABdhPJy27LOCVKczkaSg04kB6HvggkkLk506KKcdLUlwLC6sXlmw18xgS6ZOaIR73lti2D6YyLmTBA==
X-Received: by 2002:a05:600c:4104:: with SMTP id
 j4mr3423937wmi.178.1638263188907; 
 Tue, 30 Nov 2021 01:06:28 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q123sm1689665wma.30.2021.11.30.01.06.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Nov 2021 01:06:28 -0800 (PST)
Date: Tue, 30 Nov 2021 10:06:26 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YaXpkoY1AUfYp6nn@phenom.ffwll.local>
References: <20211129120659.1815-1-christian.koenig@amd.com>
 <20211129120659.1815-5-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211129120659.1815-5-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 04/28] drm/qxl: use iterator instead of
 dma_resv_shared_list
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

On Mon, Nov 29, 2021 at 01:06:35PM +0100, Christian K=F6nig wrote:
> I'm not sure why it is useful to know the number of fences
> in the reservation object, but we try to avoid exposing the
> dma_resv_shared_list() function.
> =

> So use the iterator instead. If more information is desired
> we could use dma_resv_describe() as well.
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/qxl/qxl_debugfs.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/qxl/qxl_debugfs.c b/drivers/gpu/drm/qxl/qxl_=
debugfs.c
> index 1f9a59601bb1..6a36b0fd845c 100644
> --- a/drivers/gpu/drm/qxl/qxl_debugfs.c
> +++ b/drivers/gpu/drm/qxl/qxl_debugfs.c
> @@ -57,13 +57,16 @@ qxl_debugfs_buffers_info(struct seq_file *m, void *da=
ta)
>  	struct qxl_bo *bo;
>  =

>  	list_for_each_entry(bo, &qdev->gem.objects, list) {
> -		struct dma_resv_list *fobj;
> -		int rel;
> -
> -		rcu_read_lock();
> -		fobj =3D dma_resv_shared_list(bo->tbo.base.resv);
> -		rel =3D fobj ? fobj->shared_count : 0;
> -		rcu_read_unlock();
> +		struct dma_resv_iter cursor;
> +		struct dma_fence *fence;
> +		int rel =3D 0;
> +
> +		dma_resv_iter_begin(&cursor, bo->tbo.base.resv, true);
> +		dma_resv_for_each_fence_unlocked(&cursor, fence) {
> +			if (dma_resv_iter_is_restarted(&cursor))

I think a kerneldoc patch for struct dma_resv_iter to highlight that
iterators can be restarted and users need to take that into account if
they accumulate statistics with dma_resv_iter_is_restarted() would be
good. I guess I'll go type that.

On this patch:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> +				rel =3D 0;
> +			++rel;
> +		}
>  =

>  		seq_printf(m, "size %ld, pc %d, num releases %d\n",
>  			   (unsigned long)bo->tbo.base.size,
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
