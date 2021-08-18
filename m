Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6918D3F01F6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 12:44:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BDCAC61805
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 10:43:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 40297618D1; Wed, 18 Aug 2021 10:43:59 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BDCB61081;
	Wed, 18 Aug 2021 10:43:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5E9DD6102D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 10:43:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 501C961081; Wed, 18 Aug 2021 10:43:52 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 497246102D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 10:43:50 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id x12so2727233wrr.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 03:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=N8rQWm3ZF/mcELR9LAmNZOvgjRRDsTH5ajAZC1IBXNQ=;
 b=WzmYl5nKcFWK7r0irlC1OMzWbB+JXXitKPtEBcJkSXxT535KszNly9W9PeNU2AwuBu
 95uQPdRFraErnEgzStdTwvVHeoouORlt5jJ+pTXAxjjvd1lUHFOD/KMkoXK/bmzj3dq4
 igsH43mTLkjWM44YdvHDEthVcCZH2vCTj1L30=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=N8rQWm3ZF/mcELR9LAmNZOvgjRRDsTH5ajAZC1IBXNQ=;
 b=KGPO31n6Ut+7dqpNoeZvcy74setxrXDKLs9KykaCU6ZL6sb1Oyhs2GAUbJTJySd89h
 EVHKVBf6TbA8TvNbSsA7oQg897aKmpMqy2MTXoO/aRPTD6SUyBeR9oj3hMHH2Wcd6zas
 NVgKRrJra5cBWlykt0XX0MWERpNpX0l622bmdtcYCGco2nS8mrGV/B0hKPpOYzrdu8Pa
 Tozj4ej9qkh0SwQrVTSv1RN/NBjI+eXuD1kkL1Cem7dsYkE/qorzfm3opa3XKspqui8g
 PHLvupAtTrZLAAPoLCzyQjSJh6SJADKNTMv3GLUejZadJ2EvyWjZX1e9WT7OEglaRkZo
 bf/Q==
X-Gm-Message-State: AOAM53026y97/hBruNS/sNgbNP0w/AtdgCtaboNnPwkkRuedIVhuCzVp
 zzaOocqqob6fXC6QTTfwierAYQ==
X-Google-Smtp-Source: ABdhPJzL26D2Xlf6x9Qn1216x8lsoF11MQEMcnhU8xpHFbqaQ2u4AZ7DwheabZAVQ+Ui1z6n9CKfKg==
X-Received: by 2002:a05:6000:128e:: with SMTP id
 f14mr9685601wrx.167.1629283429079; 
 Wed, 18 Aug 2021 03:43:49 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c9sm5451125wrm.43.2021.08.18.03.43.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 03:43:48 -0700 (PDT)
Date: Wed, 18 Aug 2021 12:43:46 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Message-ID: <YRzkYlcDDgrwDT81@phenom.ffwll.local>
Mail-Followup-To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, sumit.semwal@linaro.org,
 christian.koenig@amd.com, axboe@kernel.dk, oleg@redhat.com,
 tglx@linutronix.de, dvyukov@google.com, walter-zh.wu@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, skhan@linuxfoundation.org,
 gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org
References: <20210818073824.1560124-1-desmondcheongzx@gmail.com>
 <20210818073824.1560124-6-desmondcheongzx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210818073824.1560124-6-desmondcheongzx@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 5/9] drm: protect magic_map,
 unique{_len} with master_lookup_lock
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
Cc: axboe@kernel.dk, walter-zh.wu@mediatek.com, tzimmermann@suse.de,
 gregkh@linuxfoundation.org, airlied@linux.ie, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, maarten.lankhorst@linux.intel.com,
 oleg@redhat.com, mripard@kernel.org, christian.koenig@amd.com,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, skhan@linuxfoundation.org, tglx@linutronix.de,
 linux-kernel-mentees@lists.linuxfoundation.org, dvyukov@google.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Aug 18, 2021 at 03:38:20PM +0800, Desmond Cheong Zhi Xi wrote:
