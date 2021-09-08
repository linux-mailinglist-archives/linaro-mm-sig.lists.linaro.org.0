Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CB1403E9F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 19:50:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88A5364AD6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 17:50:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C6DCB666F0; Wed,  8 Sep 2021 17:50:42 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7513260B53;
	Wed,  8 Sep 2021 17:50:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 98943606D6
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 17:50:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 838C060B53; Wed,  8 Sep 2021 17:50:37 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
 [209.85.218.44])
 by lists.linaro.org (Postfix) with ESMTPS id 78E2E606D6
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 17:50:35 +0000 (UTC)
Received: by mail-ej1-f44.google.com with SMTP id bt14so5851349ejb.3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Sep 2021 10:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=vuSk6k+wa7pbmbqWvCvDdZqbC/SZgYreAXUEe3eNDTI=;
 b=CrZPXrbRVBTI1Aeeq3S3hJAKJib2O3JHOIozuY4W+uOWFio621qYyJ7hq1RO+8crgh
 wRDjLG+SqzqtDTHBtVhkPIB/T34XJ4owMRBT6j3Id9cEMkVbnt+iBJ9W3MQ+v4amOHmz
 gkeffzcDQEBIZk+ujoZFNjxsDJ1MuSZpSvfqA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=vuSk6k+wa7pbmbqWvCvDdZqbC/SZgYreAXUEe3eNDTI=;
 b=QU0AoRUE0TWiFFKGApVbYTxPtgNioikhdmzbsS9uhK2mT82euexVgjjp5XgrOYpD70
 pxPMB+BU3LzOjgWJeTNaZuuXJP1erqinnJEFXr+W4zCk4/CUgzGMXY2sEwR6CWNcbpJE
 myFrgOpnEkT63hYkiL3/6aIMOHcvDQVyuupzLiQ1fKMmgSHbQkMF3GORTSqSGoZ5ZULh
 X4zTim1YTssZXsXXultStfnZJUZehNcUXt/RPqtPc9cH6AI5ZQEGa65bGQ+qeLxP6HmK
 u7KYY4kw0+H4VGn9QPhUjFnZ16NrhflMT+h/AsqQqYVyZjSOVBFRCaqXu9eeMm6dK7kL
 BQng==
X-Gm-Message-State: AOAM530/oN+rIBqC+F7AJwCHJ6T5a/k78EIcZ/21MKG4VmQNoutpTxX2
 u1DXf6OLgVS2k077L2gZNwuh1Q==
X-Google-Smtp-Source: ABdhPJyLY5ZP+DrKCEiNDoixuHHNHP6eq1Kk0XYL+iCJY9nnpI/B5uHAvbhuiIkC29KGm61OMQLXTw==
X-Received: by 2002:a17:906:c1d0:: with SMTP id
 bw16mr1160810ejb.146.1631123434349; 
 Wed, 08 Sep 2021 10:50:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w3sm1475271edc.42.2021.09.08.10.50.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 10:50:33 -0700 (PDT)
Date: Wed, 8 Sep 2021 19:50:32 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <YTj36NbUNxnn6uBU@phenom.ffwll.local>
Mail-Followup-To: Rob Clark <robdclark@gmail.com>,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 Pekka Paalanen <ppaalanen@gmail.com>,
 Rob Clark <robdclark@chromium.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210903184806.1680887-1-robdclark@gmail.com>
 <20210903184806.1680887-9-robdclark@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210903184806.1680887-9-robdclark@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 8/9] dma-buf/sync_file: Add
 SET_DEADLINE ioctl
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
Cc: Rob Clark <robdclark@chromium.org>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Pekka Paalanen <ppaalanen@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Gustavo Padovan <gustavo@padovan.org>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Sep 03, 2021 at 11:47:59AM -0700, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
> 
> The initial purpose is for igt tests, but this would also be useful for
> compositors that wait until close to vblank deadline to make decisions
> about which frame to show.
> 
> Signed-off-by: Rob Clark <robdclark@chromium.org>

Needs userspace and I think ideally also some igts to make sure it works
and doesn't go boom.
-Daniel

> ---
>  drivers/dma-buf/sync_file.c    | 19 +++++++++++++++++++
>  include/uapi/linux/sync_file.h | 20 ++++++++++++++++++++
>  2 files changed, 39 insertions(+)
> 
> diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> index 394e6e1e9686..f295772d5169 100644
> --- a/drivers/dma-buf/sync_file.c
> +++ b/drivers/dma-buf/sync_file.c
> @@ -459,6 +459,22 @@ static long sync_file_ioctl_fence_info(struct sync_file *sync_file,
>  	return ret;
>  }
>  
> +static int sync_file_ioctl_set_deadline(struct sync_file *sync_file,
> +					unsigned long arg)
> +{
> +	struct sync_set_deadline ts;
> +
> +	if (copy_from_user(&ts, (void __user *)arg, sizeof(ts)))
> +		return -EFAULT;
> +
> +	if (ts.pad)
> +		return -EINVAL;
> +
> +	dma_fence_set_deadline(sync_file->fence, ktime_set(ts.tv_sec, ts.tv_nsec));
> +
> +	return 0;
> +}
> +
>  static long sync_file_ioctl(struct file *file, unsigned int cmd,
>  			    unsigned long arg)
>  {
> @@ -471,6 +487,9 @@ static long sync_file_ioctl(struct file *file, unsigned int cmd,
>  	case SYNC_IOC_FILE_INFO:
>  		return sync_file_ioctl_fence_info(sync_file, arg);
>  
> +	case SYNC_IOC_SET_DEADLINE:
> +		return sync_file_ioctl_set_deadline(sync_file, arg);
> +
>  	default:
>  		return -ENOTTY;
>  	}
> diff --git a/include/uapi/linux/sync_file.h b/include/uapi/linux/sync_file.h
> index ee2dcfb3d660..f67d4ffe7566 100644
> --- a/include/uapi/linux/sync_file.h
> +++ b/include/uapi/linux/sync_file.h
> @@ -67,6 +67,18 @@ struct sync_file_info {
>  	__u64	sync_fence_info;
>  };
>  
> +/**
> + * struct sync_set_deadline - set a deadline on a fence
> + * @tv_sec:	seconds elapsed since epoch
> + * @tv_nsec:	nanoseconds elapsed since the time given by the tv_sec
> + * @pad:	must be zero
> + */
> +struct sync_set_deadline {
> +	__s64	tv_sec;
> +	__s32	tv_nsec;
> +	__u32	pad;
> +};
> +
>  #define SYNC_IOC_MAGIC		'>'
>  
>  /**
> @@ -95,4 +107,12 @@ struct sync_file_info {
>   */
>  #define SYNC_IOC_FILE_INFO	_IOWR(SYNC_IOC_MAGIC, 4, struct sync_file_info)
>  
> +
> +/**
> + * DOC: SYNC_IOC_SET_DEADLINE - set a deadline on a fence
> + *
> + * Allows userspace to set a deadline on a fence, see dma_fence_set_deadline()
> + */
> +#define SYNC_IOC_SET_DEADLINE	_IOW(SYNC_IOC_MAGIC, 5, struct sync_set_deadline)
> +
>  #endif /* _UAPI_LINUX_SYNC_H */
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
