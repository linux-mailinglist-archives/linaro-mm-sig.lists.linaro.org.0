Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 063A56CDB59
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Mar 2023 16:00:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 042653F653
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Mar 2023 14:00:23 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id BE7783EC5F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Mar 2023 14:00:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=Y6wpceqL;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.128.44) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-3edc2294fb4so8053155e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Mar 2023 07:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1680098409;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Zd6sUodV0GA/3NENsHm4OOkO0mkso8KCS3GNceu747I=;
        b=Y6wpceqLkNsDNwtWS5z68og7E+ZAFLYZFGyfMvGE7IBFEIGnjIjPkTkDoxRkGxxZju
         VJMEVTfbK4LYrtcu9H0fvZ+Yw29mrZzi0tFAGaKkuvtt85c9K1RQToij2I5jdo6eT2ZG
         yonGcRW7r5laet9BWR5qr1wAmUmmSOfr888lE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680098409;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zd6sUodV0GA/3NENsHm4OOkO0mkso8KCS3GNceu747I=;
        b=oioXGp+nectFU2+OOITkQUmrcoMCckgCrC1Ad1OAFb/hQuBXMNxbGCmWyrtUdG9CUY
         KB5plsc8eNrIiGIPu+1WZMse0Hn2R35vq49V6QfXq6olDzufYwTNduo8Mi7DVeku2UG0
         5o/SOPel8ryxakPADrLzVtez9iCbFdRlzyfTES4csOFzMwqYAYjXDYkzBYta+GezxJU7
         GMxUL55NVoKDzWl0JLhv/bTeK0ZPT6QcMtiXMJEq/8pG3gIBQNhGzhJ9qGtfBfftaYtD
         7jpoRvElP5RbFz3ozrF8g65rqCA6n5qpBfkaVeM7qSm6wNNsdbaIzmjYfbvfQhOGEZjN
         ACNQ==
X-Gm-Message-State: AAQBX9cbO3srlW8Cj6+nUj+oS8Dcevgw3zAeE4KfLNUmdBhVL6DZ4Deh
	QPsZKFOowAGldDf4koMGSORi2g==
X-Google-Smtp-Source: AKy350ZZycnuuBsIqoaINeRm6by9vR1tDhnN+yZuWLthGeghQiHBzwEpxJshNql6r4CxCdshgvzL4w==
X-Received: by 2002:a05:600c:3ca8:b0:3ef:7bc5:4e14 with SMTP id bg40-20020a05600c3ca800b003ef7bc54e14mr3426569wmb.4.1680098409631;
        Wed, 29 Mar 2023 07:00:09 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id j10-20020a5d464a000000b002cea8f07813sm30507609wrs.81.2023.03.29.07.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 07:00:09 -0700 (PDT)
Date: Wed, 29 Mar 2023 16:00:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <ZCREZz6gjQ56uImo@phenom.ffwll.local>
References: <CAF6AEGt5nDQpa6J86V1oFKPA30YcJzPhAVpmF7N1K1g2N3c=Zg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF6AEGt5nDQpa6J86V1oFKPA30YcJzPhAVpmF7N1K1g2N3c=Zg@mail.gmail.com>
X-Operating-System: Linux phenom 6.1.0-6-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BE7783EC5F
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com];
	R_SPF_NA(0.00)[no SPF record];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,lists.freedesktop.org,linux.intel.com,lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,ffwll.ch:dkim,ffwll.ch:url];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TO_DN_ALL(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.44:from];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: NPZLIVQEYQKWATB3XOBNWN34EQWQJF7H
X-Message-ID-Hash: NPZLIVQEYQKWATB3XOBNWN34EQWQJF7H
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, dri-devel <dri-devel@lists.freedesktop.org>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [pull] drm: dma-fence-deadline for v6.4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NPZLIVQEYQKWATB3XOBNWN34EQWQJF7H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Mar 28, 2023 at 03:34:02PM -0700, Rob Clark wrote:
> Hi Dave and Daniel,
> 
> Here is the series for dma-fence deadline hint, without driver
> specific patches, or UAPI, with the intent that it can be merged into
> drm-next as well as -driver next trees to enable landing driver
> specific support through their corresponding -next trees.
> 
> The following changes since commit eeac8ede17557680855031c6f305ece2378af326:
> 
>   Linux 6.3-rc2 (2023-03-12 16:36:44 -0700)
> 
> are available in the Git repository at:
> 
>   https://gitlab.freedesktop.org/drm/msm.git tags/dma-fence-deadline

Thanks for respinnning to unblock this, merged to drm-next. I'll also do
an -rc4 backmerge, so please hold for that if you backmerge yourself.

> 
> for you to fetch changes up to d39e48ca80c0960b039cb38633957f0040f63e1a:
> 
>   drm/atomic-helper: Set fence deadline for vblank (2023-03-28 14:52:59 -0700)
> 
> ----------------------------------------------------------------
> This series adds a deadline hint to fences, so realtime deadlines
> such as vblank can be communicated to the fence signaller for power/
> frequency management decisions.
> 
> This is partially inspired by a trick i915 does, but implemented
> via dma-fence for a couple of reasons:
> 
> 1) To continue to be able to use the atomic helpers
> 2) To support cases where display and gpu are different drivers
> 
> See https://patchwork.freedesktop.org/series/93035/
> 
> This does not yet add any UAPI, although this will be needed in
> a number of cases:
> 
> 1) Workloads "ping-ponging" between CPU and GPU, where we don't
>    want the GPU freq governor to interpret time stalled waiting
>    for GPU as "idle" time
> 2) Cases where the compositor is waiting for fences to be signaled
>    before issuing the atomic ioctl, for example to maintain 60fps
>    cursor updates even when the GPU is not able to maintain that
>    framerate.
> 
> ----------------------------------------------------------------
> Rob Clark (8):
>       dma-buf/dma-fence: Add deadline awareness
>       dma-buf/fence-array: Add fence deadline support
>       dma-buf/fence-chain: Add fence deadline support
>       dma-buf/dma-resv: Add a way to set fence deadline
>       dma-buf/sync_file: Surface sync-file uABI
>       drm/scheduler: Add fence deadline support
>       drm/vblank: Add helper to get next vblank time
>       drm/atomic-helper: Set fence deadline for vblank
> 
>  Documentation/driver-api/dma-buf.rst    | 16 +++++++--
>  drivers/dma-buf/dma-fence-array.c       | 11 ++++++
>  drivers/dma-buf/dma-fence-chain.c       | 12 +++++++
>  drivers/dma-buf/dma-fence.c             | 59 +++++++++++++++++++++++++++++++++
>  drivers/dma-buf/dma-resv.c              | 22 ++++++++++++
>  drivers/gpu/drm/drm_atomic_helper.c     | 37 +++++++++++++++++++++
>  drivers/gpu/drm/drm_vblank.c            | 53 ++++++++++++++++++++++++-----
>  drivers/gpu/drm/scheduler/sched_fence.c | 46 +++++++++++++++++++++++++
>  drivers/gpu/drm/scheduler/sched_main.c  |  2 +-
>  include/drm/drm_vblank.h                |  1 +
>  include/drm/gpu_scheduler.h             | 17 ++++++++++
>  include/linux/dma-fence.h               | 22 ++++++++++++
>  include/linux/dma-resv.h                |  2 ++
>  include/uapi/linux/sync_file.h          | 37 +++++++++------------
>  14 files changed, 303 insertions(+), 34 deletions(-)

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
