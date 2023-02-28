Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 366FB6A5C3A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 16:45:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2DFB83EA35
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 15:45:27 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	by lists.linaro.org (Postfix) with ESMTPS id 705D03EA35
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 15:45:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=cmBSfjVh;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.210.44 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ot1-f44.google.com with SMTP id cc12-20020a05683061cc00b00693daa9016fso5830617otb.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 07:45:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=47Io8bjBgTfpx9irLzQIk7kc2k6GPp2PZ97i5J/VsnU=;
        b=cmBSfjVhL11B7Tk2kzeIA9iNdYDewp+Lj2BTbbj6UDcbnNNnGRKEG9iCWQZ+Zn3g9m
         +0Zx+GlqRizxRKPwVVA4/JaFtaKfoHx9z08Qt2aL2jYElbluHU/qNXZSmld3edT7vPer
         mqK5c2oWjXhedR1BJv6EXjMqwSeGb6qxBliUPUwERul1AYJ+81hovh17DHIbCSD5cK5w
         9gwm8dkKVD7UCQUidLDzlT+m/No89gMZlEDYYGUWzhhwiazV+8nn9uut0WCqrLE6UV/g
         tafJgCdHGRGVm9NWQqu21rdJz8b0ivr1k0uKj14YYV/O5qMTtismWvnVbWfVfSc1EyjJ
         t6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=47Io8bjBgTfpx9irLzQIk7kc2k6GPp2PZ97i5J/VsnU=;
        b=71Ne3hEh/s3jFctXtmnWoIxwHi9ZaVYZ8CB/XRBmJ/RDMLux585kyUZhhXu+ZkVLYe
         +TP0zhDBwUvrdbhZ9IKqI9howLHWc2+au1Ka7jNrsjrcQh3e2fcTw3qjpWsJsjf8Pcnj
         hZdAUUvVdlhs7kICcVkh1NI+kXu6UTNsdPIoyCEFvkeNLQ6vl3S4h3SGh9u603Mcf8jY
         tCIFGoG+XJ2IXewLLEi9tnetM8yO2XZcL1HbPow+F6ypFnERf+xARcwCTGJ/tLqyrZHu
         mkFZDkb6xRkhSgcWdVI7kC2TSQFl4QlPJC4DKsliebA3ZWHFuLcYfRSTGM460wScDumI
         /TiQ==
X-Gm-Message-State: AO0yUKVXU0whfIgguv9XL2mXT6+66lgilYdNDfo7TQr9Bfl16kgv+E0y
	u7qNJsHfMyHaJaQdnuhzAnbHKi0C0PatT/dAdo0=
X-Google-Smtp-Source: AK7set84ZiKu/x5bhuHzdqKQUv7sjdjnKY8F7kTvWRv1lYoh5z8jZHyiBzPqCGMtJV4jXTtlMVk45nk6MjMvbYL6vxQ=
X-Received: by 2002:a9d:128e:0:b0:688:cf52:6e18 with SMTP id
 g14-20020a9d128e000000b00688cf526e18mr1074144otg.4.1677599106749; Tue, 28 Feb
 2023 07:45:06 -0800 (PST)
MIME-Version: 1.0
References: <20230227193535.2822389-1-robdclark@gmail.com> <Y/320d96QmbLe1J8@debian.me>
In-Reply-To: <Y/320d96QmbLe1J8@debian.me>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 28 Feb 2023 07:44:55 -0800
Message-ID: <CAF6AEGuqHDDQS22qcp8sk+5bj16XFiBarCLvpX=qNc2r2euMUw@mail.gmail.com>
To: Bagas Sanjaya <bagasdotme@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 705D03EA35
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.44:from];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,quicinc.com,linaro.org,padovan.org,lists.linaro.org,vger.kernel.org,huawei.com,poorly.run];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: XAKCQTZ7QPCQO6CQDQW63PGGAQI3S45O
X-Message-ID-Hash: XAKCQTZ7QPCQO6CQDQW63PGGAQI3S45O
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Douglas Anderson <dianders@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, intel-gfx@lists.freedesktop.org, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, Liu Shixin <liushixin2@huawei.com>, Sean Paul
  <sean@poorly.run>, Stephen Boyd <swboyd@chromium.org>, Vinod Polimera <quic_vpolimer@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 00/15] dma-fence: Deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XAKCQTZ7QPCQO6CQDQW63PGGAQI3S45O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Feb 28, 2023 at 4:43 AM Bagas Sanjaya <bagasdotme@gmail.com> wrote:
>
> On Mon, Feb 27, 2023 at 11:35:06AM -0800, Rob Clark wrote:
> > From: Rob Clark <robdclark@chromium.org>
> >
> > This series adds a deadline hint to fences, so realtime deadlines
> > such as vblank can be communicated to the fence signaller for power/
> > frequency management decisions.
> >
> > This is partially inspired by a trick i915 does, but implemented
> > via dma-fence for a couple of reasons:
> >
> > 1) To continue to be able to use the atomic helpers
> > 2) To support cases where display and gpu are different drivers
> >
> > This iteration adds a dma-fence ioctl to set a deadline (both to
> > support igt-tests, and compositors which delay decisions about which
> > client buffer to display), and a sw_sync ioctl to read back the
> > deadline.  IGT tests utilizing these can be found at:
> >
> >   https://gitlab.freedesktop.org/robclark/igt-gpu-tools/-/commits/fence-deadline
> >
> >
> > v1: https://patchwork.freedesktop.org/series/93035/
> > v2: Move filtering out of later deadlines to fence implementation
> >     to avoid increasing the size of dma_fence
> > v3: Add support in fence-array and fence-chain; Add some uabi to
> >     support igt tests and userspace compositors.
> > v4: Rebase, address various comments, and add syncobj deadline
> >     support, and sync_file EPOLLPRI based on experience with perf/
> >     freq issues with clvk compute workloads on i915 (anv)
> > v5: Clarify that this is a hint as opposed to a more hard deadline
> >     guarantee, switch to using u64 ns values in UABI (still absolute
> >     CLOCK_MONOTONIC values), drop syncobj related cap and driver
> >     feature flag in favor of allowing count_handles==0 for probing
> >     kernel support.
> > v6: Re-work vblank helper to calculate time of _start_ of vblank,
> >     and work correctly if the last vblank event was more than a
> >     frame ago.  Add (mostly unrelated) drm/msm patch which also
> >     uses the vblank helper.  Use dma_fence_chain_contained().  More
> >     verbose syncobj UABI comments.  Drop DMA_FENCE_FLAG_HAS_DEADLINE_BIT.
> > v7: Fix kbuild complaints about vblank helper.  Add more docs.
> >
>
> I want to apply this series for testing, but it can't be applied cleanly
> on current drm-misc tree. On what tree (and commit) is this series based
> on?

You can find my branch here:

https://gitlab.freedesktop.org/robclark/msm/-/commits/dma-fence/deadline

BR,
-R
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
