Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF623F0138
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 12:05:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 53D49618D1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 10:05:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 473F861174; Wed, 18 Aug 2021 10:05:12 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E3916100C;
	Wed, 18 Aug 2021 10:05:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A47DE60EC3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 10:05:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9F8F76102D; Wed, 18 Aug 2021 10:05:07 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by lists.linaro.org (Postfix) with ESMTPS id 98B5060EC3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 10:05:05 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id b10so3808918eju.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 03:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=+UugXJNovZ2vqktgPlIQAdEvTrXzjK5N1Cr++nIj3DA=;
 b=R42e8IjQDth0gJLIVgsbrUrhAc6d0ey998kv2PQoRChb7eJx00eZ1Gm0c/EhfBivkC
 IBNmrGkJ8ApCpeW2C+4cEd65TeabJc9SlX1xYSqdk72h0IEQ+khLKq7zNM6jv5wHaBvB
 ZXdjx0ctrHer5bc0vfxlwQtTRpuI1JQHIunWU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=+UugXJNovZ2vqktgPlIQAdEvTrXzjK5N1Cr++nIj3DA=;
 b=KHbO1K3j9795Xy3lcttF2XvBXs6z9YqmNlnGKJzhJl7W3KB6SaVU65u08YFiJ1V/OT
 fdZTfajNpLaCOYMpQjBnGm8hro49jzaU7I78u+zdx+gRwhwn+jhreDGhOlPMGIk0KYll
 uTqyYPpl1jfTSxw6I1UNO2NXIV2WqPO4gxpOOIcheCM2lnwFMl1RHJy8KEVEjbldFG7k
 t+S9NRPlICohFUZ9xKf2f5FT5gS7SDxRY8QsuASfBkNOhvsq2PkGvI8/r/sf8ySu0Pjk
 7F93s+pg+/IO3jsm3pGu+MfNHzANqyLFJB4NWCqNnosgdaMZWCJcvU2xSC+dIEsjDlMh
 vDkA==
X-Gm-Message-State: AOAM530U77LKEQhKSl9UsxQfe+uDd6G23ol8/uUvZ2XDxkDwlTEWn0UY
 LrvBzGf6s7oNMdNEekX+wEZF3Q==
X-Google-Smtp-Source: ABdhPJyCL0wNSTVtmCi+TFUYXg5lqc4ePLGIxn2k+rFjGuAVDwSBiMK9lqUgzHWBYJDOF+Ij9NGXdA==
X-Received: by 2002:a17:906:150c:: with SMTP id
 b12mr8875986ejd.275.1629281104548; 
 Wed, 18 Aug 2021 03:05:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e22sm2384475eds.45.2021.08.18.03.05.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 03:05:03 -0700 (PDT)
Date: Wed, 18 Aug 2021 12:05:01 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Message-ID: <YRzbTUM8ggXlIEyr@phenom.ffwll.local>
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
 <20210818073824.1560124-3-desmondcheongzx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210818073824.1560124-3-desmondcheongzx@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 2/9] drm: hold master_lookup_lock
 when releasing a drm_file's master
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

On Wed, Aug 18, 2021 at 03:38:17PM +0800, Desmond Cheong Zhi Xi wrote:
> When drm_file.master changes value, the corresponding
> drm_device.master_lookup_lock should be held.
> 
> In drm_master_release, a call to drm_master_put sets the
> file_priv->master to NULL, so we protect this section with
> drm_device.master_lookup_lock.
> 
> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>

At this points all refcounts to drm_file have disappeared, so yeah this is
a lockless access, but also no one can observe it anymore. See also next
patch.

Hence I think the current code is fine.
-Daniel

> ---
>  drivers/gpu/drm/drm_auth.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_auth.c b/drivers/gpu/drm/drm_auth.c
> index 8efb58aa7d95..8c0e0dba1611 100644
> --- a/drivers/gpu/drm/drm_auth.c
> +++ b/drivers/gpu/drm/drm_auth.c
> @@ -373,8 +373,11 @@ void drm_master_release(struct drm_file *file_priv)
>  	}
>  
>  	/* drop the master reference held by the file priv */
> -	if (file_priv->master)
> +	if (file_priv->master) {
> +		spin_lock(&dev->master_lookup_lock);
>  		drm_master_put(&file_priv->master);
> +		spin_unlock(&dev->master_lookup_lock);
> +	}
>  	mutex_unlock(&dev->master_mutex);
>  }
>  
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
