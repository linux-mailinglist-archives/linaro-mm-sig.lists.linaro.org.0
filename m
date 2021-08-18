Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E053F0130
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 12:04:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D5D4861081
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 10:04:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C93986102D; Wed, 18 Aug 2021 10:04:18 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D45B60F1F;
	Wed, 18 Aug 2021 10:04:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1565760EC3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 10:04:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 00A7760F1F; Wed, 18 Aug 2021 10:04:11 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
 [209.85.208.43])
 by lists.linaro.org (Postfix) with ESMTPS id EA1D060EC3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 10:04:09 +0000 (UTC)
Received: by mail-ed1-f43.google.com with SMTP id r19so2215943eds.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 03:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=aMU29SN6YoovEcOrsusWnZbE8h+1MpQpJA0/wZfLGeE=;
 b=VuWlpnTGk6pLgRyLxLDnxv4NkP9nRhdxy0N90/5pUe8bPs6Uj9DlrqMj6WsvKlpXXI
 111QEnOZPfJS/mHK8sfTzq5rrN40iXdDm7HI7rmq/xmBL8FDwz+BFyPzr5yB3ovwv8zV
 0GGNgLYV0nqj01x2rcDXp61Hl2zl/sKi6V54I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=aMU29SN6YoovEcOrsusWnZbE8h+1MpQpJA0/wZfLGeE=;
 b=j2tlTXzrBMs7Np6kbDvMXnRzcsfLqYeu3rihf3rpLJkQkbHC/uELOBrri1MeXHBv2K
 ueBApVRb7b1TSDKQOPQ5NrpRO1NHYv9p+H4g9OHilbzRrr2fjDs1lbf6faSt3hBVuh4v
 M99R6y7xpjmO1zMJmz9ylHC33p+/vavhbVExS6jUq9vqO/xye6gd86RaovHCfIpG/Rph
 wqIG6zwi6bMlI3k6ZzAgmvcxoa+vFtmsWJCIAaSL4XjwZeixBSDunLz6BCV/wOlmwNVM
 mLW/45GL4sWdqy/+QSrfTyIfU7xCu/zdP6dX/aFpy2wMeMoG+Pzp/JaC/LWhI32mjv17
 e3yQ==
X-Gm-Message-State: AOAM530Ki0PLUsctdGmYiUTWZh67yZ/1MP6lAmnBC7Afa3wPP12mbv3u
 7zB7ZLmIbKzH4NUJAN54Mv43OQ==
X-Google-Smtp-Source: ABdhPJzQXPwY+sWxgn3k6s9LT4/gWaw0MMn3Os6faeWcHmmeyRNaM7zRWGLx0tEfvU1T3JleVgbcdA==
X-Received: by 2002:a05:6402:14d9:: with SMTP id
 f25mr9279034edx.343.1629281048926; 
 Wed, 18 Aug 2021 03:04:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d16sm2384140edu.8.2021.08.18.03.04.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 03:04:08 -0700 (PDT)
Date: Wed, 18 Aug 2021 12:04:06 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Message-ID: <YRzbFnkricE65Hn5@phenom.ffwll.local>
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
 <20210818073824.1560124-4-desmondcheongzx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210818073824.1560124-4-desmondcheongzx@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 3/9] drm: check for null master in
 drm_is_current_master_locked
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

On Wed, Aug 18, 2021 at 03:38:18PM +0800, Desmond Cheong Zhi Xi wrote:
> There is a window after calling drm_master_release, and before a file
> is freed, where drm_file can have is_master set to true, but both the
> drm_file and drm_device have no master.
> 
> This could result in wrongly approving permissions in
> drm_is_current_master_locked. Add a check that fpriv->master is
> non-NULl to guard against this scenario.
> 
> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>

This should be impossible, drm_master_release is only called when the
struct file is released, which means all ioctls and anything else have
finished (they hold a temporary reference).

fpriv->master can change (if the drm_file becomes newly minted master and
wasnt one before through the setmaster ioctl), but it cannot become NULL
before it's completely gone from the system.
-Daniel


> ---
>  drivers/gpu/drm/drm_auth.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_auth.c b/drivers/gpu/drm/drm_auth.c
> index 8c0e0dba1611..f9267b21556e 100644
> --- a/drivers/gpu/drm/drm_auth.c
> +++ b/drivers/gpu/drm/drm_auth.c
> @@ -66,7 +66,8 @@ static bool drm_is_current_master_locked(struct drm_file *fpriv)
>  	lockdep_assert_once(lockdep_is_held(&fpriv->minor->dev->master_lookup_lock) ||
>  			    lockdep_is_held(&fpriv->minor->dev->master_mutex));
>  
> -	return fpriv->is_master && drm_lease_owner(fpriv->master) == fpriv->minor->dev->master;
> +	return (fpriv->is_master && fpriv->master &&
> +		drm_lease_owner(fpriv->master) == fpriv->minor->dev->master);
>  }
>  
>  /**
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
