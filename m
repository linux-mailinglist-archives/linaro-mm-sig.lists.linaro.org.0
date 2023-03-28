Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 854966CC909
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Mar 2023 19:19:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6C80143CB9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Mar 2023 17:19:17 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by lists.linaro.org (Postfix) with ESMTPS id 4983A3EC33
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Mar 2023 17:19:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=hMYpA7w+;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.221.52) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wr1-f52.google.com with SMTP id d17so12989195wrb.11
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Mar 2023 10:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1680023945; x=1682615945;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8CEFb/6ljqv0Fv1r/OeZskoxzQlU5xekSpKw1g2pQE4=;
        b=hMYpA7w+6Zs+wLLU/q7pMiuwTJ3o+27naY51JYKI9ZJo7gHyIB0eqvMhvk3P+za3L3
         FJMKmHdn/N7NUnODCooPub17CNS+DBz2qnUtkLrHjVCcMOCEJgH0Yb4/E6t2kp3p1+wi
         ury8U5BriCcBD0h0qDtjKP1REeKT/SzUnJ+EE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680023945; x=1682615945;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8CEFb/6ljqv0Fv1r/OeZskoxzQlU5xekSpKw1g2pQE4=;
        b=syzFUb2JzgX88zLwxEOSOFKgfRuzdBdS1AZPCLqTbK+6vuuPWqACRTSVzN78atM4DW
         CxVufDsRvPxpVgWq9qdmeYiKPWA+QyOfQjdqfOYRqcKPPD4mskujrGZvEjlUmoCW8/5j
         +DsN4bsknEoCdWkQkLxUQ19ZBkeLX2ZUGvpXmUE9on1quFKb5zxqXraRK98vRIKu6kWv
         vj1LcrwyMwoPD25/TqfTzJkT7YSmCDJaWNZ2AmRqoMe6ytGmtGeIF9rWoufBIiYEDXi5
         U97J7B7YHc3qhuayWLj+68lsh7jZOV4Nf2eLWuEqJ/sniJls4U/PQW/wqA3fmd+7cs6e
         U4qQ==
X-Gm-Message-State: AAQBX9dil5wE+K8l2acbd/Ya0Ih29aN35KR8Wql/LO/J+7MccqSIdL5k
	QUvAElYSyeCvogl3mEka9yjknXbEk3aE+JNBGz8=
X-Google-Smtp-Source: AKy350avfF+UZiH6DqiVcBZXg7CuA3X4T+9mTl5fIVL5TjkJ/DjswYmLF+gVmMU06n3hnyTd7gCrHw==
X-Received: by 2002:a5d:464b:0:b0:2cf:e2cc:275a with SMTP id j11-20020a5d464b000000b002cfe2cc275amr9065668wrs.5.1680023945211;
        Tue, 28 Mar 2023 10:19:05 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id f11-20020a5d4dcb000000b002cfe3f842c8sm27851410wru.56.2023.03.28.10.19.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 10:19:03 -0700 (PDT)
Date: Tue, 28 Mar 2023 19:19:01 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <ZCMhhToEdWVAEtBh@phenom.ffwll.local>
References: <CAF6AEGvoP9_FERdL6U8S2O-BVt-oAUgAytbE6RvygsoAOwOHvw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF6AEGvoP9_FERdL6U8S2O-BVt-oAUgAytbE6RvygsoAOwOHvw@mail.gmail.com>
X-Operating-System: Linux phenom 6.1.0-6-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4983A3EC33
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.221.52:from,212.51.149.33:received];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,lists.freedesktop.org,linux.intel.com,lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,mail-wr1-f52.google.com:helo,mail-wr1-f52.google.com:rdns,ffwll.ch:dkim,ffwll.ch:url];
	TO_DN_ALL(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[6];
	DMARC_NA(0.00)[ffwll.ch];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.52:from];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: BRJPPA3EA3P6RQHK4WQBRVQI5QN27WYP
