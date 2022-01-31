Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE524A506F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 31 Jan 2022 21:45:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C66D43ECC8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 31 Jan 2022 20:45:33 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 286143EBC2
	for <linaro-mm-sig@lists.linaro.org>; Mon, 31 Jan 2022 20:45:25 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id v123so11154170wme.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 31 Jan 2022 12:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=DKliILyWleLP9p6shtxyrGCmReRwzPxlgvxOVNe4ILs=;
        b=gavOKU41Z2PgjXghhDKB6UqqvbETpsoZY8DzgYsai61Oje1kwNbcUyMjgQfQPpUvEA
         dPOuj2PvzV9Vd0jX4yM6gwcBu0l9k7D+0HeCITC6dSzZQWXnQOgYQdWqHw5TxXZ6kaTn
         L7t5iv5qdPdUB3UZ+k2DW8MXpNTobKwl5lrRM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=DKliILyWleLP9p6shtxyrGCmReRwzPxlgvxOVNe4ILs=;
        b=16iCjp/Lj2zHxdn7tOKUz6yuZYqRcNAMr6QJ7dUzyPaJVwhRijsLOQE4wMrMOdyWaN
         mSiL/VP0xJNAVJNjOR0P9Jy+2JUdFoW2GQkLt1oshwvX0SQlLVYwot3KLlk086+K2Yrk
         UWDWyeAls7Eevlc1c6+hEGS3yOt3lP9xEtGlZcrQyW0WO7YBC1p+rX5WtMeewIH/5tzn
         s09K1v1nlslOHpgt4VmIw1WMnycaI6Jawo8tlHAxEtzPfg7os3DmMA3eJePnTBZqnmnS
         1FkD/Ti5PjAzLKTuRdwL8JIgF5ajoLEKU/z7dWd3jsNJVOVs5jMHNBy+cIGT7VOxj/ea
         iuxw==
X-Gm-Message-State: AOAM53242WM3//6OLaSOuDeMBSMs36zURbK1sxmAZLimrcit7Lr/jgyK
	j5ha2lGqEbO9aewUGV0TM4EF6g==
X-Google-Smtp-Source: ABdhPJy+gjcccs2gMucor32Ho4o6IXkTQwR34+nwPWJWpa8rWE5wCt7agozeVKWOLxOAROAhOEWsFw==
X-Received: by 2002:a05:600c:282:: with SMTP id 2mr2716817wmk.24.1643661924148;
        Mon, 31 Jan 2022 12:45:24 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id o6sm14678588wrc.65.2022.01.31.12.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 12:45:23 -0800 (PST)
Date: Mon, 31 Jan 2022 21:45:00 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <YfhKTK62lpAG+Y1O@phenom.ffwll.local>
References: <20211130091609.1335915-1-daniel.vetter@ffwll.ch>
 <20211130152756.1388106-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211130152756.1388106-1-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: XVLYIKWONUFHJZL6QJYSRIMGPY5QHUSF
X-Message-ID-Hash: XVLYIKWONUFHJZL6QJYSRIMGPY5QHUSF
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-resv: some doc polish for iterators
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XVLYIKWONUFHJZL6QJYSRIMGPY5QHUSF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 30, 2021 at 04:27:55PM +0100, Daniel Vetter wrote:
> Hammer it a bit more in that iterators can be restarted and when that
> matters, plus suggest to prefer the locked version whenver.
>=20
> Also delete the two leftover kerneldoc for static functions plus
> sprinkle some more links while at it.
>=20
> v2: Keep some comments (Christian)
>=20
> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> Cc: linux-media@vger.kernel.org
> Cc: linaro-mm-sig@lists.linaro.org

Soooooo behind on random stuff, just noticed I never merged this. Done
that now.
-Daniel

