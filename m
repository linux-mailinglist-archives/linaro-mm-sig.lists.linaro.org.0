Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CE16C4EA991
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 10:46:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C4BD3EBFA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 08:46:48 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	by lists.linaro.org (Postfix) with ESMTPS id 16BE53EBF6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 08:46:44 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id w4so23683014wrg.12
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 01:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=WQ2kaLdWd6bHTTrUYmbjDh5DyF5e2Q5tFk7Y5yf6aUw=;
        b=eTH/oHfZCV5h175g+RYPvPFYYi6sXFINblkVYg23zTrxiBsRnTFWise7hJ4+9STE/G
         ZDHccT2vFfBJrJN4Ag/Fk7dNV1RxSoITw3Mi+zPhCs0Qwnu8Av84KmlR4TkM+8Ecmy9q
         /Io6bY6jMY35VykqPN/PuL1VVXtUHa8wHreG0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=WQ2kaLdWd6bHTTrUYmbjDh5DyF5e2Q5tFk7Y5yf6aUw=;
        b=YGyZlrDBZGH+DmRQRRpctOj1NwzgkBbVmHm0P/eGhoTeGTY4APEuy/RYoHrJJ6TKKF
         50kX8glQBJdbDbllTuNnY2hBdVxkCC3CQOb+y1IyPaXXXV0fziy2u+blUgqEmvFktara
         du3cAO8p37sCTvppsHuT7Y6SCt4Y7+awe14IhQBdZb8QkCZqquvsT2lFy7FU7N7DTU7h
         fR5CAm61a28GPyMJhcCCjLVIh5V/3VbBOOmty5hJXI2Oy1yCJLQmF4rRMfxlHhzVeryZ
         dwZTj/smOhLK7QDHb70GwvQWJa0FXvvmS+dymV5et4xtd+aVF2FHZZGWDAC62FGr+xHA
         +YBg==
X-Gm-Message-State: AOAM533qv7jtxLUAnHlhY7UsfiYZ5XmLLD2o9QmbEh2+pHptqnLz6zcS
	QjizPMNBbavL6th1KEZqzB9zYw==
X-Google-Smtp-Source: ABdhPJwf7Cm09Z2yPWUhWw1HzwyqJfse0xcCimVQyH8DzhRGXu5ot9HMcA9Ssfthoofr9lmI4zKDOw==
X-Received: by 2002:adf:e488:0:b0:205:a8e0:6095 with SMTP id i8-20020adfe488000000b00205a8e06095mr22344861wrm.324.1648543603106;
        Tue, 29 Mar 2022 01:46:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id d20-20020a05600c34d400b0038caf684679sm2398607wmq.0.2022.03.29.01.46.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 01:46:42 -0700 (PDT)
Date: Tue, 29 Mar 2022 10:46:40 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YkLHcMGARAA9Ektl@phenom.ffwll.local>
References: <20220329070001.134180-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220329070001.134180-1-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: MJNSAIGI4WYY3AWKKU5KCZDND4BPKP5R
X-Message-ID-Hash: MJNSAIGI4WYY3AWKKU5KCZDND4BPKP5R
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, ville.syrjala@linux.intel.com, daniel@ffwll.ch, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf/sync-file: fix logic error in new fence merge code
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MJNSAIGI4WYY3AWKKU5KCZDND4BPKP5R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 29, 2022 at 09:00:00AM +0200, Christian K=F6nig wrote:
> When the array is empty because everything is signaled we can't use
> add_fence() to add something because that would filter the signaled
> fence again.
>=20
> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> Fixes: 519f490db07e ("dma-buf/sync-file: fix warning about fence containe=
rs")
> ---
>  drivers/dma-buf/sync_file.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> index b8dea4ec123b..514d213261df 100644
> --- a/drivers/dma-buf/sync_file.c
> +++ b/drivers/dma-buf/sync_file.c
> @@ -262,7 +262,7 @@ static struct sync_file *sync_file_merge(const char *=
name, struct sync_file *a,
>  	}
> =20
>  	if (index =3D=3D 0)
> -		add_fence(fences, &index, dma_fence_get_stub());
> +		fences[index++] =3D dma_fence_get_stub();

Uh idiot me wondered about this and somehow convinced myself that adding a
random fences instead of a singalled stub is ok. I should have checked
more carefully :-/

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> =20
>  	if (num_fences > index) {
>  		struct dma_fence **tmp;
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