> Currently, drm_device.master_mutex is used to serialize writes to the
> drm_master.magic_map idr and to protect drm_master.unique{_len}.
> 
> In preparation for converting drm_device.master_mutex into an outer
> rwsem that might be read locked before entering some of these
> functions, we can instead serialize access to drm_master.magic_map and
> drm_master.unique{_len} using drm_device.master_lookup_lock which is
> an inner lock.
> 
> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
> ---
>  drivers/gpu/drm/drm_auth.c  | 12 +++++++-----
>  drivers/gpu/drm/drm_ioctl.c | 10 ++++++----
>  include/drm/drm_auth.h      |  6 +++---
>  include/drm/drm_device.h    |  7 ++++++-
>  4 files changed, 22 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_auth.c b/drivers/gpu/drm/drm_auth.c
> index b7230604496b..0acb444fbbac 100644
> --- a/drivers/gpu/drm/drm_auth.c
> +++ b/drivers/gpu/drm/drm_auth.c
> @@ -98,10 +98,10 @@ int drm_getmagic(struct drm_device *dev, void *data, struct drm_file *file_priv)
>  	struct drm_master *master;
>  	int ret = 0;
>  
> -	mutex_lock(&dev->master_mutex);
> +	spin_lock(&dev->master_lookup_lock);
>  	master = file_priv->master;
>  	if (!master) {
> -		mutex_unlock(&dev->master_mutex);
> +		spin_unlock(&dev->master_lookup_lock);
>  		return -EINVAL;
>  	}
>  
> @@ -112,7 +112,7 @@ int drm_getmagic(struct drm_device *dev, void *data, struct drm_file *file_priv)
>  			file_priv->magic = ret;
>  	}
>  	auth->magic = file_priv->magic;
> -	mutex_unlock(&dev->master_mutex);
> +	spin_unlock(&dev->master_lookup_lock);
>  
>  	DRM_DEBUG("%u\n", auth->magic);
>  
> @@ -127,13 +127,13 @@ int drm_authmagic(struct drm_device *dev, void *data,
>  
>  	DRM_DEBUG("%u\n", auth->magic);
>  
> -	mutex_lock(&dev->master_mutex);
> +	spin_lock(&dev->master_lookup_lock);
>  	file = idr_find(&file_priv->master->magic_map, auth->magic);
>  	if (file) {
>  		file->authenticated = 1;
>  		idr_replace(&file_priv->master->magic_map, NULL, auth->magic);
>  	}
> -	mutex_unlock(&dev->master_mutex);
> +	spin_unlock(&dev->master_lookup_lock);
>  
>  	return file ? 0 : -EINVAL;
>  }
> @@ -366,8 +366,10 @@ void drm_master_release(struct drm_file *file_priv)
>  	if (!master)
>  		goto unlock;
>  
> +	spin_lock(&dev->master_lookup_lock);
>  	if (file_priv->magic)
>  		idr_remove(&master->magic_map, file_priv->magic);
> +	spin_unlock(&dev->master_lookup_lock);
>  
>  	if (!drm_is_current_master_locked(file_priv))
>  		goto out;
> diff --git a/drivers/gpu/drm/drm_ioctl.c b/drivers/gpu/drm/drm_ioctl.c
> index 4d029d3061d9..e5c3845b6e62 100644
> --- a/drivers/gpu/drm/drm_ioctl.c
> +++ b/drivers/gpu/drm/drm_ioctl.c
> @@ -119,21 +119,21 @@ int drm_getunique(struct drm_device *dev, void *data,
>  	struct drm_unique *u = data;
>  	struct drm_master *master;
>  
> -	mutex_lock(&dev->master_mutex);
> +	spin_lock(&dev->master_lookup_lock);
>  	master = file_priv->master;
>  	if (!master) {
> -		mutex_unlock(&dev->master_mutex);
> +		spin_unlock(&dev->master_lookup_lock);
>  		return -EINVAL;
>  	}
>  
>  	if (u->unique_len >= master->unique_len) {
>  		if (copy_to_user(u->unique, master->unique, master->unique_len)) {
> -			mutex_unlock(&dev->master_mutex);
> +			spin_unlock(&dev->master_lookup_lock);

copy_to_user while holding a spinlock isn't going to work well, at least
when we take a fault. The might_fault() annotations (if enabled) should
catch that.

Which is really annoying, because it kinda puts a wrench into this neat
plan here :-/

>  			return -EFAULT;
>  		}
>  	}
>  	u->unique_len = master->unique_len;
> -	mutex_unlock(&dev->master_mutex);
> +	spin_unlock(&dev->master_lookup_lock);
>  
>  	return 0;
>  }
> @@ -405,7 +405,9 @@ static int drm_setversion(struct drm_device *dev, void *data, struct drm_file *f
>  			 * Version 1.1 includes tying of DRM to specific device
>  			 * Version 1.4 has proper PCI domain support
>  			 */
> +			spin_lock(&dev->master_lookup_lock);
>  			retcode = drm_set_busid(dev, file_priv);
> +			spin_unlock(&dev->master_lookup_lock);

Similar issue with drm_set_busid, calling kmalloc under a spinlock isn't a
good idea. This one here is at least much easier to fix by pushing the
locking down a lot.

I'm wondering a bit whether a better fix for these ioctls wouldn't be to
- drop the DRM_MASTER flag from the ioctl table
- take the rwsem in write mode (which would replace our current
  dev->master_lock) and check for master status while holding that lock

I think that would result in simpler locking or am I missing something?
Maybe this could even work as a replacment for the lookup spinlock, since
we're untangling the nesting quite a bit?

Really just tossing ideas around since I feel like we don't have the best
one yet ...
-Daniel

>  			if (retcode)
>  				goto done;
>  		}
> diff --git a/include/drm/drm_auth.h b/include/drm/drm_auth.h
> index ba248ca8866f..f5be73153798 100644
> --- a/include/drm/drm_auth.h
> +++ b/include/drm/drm_auth.h
> @@ -67,17 +67,17 @@ struct drm_master {
>  	struct drm_device *dev;
>  	/**
>  	 * @unique: Unique identifier: e.g. busid. Protected by
> -	 * &drm_device.master_mutex.
> +	 * &drm_device.master_lookup_lock.
>  	 */
>  	char *unique;
>  	/**
>  	 * @unique_len: Length of unique field. Protected by
> -	 * &drm_device.master_mutex.
> +	 * &drm_device.master_lookup_lock.
>  	 */
>  	int unique_len;
>  	/**
>  	 * @magic_map: Map of used authentication tokens. Protected by
> -	 * &drm_device.master_mutex.
> +	 * &drm_device.master_lookup_lock.
>  	 */
>  	struct idr magic_map;
>  	void *driver_priv;
> diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
> index 506eb2784819..cf5d15aeb25f 100644
> --- a/include/drm/drm_device.h
> +++ b/include/drm/drm_device.h
> @@ -152,7 +152,12 @@ struct drm_device {
>  	 */
>  	struct mutex master_mutex;
>  
> -	/** @master_lookup_lock: Serializes &drm_file.master. */
> +	/**
> +	 * @master_lookup_lock:
> +	 *
> +	 * Serializes &drm_file.master, &drm_master.magic_map,
> +	 * &drm_master.unique, and &drm_master.unique_len.
> +	 */
>  	spinlock_t master_lookup_lock;
>  
>  	/**
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
