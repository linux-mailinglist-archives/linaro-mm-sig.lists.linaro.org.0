Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1F150BD46
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Apr 2022 18:40:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C28847FCE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Apr 2022 16:40:59 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by lists.linaro.org (Postfix) with ESMTPS id A2C0D47FCC
	for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Apr 2022 16:40:53 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id k23so17498778ejd.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Apr 2022 09:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CoGqA9rNsKJzYU/Obb8AAvf20gVKLeXNXFwl6nZ00rM=;
        b=puSEmprmz1nabSt+ml3920aGPKkUVGoZm9P1z5qEs6WOb5oaEqNdPuB+XnBF/+pdaO
         BVteA6H2VgQlmb0Vq/J/n/1XVZvrvGQjt3mVj7lbZ/55jU+YzyVz0YPnKdWjffXAa8Sz
         MZZheTPjT0XiMePlwtP5H2lntWYI8T7f3sghXXsJd3g7Ti463gREa1RRPDULw3YuULJU
         V2eu6FowolcgcwIpjbYp+q6SYrrPz3TtrfOdT2/aZwIAQaPxpVJyN7CzTxgTka8GC3Wa
         WXEDYA8EWuQGKrc2twCsC4WwQ7w8TiQWt2zr4dmLhdutg4v2XDEey0Wxj5JTGpSZAciX
         TulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CoGqA9rNsKJzYU/Obb8AAvf20gVKLeXNXFwl6nZ00rM=;
        b=5uJ8vwoSdmIE3EIM682V0XwBHchbxkJlkccHVoFEJRZE9DyzouxFyHUOCeWr3UIHL6
         uNEx1ekAX1pOtQ1dnUu5aHbW9KaJsMKHcL/6O+RIz7gkDPgqjOl5IO8PmoH2lKz4J6yw
         xQe2SnYwC5NVDEtVRZEVTZVYlWQ9wP9QkWa93ymdDqcMtoqgLjikTy9szzgMzVE17v+B
         qB0ZVmLmbMaOp51ZbM3Ygdl088ig6wsEfh9VzRmAdhNbbW9pP10qLxcSkjM/GjOWylo8
         4VSeVqo3oAIKBW8j5BOT4F2ABA3t/6tmwcTAj8KHRyHcgVpO70XH2A32tQC5d7JWDh/O
         FY5A==
X-Gm-Message-State: AOAM531K8Uq0AEcG8DBD+V6CtToBTvUqHunYpH2e7b0fYbdqPR/R6cq9
	nos1x69WHBteAA4DVPg7AHvdWdGIokXJH9jgNFB0tw==
X-Google-Smtp-Source: ABdhPJzoLmBU5Xg3Lxmb7MT8CNOOwTwJf10BbLeuL2aNNlpJcThtRrea/0k1l5jXVtMthl5n+035wmUrG4QqfMQQfso=
X-Received: by 2002:a17:907:60c9:b0:6f3:47fb:df26 with SMTP id
 hv9-20020a17090760c900b006f347fbdf26mr3107234ejc.159.1650645652344; Fri, 22
 Apr 2022 09:40:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220420235228.2767816-1-tjmercier@google.com> <YmLBTBd+5RHzr9MK@kroah.com>
In-Reply-To: <YmLBTBd+5RHzr9MK@kroah.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 22 Apr 2022 09:40:41 -0700
Message-ID: <CABdmKX2X6VqK4rw90+OtSOF+aFZELefuzd=YOY3+cqiOqqYALQ@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID-Hash: CBE4RXGVLSMS4TIWFLKPS5E376SIIHDE
X-Message-ID-Hash: CBE4RXGVLSMS4TIWFLKPS5E376SIIHDE
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Tejun Heo <tj@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Jonathan Corbet <corbet@lwn.net>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, John Stultz <jstultz@google.com>, Carlos Llamas 
 <cmllamas@google.com>, Kalesh Singh <kaleshsingh@google.com>, Kenny.Ho@amd.com, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Shuah Khan <skhan@linuxfoundation.org>, kernel-team@android.com, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v5 0/6] Proposal for a GPU cgroup controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CBE4RXGVLSMS4TIWFLKPS5E376SIIHDE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Apr 22, 2022 at 7:53 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Apr 20, 2022 at 11:52:18PM +0000, T.J. Mercier wrote:
> > This patch series revisits the proposal for a GPU cgroup controller to
> > track and limit memory allocations by various device/allocator
> > subsystems. The patch series also contains a simple prototype to
> > illustrate how Android intends to implement DMA-BUF allocator
> > attribution using the GPU cgroup controller. The prototype does not
> > include resource limit enforcements.
> >
> > Changelog:
> > v5:
> > Rebase on top of v5.18-rc3
>
> Why is a "RFC" series on v5?  I treat "RFC" as "not ready to be merged,
> if people are interested, please look at it".  But v5 seems like you
> think this is real.
>
> confused,
>
> greg k-h

I'm sorry for the confusion. I'll change this to PATCH in future revisions.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
