Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC236A2025
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 17:59:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B2FD44243
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 16:59:46 +0000 (UTC)
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
	by lists.linaro.org (Postfix) with ESMTPS id AE8463EC6B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 16:59:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=Lcofwkl6;
	spf=pass (lists.linaro.org: domain of robdclark@chromium.org designates 209.85.166.180 as permitted sender) smtp.mailfrom=robdclark@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-il1-f180.google.com with SMTP id r4so86825ila.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 08:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cgb2Pi/t2+xLmkEYHOFf3TZk2XgRIBjhzG/Zzuc83GQ=;
        b=Lcofwkl6IObDV6pgHqsiHmpthopPqDn70FpulBH/lBCxg80REwmK4gyivYBg+BGWE3
         4KUkXVqScsKkjpS6oys7y7lvqIzCsP0bNHrC5alM3eM1A2ee2m6gOKy2TN7gedKhZPBi
         DMIhEp7lTLj9jJUTSe6rcdvQ7zSc6nZglsPSo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cgb2Pi/t2+xLmkEYHOFf3TZk2XgRIBjhzG/Zzuc83GQ=;
        b=mLf7wSlDeCOqlVj84mgb+PqVq4EFqhwyHqoW+CCwX/kfv19D7ZJ0wwxCt1Qi79ogdd
         xvhy6ItIIggWeoT3b58ghwhaLFK2I/P/OhMhIHDDb0d90gZgRJpFsYi4mWBw+i7YN6EF
         gWz9RjbTjquPDEgvliB93SZQ59ytT8A7KrssrXg2RBCDOf/UASuZCSsw548mul6JDwSt
         CmiDTNWgK/+5Q9PCyuxg7iE0y8XPaIia0PTnfYQ0mnqCEwS0LZhs/Yv0U3aycRhFKatv
         gTokl3NEhCo0Uslu0f4lUnwaTYjpmtCJxcrqHR0Mx6QczxUugkHV5TUSYEGgCbZPwrqN
         zIvw==
X-Gm-Message-State: AO0yUKUjq2Ehdz647MqlEyVl1QYVl2ZGuo92ykppdLKkeLZxkahhrTsE
	d8HB74wXdr2OI98eyVVeZMk/pTu2DcT7HamgYl6LIw==
X-Google-Smtp-Source: AK7set89tPfCiQx1TeTpVE7VEuTTfs2VElYgre0wHA0ER1lxWwV1AVI1CfcLHKiR5eO8MhdmPewkq9q07Mnx5aY4d7U=
X-Received: by 2002:a05:6e02:1a2e:b0:313:af46:81ba with SMTP id
 g14-20020a056e021a2e00b00313af4681bamr5118495ile.3.1677257967132; Fri, 24 Feb
 2023 08:59:27 -0800 (PST)
MIME-Version: 1.0
References: <20230218211608.1630586-1-robdclark@gmail.com> <20230218211608.1630586-7-robdclark@gmail.com>
 <20230220105345.70e46fa5@eldfell> <CAF6AEGv9fLQCD65ytRTGp=EkNB1QoZYH5ArphgGQALV9J08Cmw@mail.gmail.com>
 <cdd5f892-49b9-1e22-4dc1-95a8a733c453@amd.com> <CAF6AEGuMn3FywPkEtfJ7oZ16A0Bk2aiaRvj4si4od1d3wzXkPw@mail.gmail.com>
 <20230222114900.1b6baf95@eldfell> <CAF6AEGs1_75gg+LCBj6=PH8Jn60PXiE+Kx_2636nP-+pajN8Hg@mail.gmail.com>
 <20230223113814.3010cedc@eldfell> <CAF6AEGuE89kuKTjjzwW1xMppcVw-M4-hcrtifed-mvsCA=cshQ@mail.gmail.com>
 <20230224112630.313d7b76@eldfell> <a47e2686-1e35-39a3-0f0c-6c3b9522f8ff@linux.intel.com>
 <20230224122403.6a088da1@eldfell>
