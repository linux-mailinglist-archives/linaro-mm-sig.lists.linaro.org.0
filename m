Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FDD4B87EB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 13:43:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A501C3EE8F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 12:43:23 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by lists.linaro.org (Postfix) with ESMTPS id 9E0673EC9D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Feb 2022 21:15:27 +0000 (UTC)
Received: by mail-yb1-f179.google.com with SMTP id j2so50238465ybu.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Feb 2022 13:15:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=koOwKzeH7/Gb78FEuOvCok9kPJwObv2S7DVJdDdOgNA=;
        b=Pb5dbCHSbOY7B3ORjcQJ4tOqYQjm9jFUDuW4A8Uw3ddfl/KioQspJ7vPApWeypuuyQ
         AbdlnFPPC52dg3yNb0beEJdpRbmFdEDeTuxJF39E+eg6ecEa/6ji0TduWQr0JYt33wqk
         F00WTtwEQGRE8fkzuYE19P4BzBBNjs+GOqaHl31cAznCEZMsRqDikQkTwDJclPuKCvxV
         kmxmrEI4FfjSSPAK5el+JyX7Hj1ZqafjYSIjdKPhGDhpAMZDyhpvvBv0wjDJRI2gXsaV
         ekGOhI3vLetimUVdXqmZTzeAxc7HUExrhEQoRc2Vs4Ips6kQQ/pBnxkN2I0ZLJPdeW+t
         EH2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=koOwKzeH7/Gb78FEuOvCok9kPJwObv2S7DVJdDdOgNA=;
        b=Q2dW4AgYdlr/Pll/5k+kI7FGCANEJVEN7P87Jwm61YOWaxVfg9hqf/jdR8LdyQ6o4V
         NqlvfjwfHMMv6umoSmIwm5NROEeNPJO8Qj7tDzIlir+JEnb6uol0eY51qSotkpQs8npT
         Ug+HYej9tCtXfx4N2ZYT3vTexondvJoroqUlGorLoyimb5kUKKLsuBiJihsuq0lbIOnA
         EvJ5OYjkj5fV6s3XARXmO5VXCaA68V6mkcBtRvIBobEM6T9spoL+DPeYqu5+6+Yr+iSe
         T8IVKirYEjEvWiv04UevUfLST4R9NzpimgwPYf9yCyOOcQjjs/Wgoh66g+dyxZahe7AP
         A7dg==
X-Gm-Message-State: AOAM533yK4pk7IO9p4zs/5Y+dOfIzQJeFerLVoeZ1OdSRYjNrZn/xh+0
	Mu8Q/RIami8wFqcblxYVh13WFMJH/fFvUOb77lhznw==
X-Google-Smtp-Source: ABdhPJxYpCGSJ97h8+PYs4ql8r4Wi52kEXKqBk5pvfZj6f9b/g73lOi4fZfqGVy147NfKJkJXNKE6/edp4TkHfyblNY=
X-Received: by 2002:a25:ad18:: with SMTP id y24mr1012325ybi.420.1644873327127;
 Mon, 14 Feb 2022 13:15:27 -0800 (PST)
MIME-Version: 1.0
References: <20220211161831.3493782-1-tjmercier@google.com>
 <20220211161831.3493782-7-tjmercier@google.com> <Ygdfe3XSvN8iFuUc@kroah.com>
 <CAHRSSEwoJ67Sr_=gtSaP91cbpjJjZdOo57cfAhv3r-ye0da7PA@mail.gmail.com>
 <CAJuCfpHf=Ewm0e9kguY3MEGVHU_cyviVXByi0oQtq7kTtOOD=A@mail.gmail.com>
 <CAHRSSEzsn-EVKXTRfmpbPR9u0wNpdvdZoX64Tm_mB1DQMRSUPQ@mail.gmail.com> <CALAqxLVeLsv9ESCL2EoZQ8-tRgp0V+tmdYbkyakFetf=ewTH+A@mail.gmail.com>
In-Reply-To: <CALAqxLVeLsv9ESCL2EoZQ8-tRgp0V+tmdYbkyakFetf=ewTH+A@mail.gmail.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Mon, 14 Feb 2022 13:14:51 -0800
Message-ID: <CA+wgaPM8AmQ4g6pDSwRABtc7hq11XMw+kH-rRkB8xNGJhM3OKA@mail.gmail.com>
To: John Stultz <john.stultz@linaro.org>
X-MailFrom: hridya@google.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: NM3YI6RV5ETOWOITCS4Z5SK3L2FRGWPN
X-Message-ID-Hash: NM3YI6RV5ETOWOITCS4Z5SK3L2FRGWPN
X-Mailman-Approved-At: Wed, 16 Feb 2022 12:42:43 +0000
CC: Todd Kjos <tkjos@google.com>, Suren Baghdasaryan <surenb@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "T.J. Mercier" <tjmercier@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Kalesh Singh <kaleshsingh@google.com>, Kenny.Ho@amd.com, DRI mailing list <dri-d
 evel@lists.freedesktop.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, linux-media <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, cgroups mailinglist <cgroups@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 6/6] android: binder: Add a buffer flag to relinquish ownership of fds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NM3YI6RV5ETOWOITCS4Z5SK3L2FRGWPN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Feb 14, 2022 at 12:37 PM John Stultz <john.stultz@linaro.org> wrote:
>
> On Mon, Feb 14, 2022 at 12:19 PM Todd Kjos <tkjos@google.com> wrote:
> > On Mon, Feb 14, 2022 at 11:29 AM Suren Baghdasaryan <surenb@google.com> wrote:
> > > On Mon, Feb 14, 2022 at 10:33 AM Todd Kjos <tkjos@google.com> wrote:
> > > >
> > > > Since we are creating a new gpu cgroup abstraction, couldn't this
> > > > "transfer" be done in userspace by the target instead of in the kernel
> > > > driver? Then this patch would reduce to just a flag on the buffer
> > > > object.
> > >
> > > Are you suggesting to have a userspace accessible cgroup interface for
> > > transferring buffer charges and the target process to use that
> > > interface for requesting the buffer to be charged to its cgroup?
> >
> > Well, I'm asking why we need to do these cgroup-ish actions in the
> > kernel when it seems more natural to do it in userspace.

This was our plan originally i.e. to create a cgroup interface that
userspace could use for explicit charge transfer. However, in our
initial discussions with all interested parties and cgroup maintainers
we reached a conclusion that an explicit charge transfer UAPI for the
cgroup controller did not fit in with the current cgroup
charge/uncharge mechanisms. Like John mentioned, the charge transfer
during binder IPC was suggested by Daniel during LPC.

Regards,
Hridya

> >
>
> In case its useful, some additional context from some of the Linux
> Plumber's discussions last fall:
>
> Daniel Stone outlines some concerns with the cgroup userland handling
> for accounting:
>   https://youtu.be/3OqllZONTiQ?t=3430
>
> And the binder ownership transfer bit was suggested here by Daniel Vetter:
>   https://youtu.be/3OqllZONTiQ?t=3730
>
> thanks
> -john
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
