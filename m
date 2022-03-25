Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBA34E70ED
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Mar 2022 11:13:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2092A3F06C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Mar 2022 10:13:25 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	by lists.linaro.org (Postfix) with ESMTPS id F01C93F040
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Mar 2022 10:13:21 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id b19so10150193wrh.11
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Mar 2022 03:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=W9yiDcs2xq89D8bBdi8YII9B/thS43VC5jakhczl+VM=;
        b=SPZkSAWtoSjkxQqHoXP8wLmfxhqezv+leritFQeGncOLeeLBWjuRqw+wLrdaJRhJ3w
         PX7jPlkrVwx2BUsIL9NYba5tXkRICeOXy4rbzhYriEapH0GpVjkBp0AxLP16j7XEVaT/
         RDtA9dGnLahB+Vmd12nff+v5Gjlb5pNUkH7lI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=W9yiDcs2xq89D8bBdi8YII9B/thS43VC5jakhczl+VM=;
        b=JcMqc2Vy2l1kf01FNrHU+XxKk39PxQnyxVRalWFMri77hKkNJSKYOAxbNSwbdtugxt
         Jw2rdcZlFFata20ZOILizgCojCdyT0Wa95hJFpm/Md44XLXMjK4TbJR3qH2j38N+P+f8
         haSoAN7oyND61yqsKVjbm8C+owFgq+nNkpIjT0+nDUxUebMTMcUzINUQywUbLEE6IyU/
         b2cHeHwTo5irPUIYuHeF/ySI7xfWwjfA931Hd7I+9phc5CvY5DRzGj8ysdt+YJSX3zU5
         NfSn9Gc/MdW6/QXvEfwf1Jt0lAydiMdATyIkiuZ7hgSg8+W3Zr6cqQsaKS2qe7p2wZ92
         ot6g==
X-Gm-Message-State: AOAM5300uMnS0hxIm4weaAFxdhiG3dOw4+69qGtYI+l2gZn5UAdZBh12
	LrcgKx8sK6lZSKR9AyOhfTK6rg==
X-Google-Smtp-Source: ABdhPJxJsIapLKDRWOW55VXgkBRTDSR7/GC05YvkU9YzG+ojWvqnYk/ydS2ikgwV+Y1Uo/+LhBN/Dw==
X-Received: by 2002:adf:f949:0:b0:203:e87d:1d38 with SMTP id q9-20020adff949000000b00203e87d1d38mr8397904wrr.137.1648203201007;
        Fri, 25 Mar 2022 03:13:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 3-20020a5d47a3000000b0020412ba45f6sm5667247wrb.8.2022.03.25.03.13.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Mar 2022 03:13:20 -0700 (PDT)
Date: Fri, 25 Mar 2022 11:13:18 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Yj2VvjGUJl8kCS8H@phenom.ffwll.local>
References: <20220311110244.1245-1-christian.koenig@amd.com>
 <20220311110244.1245-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220311110244.1245-2-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: XZWSHE4A2GTFJ4HKJJTQMWBD3JORI4HO
X-Message-ID-Hash: XZWSHE4A2GTFJ4HKJJTQMWBD3JORI4HO
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dma-buf/sync-file: fix warning about fence containers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XZWSHE4A2GTFJ4HKJJTQMWBD3JORI4HO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 11, 2022 at 12:02:44PM +0100, Christian K=F6nig wrote:
> The dma_fence_chain containers can show up in sync_files as well resultin=
g in
> warnings that those can't be added to dma_fence_array containers when mer=
ging
> multiple sync_files together.
>=20
> Solve this by using the dma_fence_unwrap iterator to deep dive into the
> contained fences and then add those flatten out into a dma_fence_array.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