In-Reply-To: <20230224122403.6a088da1@eldfell>
From: Rob Clark <robdclark@chromium.org>
Date: Fri, 24 Feb 2023 08:59:16 -0800
Message-ID: <CAJs_Fx76a9m02p4XwZpjjpyQ35d621669fL9XPB4T-nwThr7tA@mail.gmail.com>
To: Pekka Paalanen <ppaalanen@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AE8463EC6B
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,gmail.com,intel.com,padovan.org,daenzer.net,vger.kernel.org,lists.freedesktop.org,linaro.org,lists.linaro.org,amd.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.180:from];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: D6NYP6UW56CGSJWCCBDORIB7ALRTTQMW
X-Message-ID-Hash: D6NYP6UW56CGSJWCCBDORIB7ALRTTQMW
X-MailFrom: robdclark@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Rob Clark <robdclark@gmail.com>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, Rodrigo Vivi <rodrigo.vivi@intel.com>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Luben Tuikov <luben.tuikov@amd.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D6NYP6UW56CGSJWCCBDORIB7ALRTTQMW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Feb 24, 2023 at 2:24 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
>
> On Fri, 24 Feb 2023 09:41:46 +0000
> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>
> > On 24/02/2023 09:26, Pekka Paalanen wrote:
> > > On Thu, 23 Feb 2023 10:51:48 -0800
> > > Rob Clark <robdclark@gmail.com> wrote:
> > >
> > >> On Thu, Feb 23, 2023 at 1:38 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> > >>>
> > >>> On Wed, 22 Feb 2023 07:37:26 -0800
> > >>> Rob Clark <robdclark@gmail.com> wrote:
> > >>>
> > >>>> On Wed, Feb 22, 2023 at 1:49 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> > >
> > > ...
> > >
> > >>>>> On another matter, if the application uses SET_DEADLINE with one
> > >>>>> timestamp, and the compositor uses SET_DEADLINE on the same thing with
> > >>>>> another timestamp, what should happen?
> > >>>>
> > >>>> The expectation is that many deadline hints can be set on a fence.
> > >>>> The fence signaller should track the soonest deadline.
> > >>>
> > >>> You need to document that as UAPI, since it is observable to userspace.
> > >>> It would be bad if drivers or subsystems would differ in behaviour.
> > >>>
> > >>
> > >> It is in the end a hint.  It is about giving the driver more
> > >> information so that it can make better choices.  But the driver is
> > >> even free to ignore it.  So maybe "expectation" is too strong of a
> > >> word.  Rather, any other behavior doesn't really make sense.  But it
> > >> could end up being dictated by how the hw and/or fw works.
> > >
> > > It will stop being a hint once it has been implemented and used in the
> > > wild long enough. The kernel userspace regression rules make sure of
> > > that.
> >
> > Yeah, tricky and maybe a gray area in this case. I think we eluded
> > elsewhere in the thread that renaming the thing might be an option.
> >
> > So maybe instead of deadline, which is a very strong word, use something
> > along the lines of "present time hint", or "signalled time hint"? Maybe
> > reads clumsy. Just throwing some ideas for a start.
>
> You can try, but I fear that if it ever changes behaviour and
> someone notices that, it's labelled as a kernel regression. I don't
> think documentation has ever been the authoritative definition of UABI
> in Linux, it just guides drivers and userspace towards a common
> understanding and common usage patterns.
>
> So even if the UABI contract is not documented (ugh), you need to be
> prepared to set the UABI contract through kernel implementation.
>
> If you do not document the UABI contract, then different drivers are
> likely to implement it differently, leading to differing behaviour.
> Also userspace will invent wild ways to abuse the UABI if there is no
> documentation guiding it on proper use. If userspace or end users
> observe different behaviour, that's bad even if it's not a regression.
>
> I don't like the situation either, but it is what it is. UABI stability
> trumps everything regardless of whether it was documented or not.
>
> I bet userspace is going to use this as a "make it faster, make it
> hotter" button. I would not be surprised if someone wrote a LD_PRELOAD
> library that stamps any and all fences with an expired deadline to
> just squeeze out a little more through some weird side-effect.

Ok, maybe we can rename the SET_DEADLINE ioctl to SPACEBAR_HEATER ;-)

BR,
-R

> Well, that's hopefully overboard in scaring, but in the end, I would
> like to see UABI documented so I can have a feeling of what it is for
> and how it was intended to be used. That's all.
>
>
> Thanks,
> pq
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
