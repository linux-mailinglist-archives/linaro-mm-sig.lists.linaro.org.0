Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 314253D740B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jul 2021 13:09:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6049B634E8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jul 2021 11:09:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5738F634F3; Tue, 27 Jul 2021 11:09:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F58A60B4F;
	Tue, 27 Jul 2021 11:09:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 939DF60B02
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jul 2021 11:09:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 912C160B4F; Tue, 27 Jul 2021 11:09:40 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43])
 by lists.linaro.org (Postfix) with ESMTPS id 854ED60B02
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jul 2021 11:09:38 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id
 68-20020a9d0f4a0000b02904b1f1d7c5f4so12065009ott.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jul 2021 04:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=toEhJU+DBnuXNuC/VzAQiuiOBPJGpanC4ZtXqo4rgcM=;
 b=T3ZjYLBEJHvCyFh3G3Q7kzzhyZl851+30p3BHtc/Psx9QocC5034u/BjICq3LIHL3c
 mqybI1qjeyayJqn1tSVomGiXQFzU+B6Fdz8n3wzIZ8Jajl3q62qJwt3fL7zZ3qT2a1Bb
 ZCXdBxFJ2XIQYAKyCax7sW7u7jmdQTRD5cSM0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=toEhJU+DBnuXNuC/VzAQiuiOBPJGpanC4ZtXqo4rgcM=;
 b=EUO6mF4xCH7tANSY1B9ch1p3OC0kb9PTYB6nf6l8Dgzh3SfEzB6UXWXnKKOAtCuBCH
 V9f9a7rR2zh2QBKrB3aofBDKJLDmOutSnwZX60HmTFU+2RG2HLJy92QzPfFkllBtRSwN
 NkBN+bnAAG427TVbPUxG3ekpvgYpZvGKkH89TsavepkU45YP9Pmbpv/tW02lmt9K8RXY
 mcFbGKrBTbPgoRY3mb5GeEgNfi3FL9niqPs6aHvZuIj+M6WHieW81JGgUIN0XstrSzTY
 mLhDgmARNw6r1rw7Tc7tuhGpf8MNOY7iJxdsc7xzm1fdAQY9Y1waA0avIMy6T/kpRwQT
 FTCg==
X-Gm-Message-State: AOAM533uhLA2Xv6By/5ve91h+EHs9myxX4UM+2eifnlsVAkGVGZAIWZU
 0ghOir3acIoPWfuqaxFV9F07x0rdVdsFaploAqqFIQ==
X-Google-Smtp-Source: ABdhPJyzU0vZYJAw5c3L/snDmwAuOs0LRxiLHhz+I4RrtqhZBCHAzwTeLL7a9d605aObjgTmHAQnpPT65r1SZTDXlcQ=
X-Received: by 2002:a05:6830:2802:: with SMTP id
 w2mr14709176otu.303.1627384177818; 
 Tue, 27 Jul 2021 04:09:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
 <20210712175352.802687-4-daniel.vetter@ffwll.ch>
In-Reply-To: <20210712175352.802687-4-daniel.vetter@ffwll.ch>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 27 Jul 2021 13:09:26 +0200
Message-ID: <CAKMK7uG8bMuDP=7-z9nZ38WgMdbeUk96eNx3buTCiaKatYOJxw@mail.gmail.com>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Melissa Wen <melissa.srw@gmail.com>, 
 Boris Brezillon <boris.brezillon@collabora.com>,
 Lucas Stach <l.stach@pengutronix.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v4 03/18] drm/sched: Add dependency
 tracking
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
Cc: Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Jack Zhang <Jack.Zhang1@amd.com>, David Airlie <airlied@linux.ie>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Steven Price <steven.price@arm.com>,
 Lee Jones <lee.jones@linaro.org>, Nirmoy Das <nirmoy.aiemd@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Adding a few more people to this bikeshed.

On Mon, Jul 12, 2021 at 10:02 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:

> @@ -349,6 +367,13 @@ int drm_sched_job_init(struct drm_sched_job *job,
>                        struct drm_sched_entity *entity,
>                        void *owner);
>  void drm_sched_job_arm(struct drm_sched_job *job);
> +int drm_sched_job_await_fence(struct drm_sched_job *job,
> +                             struct dma_fence *fence);
> +int drm_sched_job_await_implicit(struct drm_sched_job *job,
> +                                struct drm_gem_object *obj,
> +                                bool write);
> +
> +

I'm still waiting on the paint delivery for these two functions so I
can finish this shed.

Thanks, Daniel

>  void drm_sched_entity_modify_sched(struct drm_sched_entity *entity,
>                                     struct drm_gpu_scheduler **sched_list,
>                                     unsigned int num_sched_list);
> --
> 2.32.0
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
