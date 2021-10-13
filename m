Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F2E42C210
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 16:05:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DAEAA619D7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 14:04:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6151161840; Wed, 13 Oct 2021 14:04:56 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 656D56141E;
	Wed, 13 Oct 2021 14:04:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CC27B607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:04:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C13FF6141E; Wed, 13 Oct 2021 14:04:51 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id B4C89607FD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 14:04:49 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id r18so8825607wrg.6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 07:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=8arhVRVJMM/h5+bGfd41jsxKdQFpqyddyEDa37EQIQ8=;
 b=TdCz2jiMPVNPGmXy1MfLiPR+cHK0cAYyfdkweSUyxLdb93OAoNSp0t1ewpI4zSMeA4
 dY+WsqKuPpowLcQY8W1qL29R4MwcY94W6g+eSpWuF0gRLqmpYRYUzqlCTVe16cJh3/Vh
 pN1WbuyNHLBMLwTZsjyNQusxAOeMxNvF0NWu4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=8arhVRVJMM/h5+bGfd41jsxKdQFpqyddyEDa37EQIQ8=;
 b=xkGbr0lJbyh/pxx8S7CT0J8Xhm/gL1yRm9Jcy6cPfep6upTZ6O6OMHvnyyZOQpW0wf
 K4F0Ik/wveK7Jvs1HhtU6NHykP8Miqkeiqez6szLgmlkDPWKh3c6BgF4Z6L20xR3v9/V
 aFrgxFU17GSa/Zy8dOLpC8X3XrVnYEOXf3WWlPDEnpAsci61ZNaBL7gN9tB+TcvaddDH
 eUKf/FTcr3fHWcHB5rdte5lxroygCEwedjExr0AI5NfkHTE5I+H3Vggk3beXHVRLMjoK
 V6xD3FzSnVkWA2ZASOxTJ5dobpITumfFf/rVEAyLAYS7NQ12kr3mxzf2tHHKy6ir9qUF
 ApQw==
X-Gm-Message-State: AOAM532jO+UjxjGeoh+gs/ipyG3rboEOeSWGBAxGoLCrP6DgGwMggm9a
 1Mlo924sWesZWrnCk9p4pxWR2w==
X-Google-Smtp-Source: ABdhPJygRDKWOSNpd6ZdotmTHdQYpKRtkoIUvlMILRACpq5gJocRd+rbfydJiSsRbGMYRPk3kb970w==
X-Received: by 2002:a05:600c:378a:: with SMTP id
 o10mr12659347wmr.77.1634133888765; 
 Wed, 13 Oct 2021 07:04:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c132sm5643138wma.22.2021.10.13.07.04.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:04:48 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:04:46 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YWbnfhU+4bHKluhf@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-4-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005113742.1101-4-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 03/28] dma-buf: add dma_resv selftest v3
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
Cc: tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 daniel@ffwll.ch, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Oct 05, 2021 at 01:37:17PM +0200, Christian K=F6nig wrote:
> Just exercising a very minor subset of the functionality, but already
> proven useful.
> =

> v2: add missing locking
> v3: some more cleanup and consolidation, add unlocked test as well
> =

> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>

Yeah this is great, since if we then get some specific bug later on it's
going to be very easy to add the unit test for the precise bug hopefully.

I scrolled through, looks correct.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/dma-buf/Makefile      |   3 +-
>  drivers/dma-buf/selftests.h   |   1 +
>  drivers/dma-buf/st-dma-resv.c | 282 ++++++++++++++++++++++++++++++++++
>  3 files changed, 285 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/dma-buf/st-dma-resv.c
> =

> diff --git a/drivers/dma-buf/Makefile b/drivers/dma-buf/Makefile
> index 1ef021273a06..511805dbeb75 100644
> --- a/drivers/dma-buf/Makefile
> +++ b/drivers/dma-buf/Makefile
> @@ -11,6 +11,7 @@ obj-$(CONFIG_DMABUF_SYSFS_STATS) +=3D dma-buf-sysfs-sta=
ts.o
>  dmabuf_selftests-y :=3D \
>  	selftest.o \
>  	st-dma-fence.o \
> -	st-dma-fence-chain.o
> +	st-dma-fence-chain.o \
> +	st-dma-resv.o
>  =

