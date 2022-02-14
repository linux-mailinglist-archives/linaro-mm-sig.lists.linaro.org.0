Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BEB4B87EA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 13:43:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 835F6401CA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 12:43:18 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by lists.linaro.org (Postfix) with ESMTPS id A78183EB7E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Feb 2022 20:37:23 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id e5so3162391lfr.9
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Feb 2022 12:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wAGH315FsgjXdEGosIxU9yIWVg26bgKxObDK7qxcQ9o=;
        b=EU778RaLDa/8FhJux3O09PvW3/LCZKPXp2DEFIoy3E0/73tubhMvN6FLWVL/0bcIJW
         kmCnl5Rc6b20E+xTOO/KCGrPDECOpDCo/nXmeIOuENhZ10zOy0IF3Ph387b1C8fJzq5D
         +WjvseaeLKZ8mgXil65+h1q2t7pc8gvHirSGUwM9w31eIQ4CFgJL4tlDfb98dwjLGGaI
         oKjbNkxktCSCXTv4prlhEbo9s9sT7DZTHxj6OpsP3QwYf4mqyLx0SJJnVML5/95sQgyb
         lYEW9dTjF6nZxRSHVkN/BN9o2g2BHt5B8QNM0gL8UjDYHW8ypcP+fBvoFUxYojQxDjSt
         GgWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wAGH315FsgjXdEGosIxU9yIWVg26bgKxObDK7qxcQ9o=;
        b=taq6LXVuJeqGRwqQZibPQ2eCFFQXPk0fe8xwt88SbdSTJ1ZNhTDPnrGFDgZLKHLyuD
         le7jjQVWjNG4sauUtfiu5C0LRaHbrRl9fzm/EZ1seb6HdsJyeze95YGaMYNCUxYXE1Os
         X0qtnSqorJihjjdF9ygPRR5Ce9iDZrcO8YJbmX2NOeXCE3H8tYV3g6M999SAL0C/clLy
         TKBES0U2hjJTjo+S/p0lDOCEKCvjR0vf7iAO4LrsDglG8mfwUwHcYC89tT7iA6NK4O6A
         iy2l/GhxFhcjGrSDVLDUV+jKRoTRMBAUxiwQvA+iCCJGYEVsxFcAm3C0wOvPaqWnajrr
         ZRMA==
X-Gm-Message-State: AOAM531sBeD1deMCBh1YAAjPkKLXToxUmldw5drLI1lmZnbKBi1+l/eD
	NRnla5vWDFUkvMfMn3IGqEkSsi6eQBM8Cyp+HBmKeJ9P
X-Google-Smtp-Source: ABdhPJybrY+AtUQHWjp3j2rvRJhBPEQOOF5VWwSAKp+0WfViYgyz3tPMp/imOig+wlvQ20J5Rfsw3M7JV5CsRYOdaJU=
X-Received: by 2002:a05:6512:4012:: with SMTP id br18mr536955lfb.533.1644871042491;
 Mon, 14 Feb 2022 12:37:22 -0800 (PST)
MIME-Version: 1.0
References: <20220211161831.3493782-1-tjmercier@google.com>
 <20220211161831.3493782-7-tjmercier@google.com> <Ygdfe3XSvN8iFuUc@kroah.com>
 <CAHRSSEwoJ67Sr_=gtSaP91cbpjJjZdOo57cfAhv3r-ye0da7PA@mail.gmail.com>
 <CAJuCfpHf=Ewm0e9kguY3MEGVHU_cyviVXByi0oQtq7kTtOOD=A@mail.gmail.com> <CAHRSSEzsn-EVKXTRfmpbPR9u0wNpdvdZoX64Tm_mB1DQMRSUPQ@mail.gmail.com>
In-Reply-To: <CAHRSSEzsn-EVKXTRfmpbPR9u0wNpdvdZoX64Tm_mB1DQMRSUPQ@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 14 Feb 2022 12:37:11 -0800
Message-ID: <CALAqxLVeLsv9ESCL2EoZQ8-tRgp0V+tmdYbkyakFetf=ewTH+A@mail.gmail.com>
To: Todd Kjos <tkjos@google.com>
X-MailFrom: john.stultz@linaro.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: AU3ZNCGZQG2YQ4RJZBCAURIZBM4CMRTY
X-Message-ID-Hash: AU3ZNCGZQG2YQ4RJZBCAURIZBM4CMRTY
X-Mailman-Approved-At: Wed, 16 Feb 2022 12:42:41 +0000
CC: Suren Baghdasaryan <surenb@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "T.J. Mercier" <tjmercier@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Kalesh Singh <kaleshsingh@google.com>, Kenny.Ho@amd.com, DRI mailing lis
 t <dri-devel@lists.freedesktop.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, linux-media <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, cgroups mailinglist <cgroups@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 6/6] android: binder: Add a buffer flag to relinquish ownership of fds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AU3ZNCGZQG2YQ4RJZBCAURIZBM4CMRTY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Feb 14, 2022 at 12:19 PM Todd Kjos <tkjos@google.com> wrote:
> On Mon, Feb 14, 2022 at 11:29 AM Suren Baghdasaryan <surenb@google.com> wrote:
> > On Mon, Feb 14, 2022 at 10:33 AM Todd Kjos <tkjos@google.com> wrote:
> > >
> > > Since we are creating a new gpu cgroup abstraction, couldn't this
> > > "transfer" be done in userspace by the target instead of in the kernel
> > > driver? Then this patch would reduce to just a flag on the buffer
> > > object.
> >
> > Are you suggesting to have a userspace accessible cgroup interface for
> > transferring buffer charges and the target process to use that
> > interface for requesting the buffer to be charged to its cgroup?
>
> Well, I'm asking why we need to do these cgroup-ish actions in the
> kernel when it seems more natural to do it in userspace.
>

In case its useful, some additional context from some of the Linux
Plumber's discussions last fall:

Daniel Stone outlines some concerns with the cgroup userland handling
for accounting:
  https://youtu.be/3OqllZONTiQ?t=3430

And the binder ownership transfer bit was suggested here by Daniel Vetter:
  https://youtu.be/3OqllZONTiQ?t=3730

thanks
-john
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
