Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E894E99D2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Mar 2022 16:36:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 892633EF89
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Mar 2022 14:36:54 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	by lists.linaro.org (Postfix) with ESMTPS id 2A1EC3EBBA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 14:36:51 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id u16so20712927wru.4
        for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 07:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=v/hbcKwqx1gvBKjVXl56S5be+OnNXrcnFIQY2VQf+GQ=;
        b=P3s83mzPAy1oHFyyIJNDomqrIFEN+HTK2X/xxvM6jHZRRhY1ia7LMcyS1CUq2WRLIt
         5SoYJ0xl/ZAWRBo9MGjmVgpPNSAyN2Cue489qnIcE9rOOsVfG8KpauNpaa5c3+CHpQSK
         gw9dIkAY9rZoEPI7OMXBY9dnJLfptFfKQMVcs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=v/hbcKwqx1gvBKjVXl56S5be+OnNXrcnFIQY2VQf+GQ=;
        b=MkQcwq4C/yIuHmIbReWDrPYpNUwlhuDiP2yu8zHqeBAFI4q0R8xkgXd+YzGdxBK1QN
         8FHXSO0wLzjsCtNNW4no40WY8Dvk5VLLZCrnCxYCr1G08vIbuOnIbRuV9hLSpFDjlpJg
         qgED1ik0YnR5Mnq++GC1P14DOrMXKlHrBwRjPZi2R74mxMLbJ1TMZ3iRBUNdlQuuqF2d
         Q+7yapuKxL3XkT0VJ9Od+W/8LKiga9Pqq7tgq0kMsoYiMQK2ik21zIcQJtqbBVsNDMTf
         oGGx/Ji+bBFa0zF0+h3eaaZyRnG8orV+MmGPVKzOGWcKHqBSqBA7d0fUHR7Rt0n3nGxn
         46Ug==
X-Gm-Message-State: AOAM532rN2FJYm/17bSV3oIwsLWBT6nW3Xn3POGZUPshz0pflT24/0+F
	rI9Ec/kWxzVJ9AlPDKF+mdRHWg==
X-Google-Smtp-Source: ABdhPJy2uVCV4k6lowv1jCTyfpTR0BZIIfD37/lbvSmV0qb6ifIlu4g+nMA4zLZtNKGFclvcpohivw==
X-Received: by 2002:a5d:6d8a:0:b0:204:909:2d9a with SMTP id l10-20020a5d6d8a000000b0020409092d9amr25002730wrs.435.1648478210133;
        Mon, 28 Mar 2022 07:36:50 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id n23-20020a05600c3b9700b0038b7c4c0803sm16778890wms.30.2022.03.28.07.36.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Mar 2022 07:36:49 -0700 (PDT)
Date: Mon, 28 Mar 2022 16:36:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <YkHH/0Use7F30UUE@phenom.ffwll.local>
Mail-Followup-To: "T.J. Mercier" <tjmercier@google.com>,
	David Airlie <airlied@linux.ie>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
	Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>,
	Christian Brauner <brauner@kernel.org>,
	Hridya Valsaraju <hridya@google.com>,
	Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>,
	Zefan Li <lizefan.x@bytedance.com>,
	Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>,
	kaleshsingh@google.com, Kenny.Ho@amd.com, mkoutny@suse.com,
	skhan@linuxfoundation.org, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
	cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
References: <20220328035951.1817417-1-tjmercier@google.com>
 <20220328035951.1817417-5-tjmercier@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328035951.1817417-5-tjmercier@google.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: E6UYFK6YPNRU7ZKYBY7V7RNBU62P54I2
X-Message-ID-Hash: E6UYFK6YPNRU7ZKYBY7V7RNBU62P54I2
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, kaleshsingh@google.com, Kenny.Ho@amd.com, 
 mkoutny@suse.com, skhan@linuxfoundation.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v4 4/8] dmabuf: heaps: export system_heap buffers with GPU cgroup charging
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E6UYFK6YPNRU7ZKYBY7V7RNBU62P54I2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 28, 2022 at 03:59:43AM +0000, T.J. Mercier wrote:
> From: Hridya Valsaraju <hridya@google.com>
>=20
> All DMA heaps now register a new GPU cgroup device upon creation, and the
> system_heap now exports buffers associated with its GPU cgroup device for
> tracking purposes.
>=20
> Signed-off-by: Hridya Valsaraju <hridya@google.com>
> Signed-off-by: T.J. Mercier <tjmercier@google.com>
>=20
> ---
> v3 changes
> Use more common dual author commit message format per John Stultz.
>=20
> v2 changes
> Move dma-buf cgroup charge transfer from a dma_buf_op defined by every
> heap to a single dma-buf function for all heaps per Daniel Vetter and
> Christian K=F6nig.

Apologies for being out of the loop quite a bit. I scrolled through this
all and I think it looks good to get going.

The only thing I have is whether we should move the cgroup controllers out
of dma-buf heaps, since that's rather android centric. E.g.
- a system gpucg_device which is used by all the various single page
  allocators (dma-buf heap but also shmem helpers and really anything
  else)
- same for cma, again both for dma-buf heaps and also for the gem cma
  helpers in drm

Otherwise this will only work on non-upstream android where gpu drivers
allocate everything from dma-buf heap. If you use something like the x86
android project with mesa drivers, then driver-internal buffers will be
allocated through gem and not through dma-buf heaps. Or at least I think
that's how it works.

