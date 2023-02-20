Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 354BF69D12E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 17:15:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 124373F520
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 16:15:18 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	by lists.linaro.org (Postfix) with ESMTPS id 807E83EBC1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 16:14:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=ZxnDUIK9;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.171 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f171.google.com with SMTP id bb6so1611606oib.11
        for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 08:14:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yucdNwlCfsGGEjZdnJPvfOZKmj3CAADyiPAf5hjswZg=;
        b=ZxnDUIK9eHPfiknVqJN5rt64dYRWzqsyM6ai87lOd3rGkYut+gJ/n+6Q60l5pl9X0m
         aA2xVnQMpHNtR7PQ8ZuDMhsvhBxEIA6RVe5PFIYbQHMt5hbHT4I1ZGY3ojxcWR/DON9r
         GtImPbcTfYDxbU1M08ylmtdGi/pU3DvNMyn9R6NvYbuui4FinXluI/67qPQjjefFcY4y
         btiSdrQHL2kv3JuRmJtxS7dpCBcfjo2n+2xcY02Nsbm6CRH6XFbnVzpgWu9oQybHP09j
         SAXeRZCUoim+iykMYQIdC3P3AY5/YPuVOE1HcjfjBHkoZWXNDqneQskNWo5Z0xJsKYRa
         TNMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yucdNwlCfsGGEjZdnJPvfOZKmj3CAADyiPAf5hjswZg=;
        b=q7khyqUp/ObEmBlu+kAiJfSIV3/r48S4Gyd3s9+Z3hSME2sVzVaBLTnNF/E1/1CqML
         QHQWsZCZLEsR9r/xNYQRXSNDhuj4K/1FYxkTB41eiTH2oAOyJsb7F3zIvUa3xMFRJkGH
         SmjSQx+MVeweFLzaW1l2HAIWfP4JIaLFdILRzjaxkI8K/wwPKTM8C7U49rxyyuiNn21v
         Bdw7XnDe99hRq+9xnYT4g3aRrARJMfMJchYutGgUVq1byeDQbgaNjAVCIj0nTvjGM4DV
         YYBaH1CaZFB/perfZOiwHXJpqgcNgGatzmmFBOwtCd0+dIKKD9364wgECVDCLklotksB
         EhvQ==
X-Gm-Message-State: AO0yUKUSKc/YOOFu7HyM5Yxk8wbBEoVQJ/kVm8E8f3tkjpQqRMJPUX9P
	4eJYheZMbHJtmr7DhGcPy0gIGzOCc8Liv/ew17I=
X-Google-Smtp-Source: AK7set+n1QvPydxi+hQlZFC/9h20UVfLJWhf+ldIyg34MhCT3B1Lw/a7cCOBNd9D7mP6aZ3TpheYxEk8RFxISNtjFbE=
X-Received: by 2002:a05:6808:ec7:b0:364:c0a5:1fcf with SMTP id
 q7-20020a0568080ec700b00364c0a51fcfmr1104755oiv.58.1676909697815; Mon, 20 Feb
 2023 08:14:57 -0800 (PST)
MIME-Version: 1.0
References: <20230218211608.1630586-1-robdclark@gmail.com> <20230218211608.1630586-7-robdclark@gmail.com>
 <20230220105345.70e46fa5@eldfell>
In-Reply-To: <20230220105345.70e46fa5@eldfell>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 20 Feb 2023 08:14:47 -0800
Message-ID: <CAF6AEGv9fLQCD65ytRTGp=EkNB1QoZYH5ArphgGQALV9J08Cmw@mail.gmail.com>
To: Pekka Paalanen <ppaalanen@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 807E83EBC1
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.171:from];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: BOT75U2QLFVPWBVTB6KCQVN5LAJ6OCHN
X-Message-ID-Hash: BOT75U2QLFVPWBVTB6KCQVN5LAJ6OCHN
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BOT75U2QLFVPWBVTB6KCQVN5LAJ6OCHN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Feb 20, 2023 at 12:53 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
>
> On Sat, 18 Feb 2023 13:15:49 -0800
> Rob Clark <robdclark@gmail.com> wrote:
>
> > From: Rob Clark <robdclark@chromium.org>
> >
> > Allow userspace to use the EPOLLPRI/POLLPRI flag to indicate an urgent
> > wait (as opposed to a "housekeeping" wait to know when to cleanup after
> > some work has completed).  Usermode components of GPU driver stacks
> > often poll() on fence fd's to know when it is safe to do things like
> > free or reuse a buffer, but they can also poll() on a fence fd when
> > waiting to read back results from the GPU.  The EPOLLPRI/POLLPRI flag
> > lets the kernel differentiate these two cases.
> >
> > Signed-off-by: Rob Clark <robdclark@chromium.org>
>
> Hi,
>
> where would the UAPI documentation of this go?
> It seems to be missing.

Good question, I am not sure.  The poll() man page has a description,
but my usage doesn't fit that _exactly_ (but OTOH the description is a
bit vague).

> If a Wayland compositor is polling application fences to know which
> client buffer to use in its rendering, should the compositor poll with
> PRI or not? If a compositor polls with PRI, then all fences from all
> applications would always be PRI. Would that be harmful somehow or
> would it be beneficial?

I think a compositor would rather use the deadline ioctl and then poll
without PRI.  Otherwise you are giving an urgency signal to the fence
signaller which might not necessarily be needed.

The places where I expect PRI to be useful is more in mesa (things
like glFinish(), readpix, and other similar sorts of blocking APIs)

BR,
-R

>
>
> Thanks,
> pq
>
> > ---
> >  drivers/dma-buf/sync_file.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> > index fb6ca1032885..c30b2085ee0a 100644
> > --- a/drivers/dma-buf/sync_file.c
> > +++ b/drivers/dma-buf/sync_file.c
> > @@ -192,6 +192,14 @@ static __poll_t sync_file_poll(struct file *file, poll_table *wait)
> >  {
> >       struct sync_file *sync_file = file->private_data;
> >
> > +     /*
> > +      * The POLLPRI/EPOLLPRI flag can be used to signal that
> > +      * userspace wants the fence to signal ASAP, express this
> > +      * as an immediate deadline.
> > +      */
> > +     if (poll_requested_events(wait) & EPOLLPRI)
> > +             dma_fence_set_deadline(sync_file->fence, ktime_get());
> > +
> >       poll_wait(file, &sync_file->wq, wait);
> >
> >       if (list_empty(&sync_file->cb.node) &&
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
