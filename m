Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D02A69F82E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 16:38:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B8743EF14
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 15:38:00 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by lists.linaro.org (Postfix) with ESMTPS id 8A9D23EA27
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Feb 2023 15:37:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=YyGaMffC;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.175 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f175.google.com with SMTP id w7so8191406oik.13
        for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Feb 2023 07:37:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WywXApvBffh1ctyHLIw8PG0A91F5vwxm/kGgQV9IacY=;
        b=YyGaMffCjHmeb7oKxQ/AjwDRPC3vooJ1hX7KULsqIMrny4Y/ywlqW1K1z0JtQh3GwC
         97s0FyywTYTm4lkIxOzjKPqpDpYyNJVdABy708UFF+Tq8xpFeevUCxrlwK9gKxtxTYnj
         ml/GZk+0PSjXV+nZcQ+EqeFZf3t2YwrK8ukjJM3QWmnbl0HLn4J6p9bNSGDJBk2i+Kni
         gsM4bVRXRo8uxZ+6jnt9VZrPN60sdmAoiWAMsXCdSi+jGbyOlDwwPoz0hoWG9RWWDq2o
         rPyhTFvUxgJSOd8LYXiIZnxR4ESA7m34m4+L6jWECPNtD4n+2myWFHygI9HBbNCxbkYM
         32gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WywXApvBffh1ctyHLIw8PG0A91F5vwxm/kGgQV9IacY=;
        b=lvXMOI6XhfisRCYT29LMOTa/isgDIW9xiFbFHkv1YtLUHr0Hv5CMtDJoTnSML9N6NK
         PwjSxrYm1vuuzTLOjCu653++nCAOqSf56aD910SudfXGtoLRC/KyDBsQUb1VzOJdsJWe
         Ve9aVCStmGybuT7ZO8BwNw8gldWiaLcc2uKiHe3tXS45WLGHx2WGXPzcMY/7GBRxWDH5
         dD22v0RWknSVUJLUmqaY+krBbflNHa4SJR7AMF5Lrc5f0QYT3VPEDBthzZ8WD0vv8O4I
         isB3nly3NL18OipESnNWOXxLU7QbDvUfy4fPMopWcozUFlaMRONzZ0+u4Y0tU8kvyQ/M
         LigQ==
X-Gm-Message-State: AO0yUKUAD51bQTuaUo47MK/U8bv9NuHhvK0q1dLSiPAK2xXu3la3l/i+
	mjj52BE1WigGIsBuZ6M540iHK3tbeLOmKDU6K2c=
X-Google-Smtp-Source: AK7set+ghT43kUTQU5CnG5qlnodVTbwtuuqgXrxj3sUQu1yp05OKsNhdEtnaHeVnQZ1YffZWQpnePgdKuPg3/NzktWY=
X-Received: by 2002:a05:6808:16ab:b0:37d:81a9:5103 with SMTP id
 bb43-20020a05680816ab00b0037d81a95103mr1413444oib.38.1677080257694; Wed, 22
 Feb 2023 07:37:37 -0800 (PST)
MIME-Version: 1.0
References: <20230218211608.1630586-1-robdclark@gmail.com> <20230218211608.1630586-7-robdclark@gmail.com>
 <20230220105345.70e46fa5@eldfell> <CAF6AEGv9fLQCD65ytRTGp=EkNB1QoZYH5ArphgGQALV9J08Cmw@mail.gmail.com>
 <cdd5f892-49b9-1e22-4dc1-95a8a733c453@amd.com> <CAF6AEGuMn3FywPkEtfJ7oZ16A0Bk2aiaRvj4si4od1d3wzXkPw@mail.gmail.com>
 <20230222114900.1b6baf95@eldfell>
