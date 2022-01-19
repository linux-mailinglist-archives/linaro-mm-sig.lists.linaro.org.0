Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BDD4B6431
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:20:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D906B3EE2C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:20:33 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by lists.linaro.org (Postfix) with ESMTPS id 9DE563EE01
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 18:25:09 +0000 (UTC)
Received: by mail-yb1-f175.google.com with SMTP id p5so9980296ybd.13
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 10:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qhZUjSqSQkfhZLoYn5e7bhCr/SYhnGpXe4Qg5Zbv7IY=;
        b=KcjIc7Fy7AyXlztjvbf4TXqfnkrciDNXOMtpFzvtF3QorWdBdCJcZNxXQir+xqCgM/
         vhWvU4puaDNNHZIf8tBZKxSuEwQBcTPRaILKpqqMlp0EO0agvObWm58HneQ/F52afxd+
         6yk9sB6uJI4kgfYa9xXzLl1IhZoi8Xr/g+mGUrRUzF3gyQ9ppLz97Lc6tXjX5m/whFY+
         ECRNg2HIhE2665MiG3OSXjnIgdouodrSJyK4mwNzw4KfTZvN2jBb+EzlnKNLhNJrQzDp
         62ZPButvLcfnCM8PWDujKudROIKqyKSbycC36/wmwUvk0cT2ZnfhnIf8hQfmUytuiq2F
         Dvuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qhZUjSqSQkfhZLoYn5e7bhCr/SYhnGpXe4Qg5Zbv7IY=;
        b=p/NMWGGlS9CD2gCRwlZU9390JOQFIpifJ/F+3WJhYRPne2VYNINyXu/5NsHUQHIDbe
         2qmPKKRlak9lwg/6zY2Gr3978CophGI0PDEE8SmkU7vaCzBdulyoiLLyAifeKg4GKFpL
         OgFTqqQSI7HAQy9b3z/fJgnISoiU8HCmHduhpK9gql0Z03Id5xJ/ckMrkh4F3kZz+1yN
         4e31pG+U5W3DM/vLa4S5gcfJ1n36FNoR+OtbO0NN5TWEtiBfVEhwn3DMivZgC3ab+L3u
         aQ1gFU97V7Ih7Yh+5Dvc3/sW4s/NAxK/TvwOQM605EuFJLdLh2rEqnKRLyOnXiOPGJbI
         2vOg==
X-Gm-Message-State: AOAM530tyxWXh769+rVad5q9d8PwWxIRUikU0IlB7wBu+Dr9vBl2LHA4
	ohDHoXYwoOjbICLI5SG5Mun7e2XzG29d23K6AQ8mzg==
X-Google-Smtp-Source: ABdhPJyn4giiiq8ubwJREn+9rcxttcLhxnSzBFBbGPyp4Qw1J6vVVbQT+Fu9+AYAHNXgggW+6+BF7t8OrokPelbULGw=
X-Received: by 2002:a5b:586:: with SMTP id l6mr28353208ybp.322.1642616709101;
 Wed, 19 Jan 2022 10:25:09 -0800 (PST)
MIME-Version: 1.0
References: <20220115010622.3185921-1-hridya@google.com> <20220115010622.3185921-3-hridya@google.com>
 <aea5b741-c994-4007-156e-d8a3a5b9bbcc@infradead.org>
In-Reply-To: <aea5b741-c994-4007-156e-d8a3a5b9bbcc@infradead.org>
From: Hridya Valsaraju <hridya@google.com>
Date: Wed, 19 Jan 2022 10:24:33 -0800
Message-ID: <CA+wgaPNqXSCxhby8xzQGCZ-GGJQ475Nx==ki63=DR_i25P_PiA@mail.gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
X-MailFrom: hridya@google.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: KBJP3S3EGDUR4M4HYROUFGHJLJD2MVNK
X-Message-ID-Hash: KBJP3S3EGDUR4M4HYROUFGHJLJD2MVNK
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:20:12 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <christian@brauner.io>, Suren Baghdasaryan <surenb@google.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Dave Airlie <airlied@redhat.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Matthew Auld <matthew.auld@intel.com
 >, Matthew Brost <matthew.brost@intel.com>, Li Li <dualli@google.com>, Marco Ballesio <balejs@google.com>, Hang Lu <hangl@codeaurora.org>, Wedson Almeida Filho <wedsonaf@google.com>, Masahiro Yamada <masahiroy@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <nathan@kernel.org>, Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda <ojeda@kernel.org>, Vipin Sharma <vipinsh@google.com>, Chris Down <chris@chrisdown.name>, Daniel Borkmann <daniel@iogearbox.net>, Vlastimil Babka <vbabka@suse.cz>, Arnd Bergmann <arnd@arndb.de>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, Kenny.Ho@amd.com, daniels@collabora.com, kaleshsingh@google.com, tjmercier@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC 2/6] cgroup: gpu: Add a cgroup controller for allocator attribution of GPU memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KBJP3S3EGDUR4M4HYROUFGHJLJD2MVNK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jan 19, 2022 at 7:40 AM Randy Dunlap <rdunlap@infradead.org> wrote:
>
> Hi--
>
> On 1/14/22 17:06, Hridya Valsaraju wrote:
> > diff --git a/init/Kconfig b/init/Kconfig
> > index cd23faa163d1..408910b21387 100644
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -990,6 +990,13 @@ config BLK_CGROUP
> >
> >       See Documentation/admin-guide/cgroup-v1/blkio-controller.rst for more information.
> >
> > +config CGROUP_GPU
> > +       bool "gpu cgroup controller (EXPERIMENTAL)"
> > +       select PAGE_COUNTER
> > +       help
> > +     Provides accounting and limit setting for memory allocations by the GPU
> > +     and GPU-related subsystems.
>
> Please follow coding-style for Kconfig files:
>
> (from Documentation/process/coding-style.rst, section 10):
>
> For all of the Kconfig* configuration files throughout the source tree,
> the indentation is somewhat different.  Lines under a ``config`` definition
> are indented with one tab, while help text is indented an additional two
> spaces.

Thanks Randy, sounds good! Will fix it in the next version!

>
>
> thanks.

>
> --
> ~Randy
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