> ---
>  drivers/dma-buf/dma-resv.c | 29 +++++++++++++++--------------
>  include/linux/dma-resv.h   | 13 ++++++++++++-
>  2 files changed, 27 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index 9eb2baa387d4..a62eb8fc33b9 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -323,12 +323,8 @@ void dma_resv_add_excl_fence(struct dma_resv *obj, s=
truct dma_fence *fence)
>  }
>  EXPORT_SYMBOL(dma_resv_add_excl_fence);
> =20
> -/**
> - * dma_resv_iter_restart_unlocked - restart the unlocked iterator
> - * @cursor: The dma_resv_iter object to restart
> - *
> - * Restart the unlocked iteration by initializing the cursor object.
> - */
> +/* Restart the iterator by initializing all the necessary fields, but no=
t the
> + * relation to the dma_resv object. */
>  static void dma_resv_iter_restart_unlocked(struct dma_resv_iter *cursor)
>  {
>  	cursor->seq =3D read_seqcount_begin(&cursor->obj->seq);
> @@ -344,14 +340,7 @@ static void dma_resv_iter_restart_unlocked(struct dm=
a_resv_iter *cursor)
>  	cursor->is_restarted =3D true;
>  }
> =20
> -/**
> - * dma_resv_iter_walk_unlocked - walk over fences in a dma_resv obj
> - * @cursor: cursor to record the current position
> - *
> - * Return all the fences in the dma_resv object which are not yet signal=
ed.
> - * The returned fence has an extra local reference so will stay alive.
> - * If a concurrent modify is detected the whole iteration is started ove=
r again.
> - */
> +/* Walk to the next not signaled fence and grab a reference to it */
>  static void dma_resv_iter_walk_unlocked(struct dma_resv_iter *cursor)
>  {
>  	struct dma_resv *obj =3D cursor->obj;
> @@ -387,6 +376,12 @@ static void dma_resv_iter_walk_unlocked(struct dma_r=
esv_iter *cursor)
>   * dma_resv_iter_first_unlocked - first fence in an unlocked dma_resv ob=
j.
>   * @cursor: the cursor with the current position
>   *
> + * Subsequent fences are iterated with dma_resv_iter_next_unlocked().
> + *
> + * Beware that the iterator can be restarted.  Code which accumulates st=
atistics
> + * or similar needs to check for this with dma_resv_iter_is_restarted().=
 For
> + * this reason prefer the locked dma_resv_iter_first() whenver possible.
> + *
>   * Returns the first fence from an unlocked dma_resv obj.
>   */
>  struct dma_fence *dma_resv_iter_first_unlocked(struct dma_resv_iter *cur=
sor)
> @@ -406,6 +401,10 @@ EXPORT_SYMBOL(dma_resv_iter_first_unlocked);
>   * dma_resv_iter_next_unlocked - next fence in an unlocked dma_resv obj.
>   * @cursor: the cursor with the current position
>   *
> + * Beware that the iterator can be restarted.  Code which accumulates st=
atistics
> + * or similar needs to check for this with dma_resv_iter_is_restarted().=
 For
> + * this reason prefer the locked dma_resv_iter_next() whenver possible.
> + *
>   * Returns the next fence from an unlocked dma_resv obj.
>   */
>  struct dma_fence *dma_resv_iter_next_unlocked(struct dma_resv_iter *curs=
or)
> @@ -431,6 +430,8 @@ EXPORT_SYMBOL(dma_resv_iter_next_unlocked);
>   * dma_resv_iter_first - first fence from a locked dma_resv object
>   * @cursor: cursor to record the current position
>   *
> + * Subsequent fences are iterated with dma_resv_iter_next_unlocked().
> + *
>   * Return the first fence in the dma_resv object while holding the
>   * &dma_resv.lock.
>   */
> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index dbd235ab447f..ebe908592ac3 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -153,6 +153,13 @@ struct dma_resv {
>   * struct dma_resv_iter - current position into the dma_resv fences
>   *
>   * Don't touch this directly in the driver, use the accessor function in=
stead.
> + *
> + * IMPORTANT
> + *
> + * When using the lockless iterators like dma_resv_iter_next_unlocked() =
or
> + * dma_resv_for_each_fence_unlocked() beware that the iterator can be re=
started.
> + * Code which accumulates statistics or similar needs to check for this =
with
> + * dma_resv_iter_is_restarted().
>   */
>  struct dma_resv_iter {
>  	/** @obj: The dma_resv object we iterate over */
> @@ -243,7 +250,11 @@ static inline bool dma_resv_iter_is_restarted(struct=
 dma_resv_iter *cursor)
>   * &dma_resv.lock and using RCU instead. The cursor needs to be initiali=
zed
>   * with dma_resv_iter_begin() and cleaned up with dma_resv_iter_end(). I=
nside
>   * the iterator a reference to the dma_fence is held and the RCU lock dr=
opped.
> - * When the dma_resv is modified the iteration starts over again.
> + *
> + * Beware that the iterator can be restarted when the struct dma_resv for
> + * @cursor is modified. Code which accumulates statistics or similar nee=
ds to
> + * check for this with dma_resv_iter_is_restarted(). For this reason pre=
fer the
> + * lock iterator dma_resv_for_each_fence() whenever possible.
>   */
>  #define dma_resv_for_each_fence_unlocked(cursor, fence)			\
>  	for (fence =3D dma_resv_iter_first_unlocked(cursor);		\
> --=20
> 2.33.0
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
