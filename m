Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B05440FADE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 16:56:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EB6463547
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:56:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 89A766341D; Fri, 17 Sep 2021 14:55:59 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 977166341F;
	Fri, 17 Sep 2021 14:55:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3AD0F6323F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:55:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 386576341D; Fri, 17 Sep 2021 14:55:55 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by lists.linaro.org (Postfix) with ESMTPS id 2CA076323F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 14:55:53 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id v22so26778683edd.11
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 07:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=C3fVriQhyhLcrcdu/qOBtJVaOvb8K1d7euQOmBJPamw=;
 b=OAMIjxM70eMdm+wOTlV6mJ5g0YFIqjwqNt9rw3/ZrVUF58MR0n8mZiii1VSbnWTYyd
 HWC94C7HwwBCXhKKQXpBwRzXQoORyN+ZPVDYmXqLDr/lsZ27SxhgdrXbU/zgj1PaPYDe
 2KW9KGDMU3N2Bdl8+WvyQbf0sjbgRKx0AlkVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=C3fVriQhyhLcrcdu/qOBtJVaOvb8K1d7euQOmBJPamw=;
 b=B4h7DJF7ud5AGwUmfu4rq5AMJL3LWSPQ5cw7klRomGchdiPzscjmL2Vq/bBFJaND9z
 Vzq1dQ9jWSf5VUZdd/PImzjHpQGwpK3BX0ZVidJOmz7EDmKbHBBlf8l0tkodxPpO1RQQ
 UYjBvp7pNIKhVzo2Fe5W8eQWp2nA2yBlLd68c74OahAWxdY8yjXY42K3QkLRkYvNPQKu
 e9ZavbK2HR9JKLW2v6yNZKDMUlmpJP6TrcM0TVvB55OeJENM4c/Ms7JFAlq1YC4M92O1
 e1ebHJ0YJeSGS2RfdPPZ5QZrDRMyFN6Tnww11HRxMJBICn9CpQLZDlmagGODvrXSJP8e
 M4/A==
X-Gm-Message-State: AOAM532tSNpnUsFEi3hXlAJMlTcU8oOGCpRRqS4YK5eQKQmBpUgYs0/g
 lg17xqdZmb+kF2yEcy47hDhhsw==
X-Google-Smtp-Source: ABdhPJy84j69je6oUuVzQ8QL7Dd0rshCTE9DeszWKX/tqoJPbBlAp/hxVJJanqu6suLVrlakwZ1ZrA==
X-Received: by 2002:a17:907:7844:: with SMTP id
 lb4mr12598077ejc.381.1631890552068; 
 Fri, 17 Sep 2021 07:55:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r26sm2397972ejd.85.2021.09.17.07.55.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 07:55:51 -0700 (PDT)
Date: Fri, 17 Sep 2021 16:55:49 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YUSsdbTxvJwaRv9x@phenom.ffwll.local>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-22-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917123513.1106-22-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 21/26] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb v2
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

On Fri, Sep 17, 2021 at 02:35:08PM +0200, Christian K=F6nig wrote:
> Makes the handling a bit more complex, but avoids the use of
> dma_resv_get_excl_unlocked().
> =

> v2: add missing rcu_read_lock()/unlock()
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/gpu/drm/drm_gem_atomic_helper.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/drm_gem_atomic_helper.c b/drivers/gpu/drm/dr=
m_gem_atomic_helper.c
> index e570398abd78..d8f9c6432544 100644
> --- a/drivers/gpu/drm/drm_gem_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_gem_atomic_helper.c
> @@ -143,6 +143,7 @@
>   */
>  int drm_gem_plane_helper_prepare_fb(struct drm_plane *plane, struct drm_=
plane_state *state)
>  {
> +	struct dma_resv_iter cursor;
>  	struct drm_gem_object *obj;
>  	struct dma_fence *fence;
>  =

> @@ -150,9 +151,18 @@ int drm_gem_plane_helper_prepare_fb(struct drm_plane=
 *plane, struct drm_plane_st
>  		return 0;
>  =

>  	obj =3D drm_gem_fb_get_obj(state->fb, 0);
> -	fence =3D dma_resv_get_excl_unlocked(obj->resv);
> -	drm_atomic_set_fence_for_plane(state, fence);
> +	rcu_read_lock();
> +	dma_resv_iter_begin(&cursor, obj->resv, false);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> +		rcu_read_unlock();
> +		/* TODO: We only use the first write fence here */
> +		drm_atomic_set_fence_for_plane(state, fence);

Yeah I wonder whether we should/need to collate them all together. But I
guesss whomever hits that first with their funny multi-plane yuv or
whatever gets to do that. Or I'm not clear on what exactly your TODO here
means?

> +		return 0;
> +	}
> +	dma_resv_iter_end(&cursor);
> +	rcu_read_unlock();

Imo we should do full dma_resv_lock here. atomic helpers are designed to
allow this, and it simplifies things. Also it really doesn't matter for
atomic, we should be able to do 60fps*a few planes easily :-)
-Daniel

>  =

> +	drm_atomic_set_fence_for_plane(state, NULL);
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(drm_gem_plane_helper_prepare_fb);
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
