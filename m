Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E42C3AEB30
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jun 2021 16:25:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45C5466765
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jun 2021 14:25:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D1D1A61009; Mon, 21 Jun 2021 14:25:20 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB62F61009;
	Mon, 21 Jun 2021 14:25:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9E2CF60AA0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 14:25:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9B9E661009; Mon, 21 Jun 2021 14:25:15 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id 9249960AA0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 14:25:13 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id r9so19900122wrz.10
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 07:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=N8KORs1w5sO5Pt8tvYP3PqKHK+tsp4Q8XjedmOUr0+I=;
 b=VHh+2mmwhGNltgxbiIC+DldZJb2u+ZHeIQQqrsWcN7mpfPYQ0GSjzxa8b7bf3x37Bz
 25EO6uOjhKyqOeC9APlx3BBggF6hPQKt60xGOpQISihSymf3JO5lS4b8NLYcsFMrnXIh
 +pZ9lkDoTUf9jhKJeWQsyBtTvzWptqRCh/OH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=N8KORs1w5sO5Pt8tvYP3PqKHK+tsp4Q8XjedmOUr0+I=;
 b=g1UvbUIhRN3dNG8vet8jjig0QGM65ZHU+y3rsC6XQo8NzvEeh1VOFYKjRDenKsYP1l
 P4mzY9dFMtkP+2smegM4b3W+55GTsX8SmOChJYZfggP4YHR4hGz6//Q2O5/kCCbxje67
 5CsjumuxPNi8SvtNf69g5Ki0so2wKAnr744x44XKcuHj64756WdCj1juPYMsN3V9hyoj
 8+W/eBeKTN8rQmpDchPKcxYr+5pTwKw7e6N4acauDot+Oo3jJB91hOVFXhBJixCjDj91
 tmwbnMs5TjAR2kd6vkCZfxa0GfvnnZUNy0wE3DKdz0K46kfIAC3nG85fO8HLGdRb1kLX
 /EUA==
X-Gm-Message-State: AOAM533TaDq21BM7q0HmHg8AxeJkgIcFo10xlnUndZ/XHpbdD8MwZMWt
 R+zcGhEzZ9PI74G2E6UQPxQVyQ==
X-Google-Smtp-Source: ABdhPJzWikMDb6HRHwnrjRscIwfDp8Y3d+qprOGR+QBWeCWpaL374TxTEE7RKVa8r9yVS4mSkemp/Q==
X-Received: by 2002:adf:f743:: with SMTP id z3mr19302639wrp.329.1624285512590; 
 Mon, 21 Jun 2021 07:25:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z10sm16679734wmp.39.2021.06.21.07.25.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 07:25:12 -0700 (PDT)
Date: Mon, 21 Jun 2021 16:25:10 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Message-ID: <YNChRvGjIz6++jnd@phenom.ffwll.local>
Mail-Followup-To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, sumit.semwal@linaro.org,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, skhan@linuxfoundation.org,
 gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 emil.l.velikov@gmail.com
References: <20210620110327.4964-1-desmondcheongzx@gmail.com>
 <20210620110327.4964-2-desmondcheongzx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210620110327.4964-2-desmondcheongzx@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 1/2] drm: add a locked version of
 drm_is_current_master
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
Cc: tzimmermann@suse.de, airlied@linux.ie, gregkh@linuxfoundation.org,
 maarten.lankhorst@linux.intel.com, linux-kernel@vger.kernel.org,
 mripard@kernel.org, christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org,
 emil.l.velikov@gmail.com, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 skhan@linuxfoundation.org, linux-kernel-mentees@lists.linuxfoundation.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Sun, Jun 20, 2021 at 07:03:26PM +0800, Desmond Cheong Zhi Xi wrote:
> While checking the master status of the DRM file in
> drm_is_current_master(), the device's master mutex should be
> held. Without the mutex, the pointer fpriv->master may be freed
> concurrently by another process calling drm_setmaster_ioctl(). This
> could lead to use-after-free errors when the pointer is subsequently
> dereferenced in drm_lease_owner().
> 
> The callers of drm_is_current_master() from drm_auth.c hold the
> device's master mutex, but external callers do not. Hence, we implement
> drm_is_current_master_locked() to be used within drm_auth.c, and
> modify drm_is_current_master() to grab the device's master mutex
> before checking the master status.
> 
> Reported-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>

