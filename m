Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AE92438C999
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 16:58:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C60F961868
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 14:58:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5190961872; Fri, 21 May 2021 14:58:22 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD61D6182C;
	Fri, 21 May 2021 14:58:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7E19C61191
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 14:58:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7A3C16182C; Fri, 21 May 2021 14:58:17 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by lists.linaro.org (Postfix) with ESMTPS id 72CA761191
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 14:58:15 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id b7so10703997wmh.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 07:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BiK6ojG15Q48bs8KPm2ciWDK5dida/2NExdceiLW9xs=;
 b=GnbCU1Zb/WGwtpwgOW16Ti2RNuEZvLW9Rti4H/yJBwqqskLBxsPyvl8tXzKefb+d/c
 HssifkAyFYUDax/ggJt/htI4c9IjIOou/xzYUeTPFM2IgpsFKnBHCW1wD91MntrMijKj
 EpVj3vBtZt50HZoD1NUavmic2L9kOuzvGJkvM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BiK6ojG15Q48bs8KPm2ciWDK5dida/2NExdceiLW9xs=;
 b=m7Lw1Ds4LT0B5LJ9XBgt81wyZIL/pcoHxwsvFj/atHgxsdBqxV2ta7KUqn6NY322V4
 OuevIWFFekY0ciSkon3EHpIIKigQFbV7C0CUro+d3dpwFqrMzuLr2A5nAW7ly8f+Pvq1
 ZWq8wq1fd5XP7UbXboyh9LgCKKvR9737IQF2EABZH25+Ry7DNBtMqeiVoNIEOla3k6Ww
 l7MY1KHPofgp7YnqJDUJ4eNCngX2KU9Q7s4lP5/v0LR8jbqHqUjVj5lBC+8J0P1Cy1hw
 mwoGn6trtwM+dNf2ospJ9mCEIjtkgz1Ql4LJUp3LvkLmXUAHo3v7ZmMkM5q5st/sWbRw
 oV9g==
X-Gm-Message-State: AOAM533eWeYJ1PWvOYnhmYwH1QRuAjt1ht2n0xIj9IRBtlo4C0Vg3pd3
 pYWuwxe+srUoN/JvUqZMGjgWAg==
X-Google-Smtp-Source: ABdhPJy7m2eER2QhlBmQf/mqn9lHvRk+9Xh0PWE4vRD+EmsuXm/j3SyyStuVbvbNR6ut4dFXmid5dg==
X-Received: by 2002:a1c:66c6:: with SMTP id a189mr9464911wmc.60.1621609094607; 
 Fri, 21 May 2021 07:58:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o8sm2374239wrs.60.2021.05.21.07.58.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 07:58:14 -0700 (PDT)
Date: Fri, 21 May 2021 16:58:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <YKfKhMIRxBybyYrx@phenom.ffwll.local>
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <CAF6AEGvr_CWDGgKFTNGQTiApbg=kyOn=uBrRM_H3DO8UBq-W5g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF6AEGvr_CWDGgKFTNGQTiApbg=kyOn=uBrRM_H3DO8UBq-W5g@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Mesa-dev] [PATCH 01/11] drm/amdgpu: Comply
 with implicit fencing rules
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Stone <daniels@collabora.com>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Wang <kevin1.wang@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Chen Li <chenli@uniontech.com>, ML mesa-dev <mesa-dev@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Dennis Li <Dennis.Li@amd.com>, Deepak R Varma <mh12gx2825@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, May 21, 2021 at 07:58:57AM -0700, Rob Clark wrote:
> On Fri, May 21, 2021 at 2:10 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> >
> > - msm is mildly entertaining. It also supports MSM_SUBMIT_NO_IMPLICIT,
> >   but because it doesn't use the drm/scheduler it handles fences from
> >   the wrong context with a synchronous dma_fence_wait. See
> >   submit_fence_sync() leading to msm_gem_sync_object(). Investing into
> >   a scheduler might be a good idea.
> 
> Yeah, drm/scheduler is (along with a lot of other things) on the TODO
> list.  But this isn't quite as bad as it sounds because userspace uses
> a u_queue thread to call the submit ioctl rather than blocking the
> driver.  (It also offloads some other work from the driver thread,
> like submit merging to reduce # of ioctls.  Coincidentally that
> arrangement was a step towards preparing userspace for some
> hypothetical non-ioctl uapi ;-))

You're also holding a pile of locks, which I expect latest with
multi-engine buffer sharing will be pain. If you push this to the
scheduler then the locks aren't held. Or maybe I've misread the flow, it's
become all a bit a blurr after all these drivers :-)

> OTOH it would be good to move blocking until the system can free
> enough pages to repin bo's out of the ioctl path to better handle some
> memory pressure corner cases without having to be interruptable over a
> lot more of the submit path..  Running chrome+android on devices
> without a lot of memory is fun..

Uh that one needs the userspace thread. Or entirely different semantics of
your ioctl, because you're not allowed to allocate memory once any
dma_fence is visible. So offloading the entire pinning to a submit thread
is no-go.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
