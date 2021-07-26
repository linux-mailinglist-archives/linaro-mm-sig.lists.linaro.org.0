Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5656F3D6A63
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jul 2021 01:52:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1A52634DD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Jul 2021 23:52:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1E246634DE; Mon, 26 Jul 2021 23:52:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DEC86339A;
	Mon, 26 Jul 2021 23:52:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 352BD60570
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 23:51:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 29DCD6339A; Mon, 26 Jul 2021 23:51:58 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 21CF960570
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 23:51:56 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id l18so5337880wrv.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 16:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tUIoigUs94bMHsltrSbpLlzLTuAd1wjaaiV0ZjEm+Bw=;
 b=j58O9/6iZBkX0FFFlPgMkDK17SR61mX0DAyRiuYxpvuZFTHbcm/MTFGcdmaNwJibhb
 uTBhqmJYjJWGv3MyOqx4xGwogGAmoI+UZVtAMpFcK+OEYendJwBziq0Rns+3kkBW+O8a
 3fJfm/C9J5jTTrEmg7CJEPy11Aum7gesrmioD5HoVl+4eD4eTMyYZc47HKhJ3Uw+eosu
 BmEcneHHIdMBgGcBFYCW+ZgCUWOHNPGJYJo0tXoR4hy4Rw1pYz5ckBE+OcWVH3jbNzEg
 RWvyOS8MC+EsozfKlizD4TvLFlcl49EUSDdLZf2FM4jYQbglxMxoTmu1AA7WHGTuix5c
 5QLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tUIoigUs94bMHsltrSbpLlzLTuAd1wjaaiV0ZjEm+Bw=;
 b=fScybLVsxNLspiCIOrp9fYmZgPqIyAd9Hi6NJc7wMrXJhtB6YlgwtTBAwlNTSJL1jy
 E1saV1Q4V6lqO+YCX6H8n37+n8LBiajSiDl6GSy0euvsLvbbJmW4P/DoJy5CJkPznh+H
 lqDBXOvT/ytGeXj4X8meCH121nESPu2+R64xO9L2xZLLIB1IcqitIdbxjBpjZSHO3Lbs
 y866Az5pJ+Z30x7XLyqZAhPr1qhPBpMxUe1ptXlcAddvO1EHfas8c0aSOCxlu9tetyxe
 Ld+YALcHoJAa6rLyAs8MIXPV94lAs0sJ+jdTjQSqg3C7oRRBrrBlpD2DH7jJzu+vJV4p
 4zWg==
X-Gm-Message-State: AOAM5307O0IrK44EiO0LafuVNEKs6GVpzgeGeZPQfNK9G9KGnACUzovA
 1MgEjgs1YrT1ErpxuZCVssdbd5+2tvP0txK9kJ4=
X-Google-Smtp-Source: ABdhPJwXAzbNGuHdLOISfs3BtoWByAYqTqS3hd9v8tdZ2marIa37ZhMgm41g7p2rWzPxRDI2ZgF9Ns/85zSqMuv0bRc=
X-Received: by 2002:a5d:4348:: with SMTP id u8mr18590399wrr.28.1627343515010; 
 Mon, 26 Jul 2021 16:51:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210726233854.2453899-1-robdclark@gmail.com>
In-Reply-To: <20210726233854.2453899-1-robdclark@gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 26 Jul 2021 16:51:43 -0700
Message-ID: <CAF6AEGtm4NdQfqo6wGFBM-EBzW9E8twpDuS7GTXf2iHiHZYL1g@mail.gmail.com>
To: dri-devel <dri-devel@lists.freedesktop.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 0/4] dma-fence: Deadline awareness
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
Cc: Matthew Brost <matthew.brost@intel.com>, Rob Clark <robdclark@chromium.org>,
 Jack Zhang <Jack.Zhang1@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>,
 Gustavo Padovan <gustavo@padovan.org>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Jul 26, 2021 at 4:34 PM Rob Clark <robdclark@gmail.com> wrote:
>
> From: Rob Clark <robdclark@chromium.org>
>
> Based on discussion from a previous series[1] to add a "boost" mechanism
> when, for example, vblank deadlines are missed.  Instead of a boost
> callback, this approach adds a way to set a deadline on the fence, by
> which the waiter would like to see the fence signalled.
>
> I've not yet had a chance to re-work the drm/msm part of this, but
> wanted to send this out as an RFC in case I don't have a chance to
> finish the drm/msm part this week.

Fwiw, what I'm thinking for the drm/msm part is a timer set to expire
a bit (couple ms?) before the deadline, which boosts if the timer
expires before the fence is signaled.

Assuming this is roughly in line with what other drivers would do,
possibly there is some room to build this timer into dma-fence itself?

BR,
-R

>
> Original description:
>
> In some cases, like double-buffered rendering, missing vblanks can
> trick the GPU into running at a lower frequence, when really we
> want to be running at a higher frequency to not miss the vblanks
> in the first place.
>
> This is partially inspired by a trick i915 does, but implemented
> via dma-fence for a couple of reasons:
>
> 1) To continue to be able to use the atomic helpers
> 2) To support cases where display and gpu are different drivers
>
> [1] https://patchwork.freedesktop.org/series/90331/
>
> Rob Clark (4):
>   dma-fence: Add deadline awareness
>   drm/vblank: Add helper to get next vblank time
>   drm/atomic-helper: Set fence deadline for vblank
>   drm/scheduler: Add fence deadline support
>
>  drivers/dma-buf/dma-fence.c             | 39 +++++++++++++++++++++++++
>  drivers/gpu/drm/drm_atomic_helper.c     | 36 +++++++++++++++++++++++
>  drivers/gpu/drm/drm_vblank.c            | 31 ++++++++++++++++++++
>  drivers/gpu/drm/scheduler/sched_fence.c | 10 +++++++
>  drivers/gpu/drm/scheduler/sched_main.c  |  3 ++
>  include/drm/drm_vblank.h                |  1 +
>  include/linux/dma-fence.h               | 17 +++++++++++
>  7 files changed, 137 insertions(+)
>
> --
> 2.31.1
>
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
