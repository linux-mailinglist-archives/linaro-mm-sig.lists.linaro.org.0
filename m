Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB2251C1F8
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 May 2022 16:11:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E7F748089
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 May 2022 14:11:22 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id DF0FD47FAF
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 May 2022 14:11:17 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id j6so8949944ejc.13
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 May 2022 07:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=LyVuJSSAzg0fwyN0+xHpF9jjC2z64gnmGRIntuxUZ+o=;
        b=GgpSwYTrdbJ+j3sbMTch+vG9BADj+Lzw81u2xXufT0SdKx7CzcXf97swMefLwYwElM
         kpp9Fgqa+P/l5QRcwfPvfaKuAr/1jv92+IoESr+pJFH9gFhSoeIYNkSOOE4vGaBNNCH7
         oGfwa0vrMhplz4z95R20YCjzAU2g5mi/s8NSg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=LyVuJSSAzg0fwyN0+xHpF9jjC2z64gnmGRIntuxUZ+o=;
        b=RPUTmG3Qmu21cFiBl+wqWZB8LS0TVuQ6yCoGNWe1V0HEF1ctXzmFEDdq+5xx7eJEaM
         j75siN0/JV3JbodGLvSHrWH5NaSpd6mQKMVO+I/gJk4laB2nJI0/dqSNNAVlLs35gNa3
         YkqphvY0F5xC26j5dbQgu6J6crMbbcQamVVXUXEY1abhjXSJojhX8bZw9qzc87qTUYrY
         qwpkYFm4t51OM4bDXNOZoCmutjwqoSO764xqeKY+eBfvy327cQgJwCkpAMDAJhgJaqhY
         9KoJoz1oVQ3dEh2w6ormDs4XSrd4qO9Qrkfky8pmfDucwbigW+C6Eup509md4TH2E9d3
         QwQg==
X-Gm-Message-State: AOAM532Tza6UxpjExSBUOyJILV0bzngz8fS6C9t7jlZW8sxk454nZuaL
	I5iTgmXTs5K7qB5+h4yS2Hzg2w==
X-Google-Smtp-Source: ABdhPJy+Jkvvgz8l4LwJSTSxr/M1sfedUZ7mEvPMbEaU76LVEpCE5lutT1QV2VMYWE3tqcF7w8YU1g==
X-Received: by 2002:a17:906:3c09:b0:6f3:9aff:e1a0 with SMTP id h9-20020a1709063c0900b006f39affe1a0mr26087363ejg.453.1651759876341;
        Thu, 05 May 2022 07:11:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id q2-20020a1709064c8200b006f3ef214dccsm802524eju.50.2022.05.05.07.11.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 07:11:15 -0700 (PDT)
Date: Thu, 5 May 2022 16:11:13 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YnPbAce42rTU7+Qa@phenom.ffwll.local>
References: <20220504122256.1654-1-christian.koenig@amd.com>
 <20220504122256.1654-4-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220504122256.1654-4-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: X2Q4CZMWGBWPCANWEUCLPGTMEGNC2VKD
X-Message-ID-Hash: X2Q4CZMWGBWPCANWEUCLPGTMEGNC2VKD
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/5] dma-buf: generalize dma_fence unwrap & merging v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X2Q4CZMWGBWPCANWEUCLPGTMEGNC2VKD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, May 04, 2022 at 02:22:55PM +0200, Christian K=F6nig wrote:
> Introduce a dma_fence_unwrap_merge() macro which allows to unwrap fences
> which potentially can be containers as well and then merge them back
> together into a flat dma_fence_array.
>=20
> v2: rename the function, add some more comments about how the wrapper is
>     used, move filtering of signaled fences into the unwrap iterator,
>     add complex selftest which covers more cases.

Yeah this addresses everything. The only thing that leaves me puzzled is
the unconditional dma_fence_put() in the testcases for the fences we stuff
into containers, I thought we only need that for error cases but not the
success. But I'm confused about that already in a previous patch.

Aside from that Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>


