Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAB23CFB92
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jul 2021 16:07:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E807962175
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jul 2021 14:07:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7DF80619C8; Tue, 20 Jul 2021 14:07:35 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A0696617EF;
	Tue, 20 Jul 2021 14:07:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4C47C617D8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jul 2021 14:07:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4724F617EF; Tue, 20 Jul 2021 14:07:31 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by lists.linaro.org (Postfix) with ESMTPS id 3E298617D8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jul 2021 14:07:29 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id g12so12345734wme.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jul 2021 07:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=NhiaQkSCHPQx+ne2ETdlu6yODY4PxPdrO6TLTCHDEvo=;
 b=AbV7T8HvSTYfx7yF5o/wHZ6AbP9cbbnHR6simTxT5F2QgalLEh3Zv7zaCsj+iLKyB+
 Pj86CpN7A4sNSRwvVjPdfaX8QWev0o9Y3SuETieOM3yAYO1hPR17h/6YHdLKCBfpYqOq
 0xanI2HXzwfifg0mxPZDCYmHVwhR3CiSIXtXU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=NhiaQkSCHPQx+ne2ETdlu6yODY4PxPdrO6TLTCHDEvo=;
 b=NlTOIoN+Jksv41tMFDeLJLm0Y20F3WzXn0VqBvHNnHdWMSihyNUMP7SXpjiNUcL17x
 bU+NlDqzrMTr3qOa8DWii/YYlTXxRTMTIimhZRazmmN/N/uKgtoXOL7rufunRqCI2hh+
 +1ChLu80kqyPUYljV73o8TLTog2BWG+n5F+GUZ7zDJCK3RGgN2qP2X04wlyi2CX4jk5C
 i+G/maU1X8u+CrI3g3sE1amFcz0byDrJV1rLGY5ee8GeMT4oR4UWI4RId7agN4arGz1N
 R37ixcbW3j0xfW2YRTXE0oksBJ5oZ2WiA8ZOCnC+zbbBfPJKp2OxikOnR/OgPtw1PyBh
 BAYg==
X-Gm-Message-State: AOAM530MU2fUcqq6bJAfpdlzCbiuBnkp7m157TxOXri0GG/y8iJwnybr
 SB6VwzD7lw0uDqWrjPFXGoOX0g==
X-Google-Smtp-Source: ABdhPJympAVWx+89WOJs70xZyzGidYkvS7+zE+nPVH5Jqu38ByIK/jJxawzGearAHIs1mQR4Vm9qng==
X-Received: by 2002:a05:600c:20b:: with SMTP id
 11mr39063501wmi.112.1626790048280; 
 Tue, 20 Jul 2021 07:07:28 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s17sm24408502wrv.2.2021.07.20.07.07.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jul 2021 07:07:26 -0700 (PDT)
Date: Tue, 20 Jul 2021 16:07:24 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YPbYnLBin9N4weiC@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <ckoenig.leichtzumerken@gmail.com>, 
 Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org,
 Rob Clark <robdclark@chromium.org>, freedreno@lists.freedesktop.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jonathan Marek <jonathan@marek.ca>, Emma Anholt <emma@anholt.net>,
 Bernard Zhao <bernard@vivo.com>,
 Sharat Masetty <smasetty@codeaurora.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Akhil P Oommen <akhilpo@codeaurora.org>,
 Douglas Anderson <dianders@chromium.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Zhenzhong Duan <zhenzhong.duan@gmail.com>,
 "Kristian H. Kristensen" <hoegsberg@google.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Lee Jones <lee.jones@linaro.org>, Dave Airlie <airlied@redhat.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