I have no idea why we try to keep fences sorted, but oh well it looks like
the merging is done correctly.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/dma-buf/sync_file.c | 141 +++++++++++++++++++-----------------
>  1 file changed, 73 insertions(+), 68 deletions(-)
>=20
> diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> index 394e6e1e9686..b8dea4ec123b 100644
> --- a/drivers/dma-buf/sync_file.c
> +++ b/drivers/dma-buf/sync_file.c
> @@ -5,6 +5,7 @@
>   * Copyright (C) 2012 Google, Inc.
>   */
> =20
> +#include <linux/dma-fence-unwrap.h>
>  #include <linux/export.h>
>  #include <linux/file.h>
>  #include <linux/fs.h>
> @@ -172,20 +173,6 @@ static int sync_file_set_fence(struct sync_file *syn=
c_file,
>  	return 0;
>  }
> =20
> -static struct dma_fence **get_fences(struct sync_file *sync_file,
> -				     int *num_fences)
> -{
> -	if (dma_fence_is_array(sync_file->fence)) {
> -		struct dma_fence_array *array =3D to_dma_fence_array(sync_file->fence);
> -
> -		*num_fences =3D array->num_fences;
> -		return array->fences;
> -	}
> -
> -	*num_fences =3D 1;
> -	return &sync_file->fence;
> -}
> -
>  static void add_fence(struct dma_fence **fences,
>  		      int *i, struct dma_fence *fence)
>  {
> @@ -210,86 +197,97 @@ static void add_fence(struct dma_fence **fences,
>  static struct sync_file *sync_file_merge(const char *name, struct sync_f=
ile *a,
>  					 struct sync_file *b)
>  {
> +	struct dma_fence *a_fence, *b_fence, **fences;
> +	struct dma_fence_unwrap a_iter, b_iter;
> +	unsigned int index, num_fences;
>  	struct sync_file *sync_file;
> -	struct dma_fence **fences =3D NULL, **nfences, **a_fences, **b_fences;
> -	int i =3D 0, i_a, i_b, num_fences, a_num_fences, b_num_fences;
> =20
>  	sync_file =3D sync_file_alloc();
>  	if (!sync_file)
>  		return NULL;
> =20
> -	a_fences =3D get_fences(a, &a_num_fences);
> -	b_fences =3D get_fences(b, &b_num_fences);
> -	if (a_num_fences > INT_MAX - b_num_fences)
> -		goto err;
> +	num_fences =3D 0;
> +	dma_fence_unwrap_for_each(a_fence, &a_iter, a->fence)
> +		++num_fences;
> +	dma_fence_unwrap_for_each(b_fence, &b_iter, b->fence)
> +		++num_fences;
> =20
> -	num_fences =3D a_num_fences + b_num_fences;
> +	if (num_fences > INT_MAX)
> +		goto err_free_sync_file;
> =20
>  	fences =3D kcalloc(num_fences, sizeof(*fences), GFP_KERNEL);
>  	if (!fences)
> -		goto err;
> +		goto err_free_sync_file;
> =20
>  	/*
> -	 * Assume sync_file a and b are both ordered and have no
> -	 * duplicates with the same context.
> +	 * We can't guarantee that fences in both a and b are ordered, but it is
> +	 * still quite likely.
>  	 *
> -	 * If a sync_file can only be created with sync_file_merge
> -	 * and sync_file_create, this is a reasonable assumption.
> +	 * So attempt to order the fences as we pass over them and merge fences
> +	 * with the same context.
>  	 */
> -	for (i_a =3D i_b =3D 0; i_a < a_num_fences && i_b < b_num_fences; ) {
> -		struct dma_fence *pt_a =3D a_fences[i_a];
> -		struct dma_fence *pt_b =3D b_fences[i_b];
> =20
> -		if (pt_a->context < pt_b->context) {
> -			add_fence(fences, &i, pt_a);
> +	index =3D 0;
> +	for (a_fence =3D dma_fence_unwrap_first(a->fence, &a_iter),
> +	     b_fence =3D dma_fence_unwrap_first(b->fence, &b_iter);
> +	     a_fence || b_fence; ) {
> +
> +		if (!b_fence) {
> +			add_fence(fences, &index, a_fence);
> +			a_fence =3D dma_fence_unwrap_next(&a_iter);
> +
> +		} else if (!a_fence) {
> +			add_fence(fences, &index, b_fence);
> +			b_fence =3D dma_fence_unwrap_next(&b_iter);
> +
> +		} else if (a_fence->context < b_fence->context) {
> +			add_fence(fences, &index, a_fence);
> +			a_fence =3D dma_fence_unwrap_next(&a_iter);
> =20
> -			i_a++;
> -		} else if (pt_a->context > pt_b->context) {
> -			add_fence(fences, &i, pt_b);
> +		} else if (b_fence->context < a_fence->context) {
> +			add_fence(fences, &index, b_fence);
> +			b_fence =3D dma_fence_unwrap_next(&b_iter);
> +
> +		} else if (__dma_fence_is_later(a_fence->seqno, b_fence->seqno,
> +						a_fence->ops)) {
> +			add_fence(fences, &index, a_fence);
> +			a_fence =3D dma_fence_unwrap_next(&a_iter);
> +			b_fence =3D dma_fence_unwrap_next(&b_iter);
> =20
> -			i_b++;
>  		} else {
> -			if (__dma_fence_is_later(pt_a->seqno, pt_b->seqno,
> -						 pt_a->ops))
> -				add_fence(fences, &i, pt_a);
> -			else
> -				add_fence(fences, &i, pt_b);
> -
> -			i_a++;
> -			i_b++;
> +			add_fence(fences, &index, b_fence);
> +			a_fence =3D dma_fence_unwrap_next(&a_iter);
> +			b_fence =3D dma_fence_unwrap_next(&b_iter);
>  		}
>  	}
> =20
> -	for (; i_a < a_num_fences; i_a++)
> -		add_fence(fences, &i, a_fences[i_a]);
> -
> -	for (; i_b < b_num_fences; i_b++)
> -		add_fence(fences, &i, b_fences[i_b]);
> -
> -	if (i =3D=3D 0)
> -		fences[i++] =3D dma_fence_get(a_fences[0]);
> +	if (index =3D=3D 0)
> +		add_fence(fences, &index, dma_fence_get_stub());
> =20
> -	if (num_fences > i) {
> -		nfences =3D krealloc_array(fences, i, sizeof(*fences), GFP_KERNEL);
> -		if (!nfences)
> -			goto err;
> +	if (num_fences > index) {
> +		struct dma_fence **tmp;
> =20
> -		fences =3D nfences;
> +		/* Keep going even when reducing the size failed */
> +		tmp =3D krealloc_array(fences, index, sizeof(*fences),
> +				     GFP_KERNEL);
> +		if (tmp)
> +			fences =3D tmp;
>  	}
> =20
> -	if (sync_file_set_fence(sync_file, fences, i) < 0)
> -		goto err;
> +	if (sync_file_set_fence(sync_file, fences, index) < 0)
> +		goto err_put_fences;
> =20
>  	strlcpy(sync_file->user_name, name, sizeof(sync_file->user_name));
>  	return sync_file;
> =20
> -err:
> -	while (i)
> -		dma_fence_put(fences[--i]);
> +err_put_fences:
> +	while (index)
> +		dma_fence_put(fences[--index]);
>  	kfree(fences);
> +
> +err_free_sync_file:
>  	fput(sync_file->file);
>  	return NULL;
> -
>  }
> =20
>  static int sync_file_release(struct inode *inode, struct file *file)
> @@ -398,11 +396,13 @@ static int sync_fill_fence_info(struct dma_fence *f=
ence,
>  static long sync_file_ioctl_fence_info(struct sync_file *sync_file,
>  				       unsigned long arg)
>  {
> -	struct sync_file_info info;
>  	struct sync_fence_info *fence_info =3D NULL;
> -	struct dma_fence **fences;
> +	struct dma_fence_unwrap iter;
> +	struct sync_file_info info;
> +	unsigned int num_fences;
> +	struct dma_fence *fence;
> +	int ret;
>  	__u32 size;
> -	int num_fences, ret, i;
> =20
>  	if (copy_from_user(&info, (void __user *)arg, sizeof(info)))
>  		return -EFAULT;
> @@ -410,7 +410,9 @@ static long sync_file_ioctl_fence_info(struct sync_fi=
le *sync_file,
>  	if (info.flags || info.pad)
>  		return -EINVAL;
> =20
> -	fences =3D get_fences(sync_file, &num_fences);
> +	num_fences =3D 0;
> +	dma_fence_unwrap_for_each(fence, &iter, sync_file->fence)
> +		++num_fences;
> =20
>  	/*
>  	 * Passing num_fences =3D 0 means that userspace doesn't want to
> @@ -433,8 +435,11 @@ static long sync_file_ioctl_fence_info(struct sync_f=
ile *sync_file,
>  	if (!fence_info)
>  		return -ENOMEM;
> =20
> -	for (i =3D 0; i < num_fences; i++) {
> -		int status =3D sync_fill_fence_info(fences[i], &fence_info[i]);
> +	num_fences =3D 0;
> +	dma_fence_unwrap_for_each(fence, &iter, sync_file->fence) {
> +		int status;
> +
> +		status =3D sync_fill_fence_info(fence, &fence_info[num_fences++]);
>  		info.status =3D info.status <=3D 0 ? info.status : status;
>  	}
> =20
> --=20
> 2.25.1
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
