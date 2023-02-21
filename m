Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F315669E672
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Feb 2023 18:54:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF2BB3F499
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Feb 2023 17:54:25 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	by lists.linaro.org (Postfix) with ESMTPS id 6595D3EC75
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Feb 2023 17:54:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=REEtn8PX;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.160.53 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-1720433ba75so6609090fac.5
        for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Feb 2023 09:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VMKhHmrd8lVSmliqVHExAgWorD/pXxkRRPzGvtF73wg=;
        b=REEtn8PXtknW4y+6JwJtS9B4rLCRy5IdlJX8uMlYtB7FFFedOYzYTq/GgUwVy/bb7q
         tM+1bwi/KgXmj/U4wkmFwrh6jpMQdVPSRCv1rQHKfu36P3M1/eOa38cAFmGo2HS0gDxt
         TKgY4e2BnldR8TUtEEiyg55EEfDITdss4jIDSPFiJcBrU2AC/GKCR8JIMYvXjk2wBjk/
         7hxcQLhU2Xnv3iOBkrK+cgRDzcopZztIJRh1q+Oly9r6yLK1vJjxaEqjnLA4EjvayWxf
         zE23qNdSulwFR02SScgR9bvPvO/GTTzCEH8IrC6tm7VZgw1o0F/Rd3oae0/EgGp6KWwT
         HfsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VMKhHmrd8lVSmliqVHExAgWorD/pXxkRRPzGvtF73wg=;
        b=0tJSlU+PCwC+iUzx9MNo+ivGswdHSVHUL1yvsf88ggIoBxWnZIdUMwOKP8ZJSZ002j
         l5SEmRkYcovmf9JxTuOcfp7IDWtzGOc3ayKurAZfLuHp/Wk+8QWBVsZmg8EeZtP1fLKR
         V8E6EJj76IAZBiKq2m5OpuB2lZ7UrCdO7dKlPG3A32Ol/UqXCLfjcmH3o0KuYt9iamzE
         nWj/kgZCZYVfqmfDWTqqvyz7fTZnDnurDHBGxlj2XxsT+iBfaQu0xvTp+KWews+F3EPG
         I3eRnGNG6oyvVpfmeUebFKPgiN3AUmtvfCv5dfglehIMNDIeoylJUOc47EfqSENdcW+/
         q5mA==
X-Gm-Message-State: AO0yUKWvPcGE4yjjP7wqvEVZ15qlvOG1cIFi5eSy8BDgplQMmFQKnFpq
	WPRZOhAKdQgHzFuPpmeZbKe8CVxH5ericEIsvs4=
X-Google-Smtp-Source: AK7set+Z+oPJUCqI/EoSMrVRlg+YMtuXgiK4i/ekz/43uKn112T5GqKqwizp2tik7ddFnI7qZP5oOWulwO0SuN2evZ4=
X-Received: by 2002:a05:6870:32d4:b0:16e:5e5a:49da with SMTP id
 r20-20020a05687032d400b0016e5e5a49damr1496718oac.58.1677002046702; Tue, 21
 Feb 2023 09:54:06 -0800 (PST)
MIME-Version: 1.0
References: <20230218211608.1630586-1-robdclark@gmail.com> <20230218211608.1630586-7-robdclark@gmail.com>
 <20230220105345.70e46fa5@eldfell> <CAF6AEGv9fLQCD65ytRTGp=EkNB1QoZYH5ArphgGQALV9J08Cmw@mail.gmail.com>
 <cdd5f892-49b9-1e22-4dc1-95a8a733c453@amd.com>
In-Reply-To: <cdd5f892-49b9-1e22-4dc1-95a8a733c453@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 21 Feb 2023 09:53:56 -0800
Message-ID: <CAF6AEGuMn3FywPkEtfJ7oZ16A0Bk2aiaRvj4si4od1d3wzXkPw@mail.gmail.com>
To: Luben Tuikov <luben.tuikov@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6595D3EC75
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.160.53:from];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.53:from];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-0.866];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,chromium.org,padovan.org,intel.com,daenzer.net,vger.kernel.org,lists.freedesktop.org,amd.com,lists.linaro.org,linaro.org];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: W4WS7QVGI2LLNVDAGJ33B4SYME6CDYUA
X-Message-ID-Hash: W4WS7QVGI2LLNVDAGJ33B4SYME6CDYUA
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Pekka Paalanen <ppaalanen@gmail.com>, Rob Clark <robdclark@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W4WS7QVGI2LLNVDAGJ33B4SYME6CDYUA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Feb 21, 2023 at 8:48 AM Luben Tuikov <luben.tuikov@amd.com> wrote:
>
> On 2023-02-20 11:14, Rob Clark wrote:
> > On Mon, Feb 20, 2023 at 12:53 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> >>
> >> On Sat, 18 Feb 2023 13:15:49 -0800
> >> Rob Clark <robdclark@gmail.com> wrote:
> >>
> >>> From: Rob Clark <robdclark@chromium.org>
> >>>
> >>> Allow userspace to use the EPOLLPRI/POLLPRI flag to indicate an urgent
> >>> wait (as opposed to a "housekeeping" wait to know when to cleanup after
> >>> some work has completed).  Usermode components of GPU driver stacks
> >>> often poll() on fence fd's to know when it is safe to do things like
> >>> free or reuse a buffer, but they can also poll() on a fence fd when
> >>> waiting to read back results from the GPU.  The EPOLLPRI/POLLPRI flag
> >>> lets the kernel differentiate these two cases.
> >>>
> >>> Signed-off-by: Rob Clark <robdclark@chromium.org>
> >>
> >> Hi,
> >>
> >> where would the UAPI documentation of this go?
> >> It seems to be missing.
> >
> > Good question, I am not sure.  The poll() man page has a description,
> > but my usage doesn't fit that _exactly_ (but OTOH the description is a
> > bit vague).
> >
> >> If a Wayland compositor is polling application fences to know which
> >> client buffer to use in its rendering, should the compositor poll with
> >> PRI or not? If a compositor polls with PRI, then all fences from all
> >> applications would always be PRI. Would that be harmful somehow or
> >> would it be beneficial?
> >
> > I think a compositor would rather use the deadline ioctl and then poll
> > without PRI.  Otherwise you are giving an urgency signal to the fence
> > signaller which might not necessarily be needed.
> >
> > The places where I expect PRI to be useful is more in mesa (things
> > like glFinish(), readpix, and other similar sorts of blocking APIs)
> Hi,
>
> Hmm, but then user-space could do the opposite, namely, submit work as usual--never
> using the SET_DEADLINE ioctl, and then at the end, poll using (E)POLLPRI. That seems
> like a possible usage pattern, unintended--maybe, but possible. Do we want to discourage
> this? Wouldn't SET_DEADLINE be enough? I mean, one can call SET_DEADLINE with the current
> time, and then wouldn't that be equivalent to (E)POLLPRI?

Yeah, (E)POLLPRI isn't strictly needed if we have SET_DEADLINE.  It is
slightly more convenient if you want an immediate deadline (single
syscall instead of two), but not strictly needed.  OTOH it piggy-backs
on existing UABI.

BR,
-R
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