>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-fence-unwrap.c    |  99 +++++++++++++++++++++
>  drivers/dma-buf/st-dma-fence-unwrap.c | 109 +++++++++++++++++++++++
>  drivers/dma-buf/sync_file.c           | 119 ++------------------------
>  include/linux/dma-fence-unwrap.h      |  24 ++++++
>  4 files changed, 238 insertions(+), 113 deletions(-)
>=20
> diff --git a/drivers/dma-buf/dma-fence-unwrap.c b/drivers/dma-buf/dma-fen=
ce-unwrap.c
> index 7b0b91086ded..4ed5ea8807d7 100644
> --- a/drivers/dma-buf/dma-fence-unwrap.c
> +++ b/drivers/dma-buf/dma-fence-unwrap.c
> @@ -11,6 +11,7 @@
>  #include <linux/dma-fence-array.h>
>  #include <linux/dma-fence-chain.h>
>  #include <linux/dma-fence-unwrap.h>
> +#include <linux/slab.h>
> =20
>  /* Internal helper to start new array iteration, don't use directly */
>  static struct dma_fence *
> @@ -66,3 +67,101 @@ struct dma_fence *dma_fence_unwrap_next(struct dma_fe=
nce_unwrap *cursor)
>  	return tmp;
>  }
>  EXPORT_SYMBOL_GPL(dma_fence_unwrap_next);
> +
> +/* Implementation for the dma_fence_merge() marco, don't use directly */
> +struct dma_fence *__dma_fence_unwrap_merge(unsigned int num_fences,
> +					   struct dma_fence **fences,
> +					   struct dma_fence_unwrap *iter)
> +{
> +	struct dma_fence_array *result;
> +	struct dma_fence *tmp, **array;
> +	unsigned int i;
> +	size_t count;
> +
> +	count =3D 0;
> +	for (i =3D 0; i < num_fences; ++i) {
> +		dma_fence_unwrap_for_each(tmp, &iter[i], fences[i])
> +			++count;
> +	}
> +
> +	if (count =3D=3D 0)
> +		return dma_fence_get_stub();
> +
> +	array =3D kmalloc_array(count, sizeof(*array), GFP_KERNEL);
> +	if (!array)
> +		return NULL;
> +
> +	/*
> +	 * This trashes the input fence array and uses it as position for the
> +	 * following merge loop. This works because the dma_fence_merge()
> +	 * wrapper macro is creating this temporary array on the stack together
> +	 * with the iterators.
> +	 */
> +	for (i =3D 0; i < num_fences; ++i)
> +		fences[i] =3D dma_fence_unwrap_first(fences[i], &iter[i]);
> +
> +	count =3D 0;
> +	do {
> +		unsigned int sel;
> +
> +restart:
> +		tmp =3D NULL;
> +		for (i =3D 0; i < num_fences; ++i) {
> +			struct dma_fence *next =3D fences[i];
> +
> +			if (!next)
> +				continue;
> +
> +			/*
> +			 * We can't guarantee that inpute fences are ordered by
> +			 * context, but it is still quite likely when this
> +			 * function is used multiple times. So attempt to order
> +			 * the fences by context as we pass over them and merge
> +			 * fences with the same context.
> +			 */
> +			if (!tmp || tmp->context > next->context) {
> +				tmp =3D next;
> +				sel =3D i;
> +
> +			} else if (tmp->context < next->context) {
> +				continue;
> +
> +			} else if (dma_fence_is_later(tmp, next)) {
> +				fences[i] =3D dma_fence_unwrap_next(&iter[i]);
> +				goto restart;
> +			} else {
> +				fences[sel] =3D dma_fence_unwrap_next(&iter[sel]);
> +				goto restart;
> +			}
> +		}
> +
> +		if (tmp) {
> +			array[count++] =3D dma_fence_get(tmp);
> +			fences[sel] =3D dma_fence_unwrap_next(&iter[sel]);
> +		}
> +	} while (tmp);
> +
> +	if (count =3D=3D 0) {
> +		tmp =3D dma_fence_get_stub();
> +		goto return_tmp;
> +	}
> +
> +	if (count =3D=3D 1) {
> +		tmp =3D array[0];
> +		goto return_tmp;
> +	}
> +
> +	result =3D dma_fence_array_create(count, array,
> +					dma_fence_context_alloc(1),
> +					1, false);
> +	if (!result) {
> +		tmp =3D NULL;
> +		goto return_tmp;
> +	}
> +	return &result->base;
> +
> +return_tmp:
> +	kfree(array);
> +	return tmp;
> +}
> +EXPORT_SYMBOL_GPL(__dma_fence_unwrap_merge);
> diff --git a/drivers/dma-buf/st-dma-fence-unwrap.c b/drivers/dma-buf/st-d=
ma-fence-unwrap.c
> index 59628add93f5..3a8aca651938 100644
> --- a/drivers/dma-buf/st-dma-fence-unwrap.c
> +++ b/drivers/dma-buf/st-dma-fence-unwrap.c
> @@ -240,6 +240,113 @@ static int unwrap_chain_array(void *arg)
>  	return err;
>  }
> =20
> +static int unwrap_merge(void *arg)
> +{
> +	struct dma_fence *fence, *f1, *f2, *f3;
> +	struct dma_fence_unwrap iter;
> +	int err =3D 0;
> +
> +	f1 =3D mock_fence();
> +	if (!f1)
> +		return -ENOMEM;
> +
> +	f2 =3D mock_fence();
> +	if (!f2) {
> +		err =3D -ENOMEM;
> +		goto error_put_f1;
> +	}
> +
> +	f3 =3D dma_fence_unwrap_merge(f1, f2);
> +	if (!f3) {
> +		err =3D -ENOMEM;
> +		goto error_put_f2;
> +	}
> +
> +	dma_fence_unwrap_for_each(fence, &iter, f3) {
> +		if (fence =3D=3D f1) {
> +			dma_fence_put(f1);
> +			f1 =3D NULL;
> +		} else if (fence =3D=3D f2) {
> +			dma_fence_put(f2);
> +			f2 =3D NULL;
> +		} else {
> +			pr_err("Unexpected fence!\n");
> +			err =3D -EINVAL;
> +		}
> +	}
> +
> +	if (f1 || f2) {
> +		pr_err("Not all fences seen!\n");
> +		err =3D -EINVAL;
> +	}
> +
> +	dma_fence_put(f3);
> +error_put_f2:
> +	dma_fence_put(f2);
> +error_put_f1:
> +	dma_fence_put(f1);
> +	return err;
> +}
> +
> +static int unwrap_merge_complex(void *arg)
> +{
> +	struct dma_fence *fence, *f1, *f2, *f3, *f4, *f5;
> +	struct dma_fence_unwrap iter;
> +	int err =3D -ENOMEM;
> +
> +	f1 =3D mock_fence();
> +	if (!f1)
> +		return -ENOMEM;
> +
> +	f2 =3D mock_fence();
> +	if (!f2)
> +		goto error_put_f1;
> +
> +	f3 =3D dma_fence_unwrap_merge(f1, f2);
> +	if (!f3)
> +		goto error_put_f2;
> +
> +	/* The resulting array has the fences in reverse */
> +	f4 =3D dma_fence_unwrap_merge(f2, f1);
> +	if (!f4)
> +		goto error_put_f3;
> +
> +	/* Signaled fences should be filtered, the two arrays merged. */
> +	f5 =3D dma_fence_unwrap_merge(f3, f4, dma_fence_get_stub());
> +	if (!f5)
> +		goto error_put_f4;
> +
> +	err =3D 0;
> +	dma_fence_unwrap_for_each(fence, &iter, f5) {
> +		if (fence =3D=3D f1) {
> +			dma_fence_put(f1);
> +			f1 =3D NULL;
> +		} else if (fence =3D=3D f2) {
> +			dma_fence_put(f2);
> +			f2 =3D NULL;
> +		} else {
> +			pr_err("Unexpected fence!\n");
> +			err =3D -EINVAL;
> +		}
> +	}
> +
> +	if (f1 || f2) {
> +		pr_err("Not all fences seen!\n");
> +		err =3D -EINVAL;
> +	}
> +
> +	dma_fence_put(f5);
> +error_put_f4:
> +	dma_fence_put(f4);
> +error_put_f3:
> +	dma_fence_put(f3);
> +error_put_f2:
> +	dma_fence_put(f2);
> +error_put_f1:
> +	dma_fence_put(f1);
> +	return err;
> +}
> +
>  int dma_fence_unwrap(void)
>  {
>  	static const struct subtest tests[] =3D {
> @@ -247,6 +354,8 @@ int dma_fence_unwrap(void)
>  		SUBTEST(unwrap_array),
>  		SUBTEST(unwrap_chain),
>  		SUBTEST(unwrap_chain_array),
> +		SUBTEST(unwrap_merge),
> +		SUBTEST(unwrap_merge_complex),
>  	};
> =20
>  	return subtests(tests, NULL);
> diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> index 0fe564539166..3ebec19a8e02 100644
> --- a/drivers/dma-buf/sync_file.c
> +++ b/drivers/dma-buf/sync_file.c
> @@ -146,50 +146,6 @@ char *sync_file_get_name(struct sync_file *sync_file=
, char *buf, int len)
>  	return buf;
>  }
> =20
> -static int sync_file_set_fence(struct sync_file *sync_file,
> -			       struct dma_fence **fences, int num_fences)
> -{
> -	struct dma_fence_array *array;
> -
> -	/*
> -	 * The reference for the fences in the new sync_file and held
> -	 * in add_fence() during the merge procedure, so for num_fences =3D=3D 1
> -	 * we already own a new reference to the fence. For num_fence > 1
> -	 * we own the reference of the dma_fence_array creation.
> -	 */
> -
> -	if (num_fences =3D=3D 0) {
> -		sync_file->fence =3D dma_fence_get_stub();
> -		kfree(fences);
> -
> -	} else if (num_fences =3D=3D 1) {
> -		sync_file->fence =3D fences[0];
> -		kfree(fences);
> -
> -	} else {
> -		array =3D dma_fence_array_create(num_fences, fences,
> -					       dma_fence_context_alloc(1),
> -					       1, false);
> -		if (!array)
> -			return -ENOMEM;
> -
> -		sync_file->fence =3D &array->base;
> -	}
> -
> -	return 0;
> -}
> -
> -static void add_fence(struct dma_fence **fences,
> -		      int *i, struct dma_fence *fence)
> -{
> -	fences[*i] =3D fence;
> -
> -	if (!dma_fence_is_signaled(fence)) {
> -		dma_fence_get(fence);
> -		(*i)++;
> -	}
> -}
> -
>  /**
>   * sync_file_merge() - merge two sync_files
>   * @name:	name of new fence
> @@ -203,84 +159,21 @@ static void add_fence(struct dma_fence **fences,
>  static struct sync_file *sync_file_merge(const char *name, struct sync_f=
ile *a,
>  					 struct sync_file *b)
>  {
> -	struct dma_fence *a_fence, *b_fence, **fences;
> -	struct dma_fence_unwrap a_iter, b_iter;
> -	unsigned int index, num_fences;
>  	struct sync_file *sync_file;
> +	struct dma_fence *fence;
> =20
>  	sync_file =3D sync_file_alloc();
>  	if (!sync_file)
>  		return NULL;
> =20
> -	num_fences =3D 0;
> -	dma_fence_unwrap_for_each(a_fence, &a_iter, a->fence)
> -		++num_fences;
> -	dma_fence_unwrap_for_each(b_fence, &b_iter, b->fence)
> -		++num_fences;
> -
> -	if (num_fences > INT_MAX)
> -		goto err_free_sync_file;
> -
> -	fences =3D kcalloc(num_fences, sizeof(*fences), GFP_KERNEL);
> -	if (!fences)
> -		goto err_free_sync_file;
> -
> -	/*
> -	 * We can't guarantee that fences in both a and b are ordered, but it is
> -	 * still quite likely.
> -	 *
> -	 * So attempt to order the fences as we pass over them and merge fences
> -	 * with the same context.
> -	 */
> -
> -	index =3D 0;
> -	for (a_fence =3D dma_fence_unwrap_first(a->fence, &a_iter),
> -	     b_fence =3D dma_fence_unwrap_first(b->fence, &b_iter);
> -	     a_fence || b_fence; ) {
> -
> -		if (!b_fence) {
> -			add_fence(fences, &index, a_fence);
> -			a_fence =3D dma_fence_unwrap_next(&a_iter);
> -
> -		} else if (!a_fence) {
> -			add_fence(fences, &index, b_fence);
> -			b_fence =3D dma_fence_unwrap_next(&b_iter);
> -
> -		} else if (a_fence->context < b_fence->context) {
> -			add_fence(fences, &index, a_fence);
> -			a_fence =3D dma_fence_unwrap_next(&a_iter);
> -
> -		} else if (b_fence->context < a_fence->context) {
> -			add_fence(fences, &index, b_fence);
> -			b_fence =3D dma_fence_unwrap_next(&b_iter);
> -
> -		} else if (__dma_fence_is_later(a_fence->seqno, b_fence->seqno,
> -						a_fence->ops)) {
> -			add_fence(fences, &index, a_fence);
> -			a_fence =3D dma_fence_unwrap_next(&a_iter);
> -			b_fence =3D dma_fence_unwrap_next(&b_iter);
> -
> -		} else {
> -			add_fence(fences, &index, b_fence);
> -			a_fence =3D dma_fence_unwrap_next(&a_iter);
> -			b_fence =3D dma_fence_unwrap_next(&b_iter);
> -		}
> +	fence =3D dma_fence_unwrap_merge(a->fence, b->fence);
> +	if (!fence) {
> +		fput(sync_file->file);
> +		return NULL;
>  	}
> -
> -	if (sync_file_set_fence(sync_file, fences, index) < 0)
> -		goto err_put_fences;
> -
> +	sync_file->fence =3D fence;
>  	strlcpy(sync_file->user_name, name, sizeof(sync_file->user_name));
>  	return sync_file;
> -
> -err_put_fences:
> -	while (index)
> -		dma_fence_put(fences[--index]);
> -	kfree(fences);
> -
> -err_free_sync_file:
> -	fput(sync_file->file);
> -	return NULL;
>  }
> =20
>  static int sync_file_release(struct inode *inode, struct file *file)
> diff --git a/include/linux/dma-fence-unwrap.h b/include/linux/dma-fence-u=
nwrap.h
> index e9d114637294..43c8a9bbee88 100644
> --- a/include/linux/dma-fence-unwrap.h
> +++ b/include/linux/dma-fence-unwrap.h
> @@ -48,4 +48,28 @@ struct dma_fence *dma_fence_unwrap_next(struct dma_fen=
ce_unwrap *cursor);
>  	for (fence =3D dma_fence_unwrap_first(head, cursor); fence;	\
>  	     fence =3D dma_fence_unwrap_next(cursor))
> =20
> +struct dma_fence *__dma_fence_unwrap_merge(unsigned int num_fences,
> +					   struct dma_fence **fences,
> +					   struct dma_fence_unwrap *cursors);
> +
> +/**
> + * dma_fence_unwrap_merge - unwrap and merge fences
> + *
> + * All fences given as parameters are unwrapped and merged back together=
 as flat
> + * dma_fence_array. Useful if multiple containers need to be merged toge=
ther.
> + *
> + * Implemented as a macro to allocate the necessary arrays on the stack =
and
> + * account the stack frame size to the caller.
> + *
> + * Returns NULL on memory allocation failure, a dma_fence object represe=
nting
> + * all the given fences otherwise.
> + */
> +#define dma_fence_unwrap_merge(...)					\
> +	({								\
> +		struct dma_fence *__f[] =3D { __VA_ARGS__ };		\
> +		struct dma_fence_unwrap __c[ARRAY_SIZE(__f)];		\
> +									\
> +		__dma_fence_unwrap_merge(ARRAY_SIZE(__f), __f, __c);	\
> +	})
> +
>  #endif
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
