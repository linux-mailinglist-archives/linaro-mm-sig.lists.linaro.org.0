Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AC49039188E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 15:10:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CA5261446
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 13:10:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1C09361435; Wed, 26 May 2021 13:10:26 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68A1460EA2;
	Wed, 26 May 2021 13:10:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 76A7360B3E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 May 2021 13:10:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6A67260EA2; Wed, 26 May 2021 13:10:21 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by lists.linaro.org (Postfix) with ESMTPS id 5ED6C60B3E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 May 2021 13:10:19 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id s22so2334740ejv.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 May 2021 06:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=AUsJLuID9e1pol3RiOS0EQTXGuh7p/LFKL5pMET/qdM=;
 b=k8NO22C2JVeN3oYYB8/wYFehRe8VyAND1XHAGRWMTU5Mn52IfMEUo4TKhcziTjSiol
 ajMle9cmfQkn5UtI0zuJQKEg7T0BR53wh8MTYQevUGRY0oLgw8tgB9THtAkw/d71ByPA
 k5CQUTjOSd0eCD/aUy0PznHO9215g4bfZeixU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=AUsJLuID9e1pol3RiOS0EQTXGuh7p/LFKL5pMET/qdM=;
 b=l7QNYvIMXEfWDroaWv6NHMS38yk6mePCvav8URJpiZrqekic9uBzQFU4ad8ZYFoG0u
 mtyLnqR96vELUMPjotNvjf/b87pcQGRd/9rWzJadyrbMqfsKi27JZhZK63qPGynbGHcS
 vbIPne9oXSu8M7HkZAv1kKMD6TuQ15e9yQQqi3WQ1Sae+KQntx6KuQZrbtEF7uTQvwtf
 rvbe8hE0iFU1Umt4P6w8nsc3go18UKm5vKBX8/oGUVDADsN5LhJJI432I2bzxW+WhI3f
 7aZsQzE4qZv3ZfG3wVOUcd1K3DgrseHRDnw1U0vmZS0R2kfExqXGoSRHA7th0pxjg3Zr
 dPDA==
X-Gm-Message-State: AOAM532pPDTXxGdTL/K3oPWK5Kr5EX6OBW/ELw4alri08jihtpCEp7vy
 K1Rlg/cGOM6rxCRhVaRcHsRmxA==
X-Google-Smtp-Source: ABdhPJwmdkY+oqxRRVXVQLIVhW6ISfuuutzmkODEclidb9s6n/KAGKJYcmP63SeNqDK4yFSFc1wLbQ==
X-Received: by 2002:a17:907:9612:: with SMTP id
 gb18mr7857293ejc.408.1622034618327; 
 Wed, 26 May 2021 06:10:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j17sm484768ejb.123.2021.05.26.06.10.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 May 2021 06:10:17 -0700 (PDT)
Date: Wed, 26 May 2021 15:10:16 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Lee Jones <lee.jones@linaro.org>
Message-ID: <YK5IuNcHtPySAfoz@phenom.ffwll.local>
Mail-Followup-To: Lee Jones <lee.jones@linaro.org>,
 linux-kernel@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Adam Jackson <ajax@redhat.com>, Ben Widawsky <ben@bwidawsk.net>,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org
References: <20210526084726.552052-1-lee.jones@linaro.org>
 <20210526084726.552052-31-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210526084726.552052-31-lee.jones@linaro.org>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 30/34] drm/vgem/vgem_drv: Standard
 comment blocks should not use kernel-doc format
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
Cc: Ben Widawsky <ben@bwidawsk.net>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Adam Jackson <ajax@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, May 26, 2021 at 09:47:22AM +0100, Lee Jones wrote:
> Fixes the following W=3D1 kernel build warning(s):
> =

>  drivers/gpu/drm/vgem/vgem_drv.c:47: warning: expecting prototype for Thi=
s is vgem, a (non-hardware(). Prototype was for DRIVER_NAME() instead
> =

> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> Cc: Adam Jackson <ajax@redhat.com>
> Cc: Ben Widawsky <ben@bwidawsk.net>
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-media@vger.kernel.org
> Cc: linaro-mm-sig@lists.linaro.org
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Merged this one to drm-misc-next, thanks!
-Daniel
> ---
>  drivers/gpu/drm/vgem/vgem_drv.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/vgem/vgem_drv.c b/drivers/gpu/drm/vgem/vgem_=
drv.c
> index a0e75f1d5d016..bf38a7e319d14 100644
> --- a/drivers/gpu/drm/vgem/vgem_drv.c
> +++ b/drivers/gpu/drm/vgem/vgem_drv.c
> @@ -25,7 +25,7 @@
>   *	Ben Widawsky <ben@bwidawsk.net>
>   */
>  =

> -/**
> +/*
>   * This is vgem, a (non-hardware-backed) GEM service.  This is used by M=
esa's
>   * software renderer and the X server for efficient buffer sharing.
>   */
> -- =

> 2.31.1
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
