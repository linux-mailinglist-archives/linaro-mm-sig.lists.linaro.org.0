Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 640EE38C994
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 16:55:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9271061876
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 14:55:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8400C618F4; Fri, 21 May 2021 14:55:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3122D614C6;
	Fri, 21 May 2021 14:55:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6CD8261191
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 14:55:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 617F2614C6; Fri, 21 May 2021 14:55:17 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by lists.linaro.org (Postfix) with ESMTPS id 56BA061191
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 14:55:15 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id
 u5-20020a7bc0450000b02901480e40338bso6923997wmc.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 07:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RYm2q8UlxbFEyevcAFjmNarmhsddkGFIu0T8r1FdCck=;
 b=SymXLzgp4IQCswr8nsXU0X0/7HB/CMRTojNo+8E/X3EzCFEgqKvnvI4j0vxSMpDMoH
 0ykFKfqAWM8KhxpFKLAoDeKUugvn+8Q/i1myjddSpyLEi+81vid4JrQvF9QfT2H3lAMT
 XQaNj9Y2jcOkvNfywqUMuQY1rxsIYpbEGMnkmKbWw98VHMwxWJvUk/wfvhve3AZVAX0r
 chqT7z9GyNWR1lMw59ptfC2KKojDBEnL4f3wYWppSXwrVqwYvl/RckSwLoQbHFoQTvpK
 as5yPdvPZYCBuBojQqK2IzMS09xmglmVXSJYuw5NMuyn5JUcRpeozxRlN1uu5k518Gak
 JKtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RYm2q8UlxbFEyevcAFjmNarmhsddkGFIu0T8r1FdCck=;
 b=cAUfyHiX8wSVQJBJxVGaLStvMrfWEu/K29MMmpx8GlnZ3cD3VwBeuBQuO+AzbS9r7D
 rQNbKZZyudhUhLx2dCTUFeFP1PrQ0b7kX9btIj2Pc/85tPfbjJevr8I48qR7Roi+NsNQ
 b4gIv9yDPsCudJ1lkHdqvYkVgyvp0FuHVtYIJM0ZtgAqs2mCteVmEgYrBQBKEyj9mOWF
 6E1Te6iSVSXhMwIHSwitGGqA5xewS/WNj9HjI+spZX1mr2yJFIEUOqL61+TeASzuwu1x
 vHP3K9051y8mxm/9ksHwgnkFm1o0xR9B9qeYflF89eC1mlwGL0w7uf77bHVDo6Db5QZM
 qKCw==
X-Gm-Message-State: AOAM5333rOO2uhTSesEBgxQnhr2kfV8rGXxliQGU4Yjv01tcfCkRz56m
 BbuXIwzhFU1+X9C8Q9MyMK3h5cBt+wWWCfQFSUU=
X-Google-Smtp-Source: ABdhPJytIJvOZWC7oQH8/K1lNQPn/h96jaDr9y5XKzz81AIZ6s8SfY9QtqLtNWTqGIG3qOGTyk/E/jCqV6kODPPAwfk=
X-Received: by 2002:a7b:ce95:: with SMTP id q21mr9838413wmj.49.1621608914380; 
 Fri, 21 May 2021 07:55:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 21 May 2021 07:58:57 -0700
Message-ID: <CAF6AEGvr_CWDGgKFTNGQTiApbg=kyOn=uBrRM_H3DO8UBq-W5g@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
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
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Wang <kevin1.wang@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Chen Li <chenli@uniontech.com>, ML mesa-dev <mesa-dev@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Dennis Li <Dennis.Li@amd.com>, Deepak R Varma <mh12gx2825@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, May 21, 2021 at 2:10 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> - msm is mildly entertaining. It also supports MSM_SUBMIT_NO_IMPLICIT,
>   but because it doesn't use the drm/scheduler it handles fences from
>   the wrong context with a synchronous dma_fence_wait. See
>   submit_fence_sync() leading to msm_gem_sync_object(). Investing into
>   a scheduler might be a good idea.

Yeah, drm/scheduler is (along with a lot of other things) on the TODO
list.  But this isn't quite as bad as it sounds because userspace uses
a u_queue thread to call the submit ioctl rather than blocking the
driver.  (It also offloads some other work from the driver thread,
like submit merging to reduce # of ioctls.  Coincidentally that
arrangement was a step towards preparing userspace for some
hypothetical non-ioctl uapi ;-))

OTOH it would be good to move blocking until the system can free
enough pages to repin bo's out of the ioctl path to better handle some
memory pressure corner cases without having to be interruptable over a
lot more of the submit path..  Running chrome+android on devices
without a lot of memory is fun..

BR,
-R
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