References: <20210717202924.987514-1-robdclark@gmail.com>
 <582b8869-f370-3803-60a8-df31088f8088@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <582b8869-f370-3803-60a8-df31088f8088@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 00/11] drm/msm: drm scheduler conversion
 and cleanups
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
Cc: Emma Anholt <emma@anholt.net>, Konrad Dybcio <konrad.dybcio@somainline.org>,
 Akhil P Oommen <akhilpo@codeaurora.org>, dri-devel@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Lee Jones <lee.jones@linaro.org>, Rob Clark <robdclark@chromium.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Jonathan Marek <jonathan@marek.ca>, Bernard Zhao <bernard@vivo.com>,
 Zhenzhong Duan <zhenzhong.duan@gmail.com>, Dave Airlie <airlied@redhat.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Sharat Masetty <smasetty@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Douglas Anderson <dianders@chromium.org>, Rob Clark <robdclark@gmail.com>,
 "Kristian H. Kristensen" <hoegsberg@google.com>,
 freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Jul 19, 2021 at 10:40:57AM +0200, Christian K=F6nig wrote:
> Am 17.07.21 um 22:29 schrieb Rob Clark:
> > From: Rob Clark <robdclark@chromium.org>
> > =

> > Conversion to gpu_scheduler, and bonus removal of
> > drm_gem_object_put_locked()
> =

> Oh yes please!
> =

> If I'm not completely mistaken that was the last puzzle piece missing to
> unify TTMs and GEMs refcount of objects.

Why does drm/msm, a driver not using ttm at all, block ttm refactorings?
We can just check whether the TTM using driver is potentially using locked
final unref and have a special version of
drm_gem_object_put_guaranteed_unlocked or whatever the bikeshed will look
like, which doesn't have the migth_lock.

Anyway, deed is done now :-)
-Daniel

> =

> Only problem is that I only see patch 7 and 9 in my inbox. Where is the
> rest?
> =

> Thanks,
> Christian.
> =

> > =

> > Rob Clark (11):
> >    drm/msm: Docs and misc cleanup
> >    drm/msm: Small submitqueue creation cleanup
> >    drm/msm: drop drm_gem_object_put_locked()
> >    drm: Drop drm_gem_object_put_locked()
> >    drm/msm/submit: Simplify out-fence-fd handling
> >    drm/msm: Consolidate submit bo state
> >    drm/msm: Track "seqno" fences by idr
> >    drm/msm: Return ERR_PTR() from submit_create()
> >    drm/msm: Conversion to drm scheduler
> >    drm/msm: Drop struct_mutex in submit path
> >    drm/msm: Utilize gpu scheduler priorities
> > =

> >   drivers/gpu/drm/drm_gem.c                   |  22 --
> >   drivers/gpu/drm/msm/Kconfig                 |   1 +
> >   drivers/gpu/drm/msm/adreno/a5xx_debugfs.c   |   4 +-
> >   drivers/gpu/drm/msm/adreno/a5xx_gpu.c       |   6 +-
> >   drivers/gpu/drm/msm/adreno/a5xx_power.c     |   2 +-
> >   drivers/gpu/drm/msm/adreno/a5xx_preempt.c   |   7 +-
> >   drivers/gpu/drm/msm/adreno/a6xx_gmu.c       |  12 +-
> >   drivers/gpu/drm/msm/adreno/a6xx_gpu.c       |   2 +-
> >   drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c |   4 +-
> >   drivers/gpu/drm/msm/adreno/adreno_gpu.c     |   6 +-
> >   drivers/gpu/drm/msm/msm_drv.c               |  30 +-
> >   drivers/gpu/drm/msm/msm_fence.c             |  39 ---
> >   drivers/gpu/drm/msm/msm_fence.h             |   2 -
> >   drivers/gpu/drm/msm/msm_gem.c               |  91 +-----
> >   drivers/gpu/drm/msm/msm_gem.h               |  37 ++-
> >   drivers/gpu/drm/msm/msm_gem_submit.c        | 300 ++++++++++++--------
> >   drivers/gpu/drm/msm/msm_gpu.c               |  50 +---
> >   drivers/gpu/drm/msm/msm_gpu.h               |  41 ++-
> >   drivers/gpu/drm/msm/msm_ringbuffer.c        |  70 ++++-
> >   drivers/gpu/drm/msm/msm_ringbuffer.h        |  12 +
> >   drivers/gpu/drm/msm/msm_submitqueue.c       |  49 +++-
> >   include/drm/drm_gem.h                       |   2 -
> >   include/uapi/drm/msm_drm.h                  |  10 +-
> >   23 files changed, 440 insertions(+), 359 deletions(-)
> > =

> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