But also meh, we can fix this fairly easily later on by adding these
standard gpucg_dev somwehere with a bit of kerneldoc.

Anyway has my all my ack, but don't count this as my in-depth review :-)
-Daniel

> ---
>  drivers/dma-buf/dma-heap.c          | 27 +++++++++++++++++++++++++++
>  drivers/dma-buf/heaps/system_heap.c |  3 +++
>  include/linux/dma-heap.h            | 11 +++++++++++
>  3 files changed, 41 insertions(+)
>=20
> diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> index 8f5848aa144f..885072427775 100644
> --- a/drivers/dma-buf/dma-heap.c
> +++ b/drivers/dma-buf/dma-heap.c
> @@ -7,6 +7,7 @@
>   */
> =20
>  #include <linux/cdev.h>
> +#include <linux/cgroup_gpu.h>
>  #include <linux/debugfs.h>
>  #include <linux/device.h>
>  #include <linux/dma-buf.h>
> @@ -31,6 +32,7 @@
>   * @heap_devt		heap device node
>   * @list		list head connecting to list of heaps
>   * @heap_cdev		heap char device
> + * @gpucg_dev		gpu cgroup device for memory accounting
>   *
>   * Represents a heap of memory from which buffers can be made.
>   */
> @@ -41,6 +43,9 @@ struct dma_heap {
>  	dev_t heap_devt;
>  	struct list_head list;
>  	struct cdev heap_cdev;
> +#ifdef CONFIG_CGROUP_GPU
> +	struct gpucg_device gpucg_dev;
> +#endif
>  };
> =20
>  static LIST_HEAD(heap_list);
> @@ -216,6 +221,26 @@ const char *dma_heap_get_name(struct dma_heap *heap)
>  	return heap->name;
>  }
> =20
> +#ifdef CONFIG_CGROUP_GPU
> +/**
> + * dma_heap_get_gpucg_dev() - get struct gpucg_device for the heap.
> + * @heap: DMA-Heap to get the gpucg_device struct for.
> + *
> + * Returns:
> + * The gpucg_device struct for the heap. NULL if the GPU cgroup controll=
er is
> + * not enabled.
> + */
> +struct gpucg_device *dma_heap_get_gpucg_dev(struct dma_heap *heap)
> +{
> +	return &heap->gpucg_dev;
> +}
> +#else /* CONFIG_CGROUP_GPU */
> +struct gpucg_device *dma_heap_get_gpucg_dev(struct dma_heap *heap)
> +{
> +	return NULL;
> +}
> +#endif /* CONFIG_CGROUP_GPU */
> +
>  struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_inf=
o)
>  {
>  	struct dma_heap *heap, *h, *err_ret;
> @@ -288,6 +313,8 @@ struct dma_heap *dma_heap_add(const struct dma_heap_e=
xport_info *exp_info)
>  	list_add(&heap->list, &heap_list);
>  	mutex_unlock(&heap_list_lock);
> =20
> +	gpucg_register_device(dma_heap_get_gpucg_dev(heap), exp_info->name);
> +
>  	return heap;
> =20
>  err2:
> diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/=
system_heap.c
> index ab7fd896d2c4..752a05c3cfe2 100644
> --- a/drivers/dma-buf/heaps/system_heap.c
> +++ b/drivers/dma-buf/heaps/system_heap.c
> @@ -395,6 +395,9 @@ static struct dma_buf *system_heap_allocate(struct dm=
a_heap *heap,
>  	exp_info.ops =3D &system_heap_buf_ops;
>  	exp_info.size =3D buffer->len;
>  	exp_info.flags =3D fd_flags;
> +#ifdef CONFIG_CGROUP_GPU
> +	exp_info.gpucg_dev =3D dma_heap_get_gpucg_dev(heap);
> +#endif
>  	exp_info.priv =3D buffer;
>  	dmabuf =3D dma_buf_export(&exp_info);
>  	if (IS_ERR(dmabuf)) {
> diff --git a/include/linux/dma-heap.h b/include/linux/dma-heap.h
> index 0c05561cad6e..e447a61d054e 100644
> --- a/include/linux/dma-heap.h
> +++ b/include/linux/dma-heap.h
> @@ -10,6 +10,7 @@
>  #define _DMA_HEAPS_H
> =20
>  #include <linux/cdev.h>
> +#include <linux/cgroup_gpu.h>
>  #include <linux/types.h>
> =20
>  struct dma_heap;
> @@ -59,6 +60,16 @@ void *dma_heap_get_drvdata(struct dma_heap *heap);
>   */
>  const char *dma_heap_get_name(struct dma_heap *heap);
> =20
> +/**
> + * dma_heap_get_gpucg_dev() - get a pointer to the struct gpucg_device f=
or the
> + * heap.
> + * @heap: DMA-Heap to retrieve gpucg_device for.
> + *
> + * Returns:
> + * The gpucg_device struct for the heap.
> + */
> +struct gpucg_device *dma_heap_get_gpucg_dev(struct dma_heap *heap);
> +
>  /**
>   * dma_heap_add - adds a heap to dmabuf heaps
>   * @exp_info:		information needed to register this heap
> --=20
> 2.35.1.1021.g381101b075-goog
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