Merged to drm-misc-fixes, thanks for your patch.
-Daniel

> ---
>  drivers/gpu/drm/drm_auth.c | 51 ++++++++++++++++++++++++--------------
>  1 file changed, 32 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_auth.c b/drivers/gpu/drm/drm_auth.c
> index 232abbba3686..86d4b72e95cb 100644
> --- a/drivers/gpu/drm/drm_auth.c
> +++ b/drivers/gpu/drm/drm_auth.c
> @@ -61,6 +61,35 @@
>   * trusted clients.
>   */
>  
> +static bool drm_is_current_master_locked(struct drm_file *fpriv)
> +{
> +	lockdep_assert_held_once(&fpriv->master->dev->master_mutex);
> +
> +	return fpriv->is_master && drm_lease_owner(fpriv->master) == fpriv->minor->dev->master;
> +}
> +
> +/**
> + * drm_is_current_master - checks whether @priv is the current master
> + * @fpriv: DRM file private
> + *
> + * Checks whether @fpriv is current master on its device. This decides whether a
> + * client is allowed to run DRM_MASTER IOCTLs.
> + *
> + * Most of the modern IOCTL which require DRM_MASTER are for kernel modesetting
> + * - the current master is assumed to own the non-shareable display hardware.
> + */
> +bool drm_is_current_master(struct drm_file *fpriv)
> +{
> +	bool ret;
> +
> +	mutex_lock(&fpriv->master->dev->master_mutex);
> +	ret = drm_is_current_master_locked(fpriv);
> +	mutex_unlock(&fpriv->master->dev->master_mutex);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(drm_is_current_master);
> +
>  int drm_getmagic(struct drm_device *dev, void *data, struct drm_file *file_priv)
>  {
>  	struct drm_auth *auth = data;
> @@ -223,7 +252,7 @@ int drm_setmaster_ioctl(struct drm_device *dev, void *data,
>  	if (ret)
>  		goto out_unlock;
>  
> -	if (drm_is_current_master(file_priv))
> +	if (drm_is_current_master_locked(file_priv))
>  		goto out_unlock;
>  
>  	if (dev->master) {
> @@ -272,7 +301,7 @@ int drm_dropmaster_ioctl(struct drm_device *dev, void *data,
>  	if (ret)
>  		goto out_unlock;
>  
> -	if (!drm_is_current_master(file_priv)) {
> +	if (!drm_is_current_master_locked(file_priv)) {
>  		ret = -EINVAL;
>  		goto out_unlock;
>  	}
> @@ -321,7 +350,7 @@ void drm_master_release(struct drm_file *file_priv)
>  	if (file_priv->magic)
>  		idr_remove(&file_priv->master->magic_map, file_priv->magic);
>  
> -	if (!drm_is_current_master(file_priv))
> +	if (!drm_is_current_master_locked(file_priv))
>  		goto out;
>  
>  	drm_legacy_lock_master_cleanup(dev, master);
> @@ -342,22 +371,6 @@ void drm_master_release(struct drm_file *file_priv)
>  	mutex_unlock(&dev->master_mutex);
>  }
>  
> -/**
> - * drm_is_current_master - checks whether @priv is the current master
> - * @fpriv: DRM file private
> - *
> - * Checks whether @fpriv is current master on its device. This decides whether a
> - * client is allowed to run DRM_MASTER IOCTLs.
> - *
> - * Most of the modern IOCTL which require DRM_MASTER are for kernel modesetting
> - * - the current master is assumed to own the non-shareable display hardware.
> - */
> -bool drm_is_current_master(struct drm_file *fpriv)
> -{
> -	return fpriv->is_master && drm_lease_owner(fpriv->master) == fpriv->minor->dev->master;
> -}
> -EXPORT_SYMBOL(drm_is_current_master);
> -
>  /**
>   * drm_master_get - reference a master pointer
>   * @master: &struct drm_master
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