X-Message-ID-Hash: BRJPPA3EA3P6RQHK4WQBRVQI5QN27WYP
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, dri-devel <dri-devel@lists.freedesktop.org>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [pull] drm: dma-fence-deadline-core for v6.4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BRJPPA3EA3P6RQHK4WQBRVQI5QN27WYP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, Mar 25, 2023 at 11:24:56AM -0700, Rob Clark wrote:
> Hi Dave and Daniel,
> 
> Here is the series for dma-fence deadline hint, without driver
> specific patches, with the intent that it can be merged into drm-next
> as well as -driver next trees to enable landing driver specific
> support through their corresponding -next trees.
> 
> The following changes since commit eeac8ede17557680855031c6f305ece2378af326:
> 
>   Linux 6.3-rc2 (2023-03-12 16:36:44 -0700)
> 
> are available in the Git repository at:
> 
>   https://gitlab.freedesktop.org/drm/msm.git tags/dma-fence-deadline-core
> 
> for you to fetch changes up to 0bcc8f52a8d9d1f9cd5af7f88c6599a89e64284a:
> 
>   drm/atomic-helper: Set fence deadline for vblank (2023-03-25 10:55:08 -0700)

Ok apparently there's only igts for the sync_file uabi and the only only
userspace for syncobj is the mesa mr that is still under discussion :-/

Yes I know there's a clearly established need for something like this, but
also in drm we don't merge conjectured uabi. Especially with tricky stuff
that's meant to improve best effort performance/tuning problems, where you
really have to benchmark the entire thing and make sure you didn't screw
up some interaction.

To make sure this isn't stuck another full cycle, is there a way to wittle
this just down to the kms atomic flip boosting parts? That way we could at
least start landing the core&driver bits ...
-Daniel

> 
> ----------------------------------------------------------------
> Immutable branch with dma-fence deadline hint support between drm-next
> and driver -next trees.
> 
> ----------------------------------------------------------------
> Rob Clark (11):
>       dma-buf/dma-fence: Add deadline awareness
>       dma-buf/fence-array: Add fence deadline support
>       dma-buf/fence-chain: Add fence deadline support
>       dma-buf/dma-resv: Add a way to set fence deadline
>       dma-buf/sync_file: Surface sync-file uABI
>       dma-buf/sync_file: Add SET_DEADLINE ioctl
>       dma-buf/sw_sync: Add fence deadline support
>       drm/scheduler: Add fence deadline support
>       drm/syncobj: Add deadline support for syncobj waits
>       drm/vblank: Add helper to get next vblank time
>       drm/atomic-helper: Set fence deadline for vblank
> 
>  Documentation/driver-api/dma-buf.rst    | 16 ++++++-
>  drivers/dma-buf/dma-fence-array.c       | 11 +++++
>  drivers/dma-buf/dma-fence-chain.c       | 12 +++++
>  drivers/dma-buf/dma-fence.c             | 60 ++++++++++++++++++++++++
>  drivers/dma-buf/dma-resv.c              | 22 +++++++++
>  drivers/dma-buf/sw_sync.c               | 81 +++++++++++++++++++++++++++++++++
>  drivers/dma-buf/sync_debug.h            |  2 +
>  drivers/dma-buf/sync_file.c             | 19 ++++++++
>  drivers/gpu/drm/drm_atomic_helper.c     | 37 +++++++++++++++
>  drivers/gpu/drm/drm_syncobj.c           | 64 ++++++++++++++++++++------
>  drivers/gpu/drm/drm_vblank.c            | 53 +++++++++++++++++----
>  drivers/gpu/drm/scheduler/sched_fence.c | 46 +++++++++++++++++++
>  drivers/gpu/drm/scheduler/sched_main.c  |  2 +-
>  include/drm/drm_vblank.h                |  1 +
>  include/drm/gpu_scheduler.h             | 17 +++++++
>  include/linux/dma-fence.h               | 22 +++++++++
>  include/linux/dma-resv.h                |  2 +
>  include/uapi/drm/drm.h                  | 17 +++++++
>  include/uapi/linux/sync_file.h          | 59 +++++++++++++++---------
>  19 files changed, 496 insertions(+), 47 deletions(-)

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