In-Reply-To: <20230222114900.1b6baf95@eldfell>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 22 Feb 2023 07:37:26 -0800
Message-ID: <CAF6AEGs1_75gg+LCBj6=PH8Jn60PXiE+Kx_2636nP-+pajN8Hg@mail.gmail.com>
To: Pekka Paalanen <ppaalanen@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8A9D23EA27
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[amd.com,chromium.org,padovan.org,intel.com,gmail.com,daenzer.net,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.175:from];
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
Message-ID-Hash: ZPOMRUZGC4GCQE6JQU35IA6U6C6XEJUY
X-Message-ID-Hash: ZPOMRUZGC4GCQE6JQU35IA6U6C6XEJUY
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZPOMRUZGC4GCQE6JQU35IA6U6C6XEJUY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Feb 22, 2023 at 1:49 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
>
> On Tue, 21 Feb 2023 09:53:56 -0800
> Rob Clark <robdclark@gmail.com> wrote:
>
> > On Tue, Feb 21, 2023 at 8:48 AM Luben Tuikov <luben.tuikov@amd.com> wrote:
> > >
> > > On 2023-02-20 11:14, Rob Clark wrote:
> > > > On Mon, Feb 20, 2023 at 12:53 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> > > >>
> > > >> On Sat, 18 Feb 2023 13:15:49 -0800
> > > >> Rob Clark <robdclark@gmail.com> wrote:
> > > >>
> > > >>> From: Rob Clark <robdclark@chromium.org>
> > > >>>
> > > >>> Allow userspace to use the EPOLLPRI/POLLPRI flag to indicate an urgent
> > > >>> wait (as opposed to a "housekeeping" wait to know when to cleanup after
> > > >>> some work has completed).  Usermode components of GPU driver stacks
> > > >>> often poll() on fence fd's to know when it is safe to do things like
> > > >>> free or reuse a buffer, but they can also poll() on a fence fd when
> > > >>> waiting to read back results from the GPU.  The EPOLLPRI/POLLPRI flag
> > > >>> lets the kernel differentiate these two cases.
> > > >>>
> > > >>> Signed-off-by: Rob Clark <robdclark@chromium.org>
> > > >>
> > > >> Hi,
> > > >>
> > > >> where would the UAPI documentation of this go?
> > > >> It seems to be missing.
> > > >
> > > > Good question, I am not sure.  The poll() man page has a description,
> > > > but my usage doesn't fit that _exactly_ (but OTOH the description is a
> > > > bit vague).
> > > >
> > > >> If a Wayland compositor is polling application fences to know which
> > > >> client buffer to use in its rendering, should the compositor poll with
> > > >> PRI or not? If a compositor polls with PRI, then all fences from all
> > > >> applications would always be PRI. Would that be harmful somehow or
> > > >> would it be beneficial?
> > > >
> > > > I think a compositor would rather use the deadline ioctl and then poll
> > > > without PRI.  Otherwise you are giving an urgency signal to the fence
> > > > signaller which might not necessarily be needed.
> > > >
> > > > The places where I expect PRI to be useful is more in mesa (things
> > > > like glFinish(), readpix, and other similar sorts of blocking APIs)
> > > Hi,
> > >
> > > Hmm, but then user-space could do the opposite, namely, submit work as usual--never
> > > using the SET_DEADLINE ioctl, and then at the end, poll using (E)POLLPRI. That seems
> > > like a possible usage pattern, unintended--maybe, but possible. Do we want to discourage
> > > this? Wouldn't SET_DEADLINE be enough? I mean, one can call SET_DEADLINE with the current
> > > time, and then wouldn't that be equivalent to (E)POLLPRI?
> >
> > Yeah, (E)POLLPRI isn't strictly needed if we have SET_DEADLINE.  It is
> > slightly more convenient if you want an immediate deadline (single
> > syscall instead of two), but not strictly needed.  OTOH it piggy-backs
> > on existing UABI.
>
> In that case, I would be conservative, and not add the POLLPRI
> semantics. An UAPI addition that is not strictly needed and somewhat
> unclear if it violates any design principles is best not done, until it
> is proven to be beneficial.
>
> Besides, a Wayland compositor does not necessary need to add the fd
> to its main event loop for poll. It could just SET_DEADLINE, and then
> when it renders simply check if the fence passed or not already. Not
> polling means the compositor does not need to wake up at the moment the
> fence signals to just record a flag.

poll(POLLPRI) isn't intended for wayland.. but is a thing I want in
mesa for fence waits.  I _could_ use SET_DEADLINE but it is two
syscalls and correspondingly more code ;-)

> On another matter, if the application uses SET_DEADLINE with one
> timestamp, and the compositor uses SET_DEADLINE on the same thing with
> another timestamp, what should happen?

The expectation is that many deadline hints can be set on a fence.
The fence signaller should track the soonest deadline.

BR,
-R

> Maybe it's a soft-realtime app whose primary goal is not display, and
> it needs the result faster than the window server?
>
> Maybe SET_DEADLINE should set the deadline only to an earlier timestamp
> and never later?
>
>
> Thanks,
> pq
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
