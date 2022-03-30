Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4B050A17D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 16:03:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2026547FC8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Apr 2022 14:03:50 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id 974ED3E829
	for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Mar 2022 20:56:21 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id h1so25923892edj.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Mar 2022 13:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nrCvj7Yq7SSib6FwgrmdzFU7UXWII5P9ju8EtUscCW0=;
        b=boNOk7s9MFWRe9Q5TIHyCBcLZAL3UIEBNmLOOWFhXw6emE+CwKKHdvhC0KffHeh0nF
         M6pQueP4aCRuJFI7dDzsd8w7oMHmH5zQ1LRTPvQqJiDWbX35wE19ft4HqpfvXL9C1Got
         NCX+Q7kxCou/I+IrAEJ9Str9SLE8Vpfu1F+nizveKZzqZBmp0ZbLt4163c8iNRc9oq8L
         +OvcysVAV7F4grrtlsY0RpODotiBIJhRyklfusZBaq0zNt0ADmOlhrzyjpVkba5kg+sN
         XtIoUFtjlMDxb5pCPzyxnwJLsJ9yaQfPKTqYXEV4ifVXSG43LsveuoFab9UFC5oCyEkr
         VAUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nrCvj7Yq7SSib6FwgrmdzFU7UXWII5P9ju8EtUscCW0=;
        b=wE8yP026eCU8zbAO/lelv6412H74of41pWwOrlALRuNtlv/o7zWYUx4td/KM31JiE7
         H12cN4DNMtWhP9inPYEJEOoajXHEzjC9nKzA2C01Um0g1GMfp0rvZXyg9tzDlapJ3E0I
         seBstYtA/kDqTQvnW/bcAKsrd/TaI2ZvcGbYRmxXwxXAs/fKY7Xi4XGZllB68pB7Ta9V
         jJD7l1oqvQk91TZB2yjrpL2YT3DIZck7dihOeL5jonK1muBjNK9svdh9V/CAxKGXZjoD
         D6D72UO9U4ENVqFQ+NZFTzAfe6OI+/n7TQ8JNIYPqteWyHfZwLS4VJd0YwSCLvO6sdFt
         uZIQ==
X-Gm-Message-State: AOAM533dI+6+RfPE350iNo6wcQncxj/vkeXKhZtfYF6z1s4fhvyHymi1
	zmBBvc2XGOSIqxA17LIY6Gm/dJN6ZQna162IAtR5Tw==
X-Google-Smtp-Source: ABdhPJxrjw92bYCs2jMACCLJM4/KOh2wxHOU9997F7UwcQsMWyUFgKpYWFcmr9tg4GWCYtbl/45JU/IvvXHerOIfRxk=
X-Received: by 2002:a05:6402:3452:b0:418:f963:42a3 with SMTP id
 l18-20020a056402345200b00418f96342a3mr13302952edc.12.1648673780493; Wed, 30
 Mar 2022 13:56:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220328035951.1817417-1-tjmercier@google.com>
 <20220328035951.1817417-3-tjmercier@google.com> <YkM6/57mVxoNfSvm@slm.duckdns.org>
In-Reply-To: <YkM6/57mVxoNfSvm@slm.duckdns.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 30 Mar 2022 13:56:09 -0700
Message-ID: <CABdmKX2Gxg35k7QiL2Vn4zWhmQ4UnM-Z8cnOXR0fwBWyJnZ+Ng@mail.gmail.com>
To: Tejun Heo <tj@kernel.org>
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AYMO2DZAO66I4G7QWJUDGHYRPWNRAUVH
X-Message-ID-Hash: AYMO2DZAO66I4G7QWJUDGHYRPWNRAUVH
X-Mailman-Approved-At: Thu, 21 Apr 2022 14:03:45 +0000
CC: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, Kalesh Singh <kaleshsingh@goo
 gle.com>, Kenny.Ho@amd.com, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Shuah Khan <skhan@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v4 2/8] cgroup: gpu: Add a cgroup controller for allocator attribution of GPU memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AYMO2DZAO66I4G7QWJUDGHYRPWNRAUVH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Mar 29, 2022 at 9:59 AM Tejun Heo <tj@kernel.org> wrote:
>
> Hello,

I'm sorry for the delay Tejun, my test device stopped working and my
attention has been occupied with that.

>
> On Mon, Mar 28, 2022 at 03:59:41AM +0000, T.J. Mercier wrote:
> > The API/UAPI can be extended to set per-device/total allocation limits
> > in the future.
>
> This total thing kinda bothers me. Can you please provide some concrete
> examples of how this and per-device limits would be used?

The use case we have for accounting the total (separate from the
individual devices) is to include the value as part of bugreports, for
understanding the system-wide amount of dmabuf allocations. I'm not
aware of an existing need to limit the total. Admittedly this is just
the sum over the devices, but we currently maintain out of tree code
to do this sort of thing today. [1]

The per-device limits would be used to restrict the amount of each
type of allocation charged to an individual application to prevent
hogging or to completely prevent access. This limitation is not
something we have implemented today, but it is on our roadmap.

[1] https://android-review.googlesource.com/c/kernel/common/+/1566704/3/drivers/dma-buf/dma-heap.c

>
> Thanks.
>
> --
> tejun
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