>  obj-$(CONFIG_DMABUF_SELFTESTS)	+=3D dmabuf_selftests.o
> diff --git a/drivers/dma-buf/selftests.h b/drivers/dma-buf/selftests.h
> index bc8cea67bf1e..97d73aaa31da 100644
> --- a/drivers/dma-buf/selftests.h
> +++ b/drivers/dma-buf/selftests.h
> @@ -12,3 +12,4 @@
>  selftest(sanitycheck, __sanitycheck__) /* keep first (igt selfcheck) */
>  selftest(dma_fence, dma_fence)
>  selftest(dma_fence_chain, dma_fence_chain)
> +selftest(dma_resv, dma_resv)
> diff --git a/drivers/dma-buf/st-dma-resv.c b/drivers/dma-buf/st-dma-resv.c
> new file mode 100644
> index 000000000000..50d3791ccb8c
> --- /dev/null
> +++ b/drivers/dma-buf/st-dma-resv.c
> @@ -0,0 +1,282 @@
> +/* SPDX-License-Identifier: MIT */
> +
> +/*
> +* Copyright =A9 2019 Intel Corporation
> +* Copyright =A9 2021 Advanced Micro Devices, Inc.
> +*/
> +
> +#include <linux/slab.h>
> +#include <linux/spinlock.h>
> +#include <linux/dma-resv.h>
> +
> +#include "selftest.h"
> +
> +static struct spinlock fence_lock;
> +
> +static const char *fence_name(struct dma_fence *f)
> +{
> +	return "selftest";
> +}
> +
> +static const struct dma_fence_ops fence_ops =3D {
> +	.get_driver_name =3D fence_name,
> +	.get_timeline_name =3D fence_name,
> +};
> +
> +static struct dma_fence *alloc_fence(void)
> +{
> +	struct dma_fence *f;
> +
> +	f =3D kmalloc(sizeof(*f), GFP_KERNEL);
> +	if (!f)
> +		return NULL;
> +
> +	dma_fence_init(f, &fence_ops, &fence_lock, 0, 0);
> +	return f;
> +}
> +
> +static int sanitycheck(void *arg)
> +{
> +	struct dma_resv resv;
> +	struct dma_fence *f;
> +	int r;
> +
> +	f =3D alloc_fence();
> +	if (!f)
> +		return -ENOMEM;
> +
> +	dma_fence_signal(f);
> +	dma_fence_put(f);
> +
> +	dma_resv_init(&resv);
> +	r =3D dma_resv_lock(&resv, NULL);
> +	if (r)
> +		pr_err("Resv locking failed\n");
> +	else
> +		dma_resv_unlock(&resv);
> +	dma_resv_fini(&resv);
> +	return r;
> +}
> +
> +static int test_signaling(void *arg, bool shared)
> +{
> +	struct dma_resv resv;
> +	struct dma_fence *f;
> +	int r;
> +
> +	f =3D alloc_fence();
> +	if (!f)
> +		return -ENOMEM;
> +
> +	dma_resv_init(&resv);
> +	r =3D dma_resv_lock(&resv, NULL);
> +	if (r) {
> +		pr_err("Resv locking failed\n");
> +		goto err_free;
> +	}
> +
> +	if (shared) {
> +		r =3D dma_resv_reserve_shared(&resv, 1);
> +		if (r) {
> +			pr_err("Resv shared slot allocation failed\n");
> +			goto err_unlock;
> +		}
> +
> +		dma_resv_add_shared_fence(&resv, f);
> +	} else {
> +		dma_resv_add_excl_fence(&resv, f);
> +	}
> +
> +	if (dma_resv_test_signaled(&resv, shared)) {
> +		pr_err("Resv unexpectedly signaled\n");
> +		r =3D -EINVAL;
> +		goto err_unlock;
> +	}
> +	dma_fence_signal(f);
> +	if (!dma_resv_test_signaled(&resv, shared)) {
> +		pr_err("Resv not reporting signaled\n");
> +		r =3D -EINVAL;
> +		goto err_unlock;
> +	}
> +err_unlock:
> +	dma_resv_unlock(&resv);
> +err_free:
> +	dma_resv_fini(&resv);
> +	dma_fence_put(f);
> +	return r;
> +}
> +
> +static int test_excl_signaling(void *arg)
> +{
> +	return test_signaling(arg, false);
> +}
> +
> +static int test_shared_signaling(void *arg)
> +{
> +	return test_signaling(arg, true);
> +}
> +
> +static int test_for_each(void *arg, bool shared)
> +{
> +	struct dma_resv_iter cursor;
> +	struct dma_fence *f, *fence;
> +	struct dma_resv resv;
> +	int r;
> +
> +	f =3D alloc_fence();
> +	if (!f)
> +		return -ENOMEM;
> +
> +	dma_resv_init(&resv);
> +	r =3D dma_resv_lock(&resv, NULL);
> +	if (r) {
> +		pr_err("Resv locking failed\n");
> +		goto err_free;
> +	}
> +
> +	if (shared) {
> +		r =3D dma_resv_reserve_shared(&resv, 1);
> +		if (r) {
> +			pr_err("Resv shared slot allocation failed\n");
> +			goto err_unlock;
> +		}
> +
> +		dma_resv_add_shared_fence(&resv, f);
> +	} else {
> +		dma_resv_add_excl_fence(&resv, f);
> +	}
> +
> +	r =3D -ENOENT;
> +	dma_resv_for_each_fence(&cursor, &resv, shared, fence) {
> +		if (!r) {
> +			pr_err("More than one fence found\n");
> +			r =3D -EINVAL;
> +			goto err_unlock;
> +		}
> +		if (f !=3D fence) {
> +			pr_err("Unexpected fence\n");
> +			r =3D -EINVAL;
> +			goto err_unlock;
> +		}
> +		if (dma_resv_iter_is_exclusive(&cursor) !=3D !shared) {
> +			pr_err("Unexpected fence usage\n");
> +			r =3D -EINVAL;
> +			goto err_unlock;
> +		}
> +		r =3D 0;
> +	}
> +	if (r) {
> +		pr_err("No fence found\n");
> +		goto err_unlock;
> +	}
> +	dma_fence_signal(f);
> +err_unlock:
> +	dma_resv_unlock(&resv);
> +err_free:
> +	dma_resv_fini(&resv);
> +	dma_fence_put(f);
> +	return r;
> +}
> +
> +static int test_excl_for_each(void *arg)
> +{
> +	return test_for_each(arg, false);
> +}
> +
> +static int test_shared_for_each(void *arg)
> +{
> +	return test_for_each(arg, false);
> +}
> +
> +static int test_for_each_unlocked(void *arg, bool shared)
> +{
> +	struct dma_resv_iter cursor;
> +	struct dma_fence *f, *fence;
> +	struct dma_resv resv;
> +	int r;
> +
> +	f =3D alloc_fence();
> +	if (!f)
> +		return -ENOMEM;
> +
> +	dma_resv_init(&resv);
> +	r =3D dma_resv_lock(&resv, NULL);
> +	if (r) {
> +		pr_err("Resv locking failed\n");
> +		goto err_free;
> +	}
> +
> +	if (shared) {
> +		r =3D dma_resv_reserve_shared(&resv, 1);
> +		if (r) {
> +			pr_err("Resv shared slot allocation failed\n");
> +			dma_resv_unlock(&resv);
> +			goto err_free;
> +		}
> +
> +		dma_resv_add_shared_fence(&resv, f);
> +	} else {
> +		dma_resv_add_excl_fence(&resv, f);
> +	}
> +	dma_resv_unlock(&resv);
> +
> +	r =3D -ENOENT;
> +	dma_resv_iter_begin(&cursor, &resv, shared);
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> +		if (!r) {
> +			dma_resv_iter_end(&cursor);
> +			pr_err("More than one fence found\n");
> +			r =3D -EINVAL;
> +			goto err_free;
> +		}
> +		if (f !=3D fence) {
> +			dma_resv_iter_end(&cursor);
> +			pr_err("Unexpected fence\n");
> +			r =3D -EINVAL;
> +			goto err_free;
> +		}
> +		if (dma_resv_iter_is_exclusive(&cursor) !=3D !shared) {
> +			dma_resv_iter_end(&cursor);
> +			pr_err("Unexpected fence usage\n");
> +			r =3D -EINVAL;
> +			goto err_free;
> +		}
> +		r =3D 0;
> +	}
> +	dma_resv_iter_end(&cursor);
> +	if (r) {
> +		pr_err("No fence found\n");
> +		goto err_free;
> +	}
> +	dma_fence_signal(f);
> +err_free:
> +	dma_resv_fini(&resv);
> +	dma_fence_put(f);
> +	return r;
> +}
> +
> +static int test_excl_for_each_unlocked(void *arg)
> +{
> +	return test_for_each_unlocked(arg, false);
> +}
> +
> +static int test_shared_for_each_unlocked(void *arg)
> +{
> +	return test_for_each_unlocked(arg, true);
> +}
> +
> +int dma_resv(void)
> +{
> +	static const struct subtest tests[] =3D {
> +		SUBTEST(sanitycheck),
> +		SUBTEST(test_excl_signaling),
> +		SUBTEST(test_shared_signaling),
> +		SUBTEST(test_excl_for_each),
> +		SUBTEST(test_shared_for_each),
> +		SUBTEST(test_excl_for_each_unlocked),
> +		SUBTEST(test_shared_for_each_unlocked),
> +	};
> +
> +	spin_lock_init(&fence_lock);
> +	return subtests(tests, NULL);
> +}
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
