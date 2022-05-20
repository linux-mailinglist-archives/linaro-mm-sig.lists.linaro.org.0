Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F6652E370
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 May 2022 06:01:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA093410AD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 May 2022 04:01:56 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by lists.linaro.org (Postfix) with ESMTPS id 29EA9404EC
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 May 2022 04:01:52 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id w4so9740017wrg.12
        for <linaro-mm-sig@lists.linaro.org>; Thu, 19 May 2022 21:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lX20NL3YNPaKjNecI4oDdq3acoU2kOL0ZbPMHMv9mB0=;
        b=QUhqUNwjiYBBL+Gfy7USDRKlfhCB5po25WZwgPlSiSkUXf8omWvdSvXZzxRV41w1tT
         d5C/MVpxWJNzqMqMn4BsGlEqIb6rOVIxP+yf5DJ3CcD/CMFR7a+o3Nxfo0tiHS41+QJx
         1G0voWhXE97nNh8TDu9IYnnRSfvefCogP4VsB5M0y74VMQ5qGopMDi1VQqUGm6PnvD78
         YluERYOhs/tCKgwebfwVE2yQreNBgLUaB4ZY4z6xzZTQ7LXJk9AbCoT54oExEPxtuCAM
         DF3gvipca18rnRT53tde7E+gUZik7VP0hR/Z6h4m5Gl7iRVkpIrQcRhWqQ2jBr0jnUJX
         zgOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lX20NL3YNPaKjNecI4oDdq3acoU2kOL0ZbPMHMv9mB0=;
        b=U83+2ZnHOViWp+R4jB6ZcUh99/LxxLtMWez0Gcsj7olAICAT1CR2GqR7gx8KqO0WhQ
         mmaEAT4xbZgkIX71672zUFO7X01I5wJQW50Va6znPv1dV9XRnsTVxh7eT69/iLsKcg3S
         lP868T6w1frWiaN+JZpOK8mEE2Jlw63SV+4apQDkeBvHFOx4OnpSZiQ3KIrCOxTuZpHJ
         f2Ugr57qVXLacTtNGbFPq4VfNmzIMPyfO8UuqBfNUkHLaZre537WPU0fFqKlFtWNDMU8
         Dsya+wQUeozuO+rovBjZPkZ3LYxMaAx3dcBxPSvgyFSOmtgRgoPiU+iAmJeeitjwkWAy
         S9vw==
X-Gm-Message-State: AOAM533hQyc48g1L45e+utJ9EYwpLJeQNLtTOaRe0XiggpPiBdhX70ic
	q9rO45YQsOqLM3B7TSFcjmZDuEwAdgjaLN/U6HAetg==
X-Google-Smtp-Source: ABdhPJzdvVJxxqGLhr1D82HU8Nge0YZ/NcyQRTLRKVqI4Jh/02FF2nx30JgW9qrXm/uIf/Cxvut3pYr3QoTiG9nq0a4=
X-Received: by 2002:a5d:5846:0:b0:20c:7407:5fa1 with SMTP id
 i6-20020a5d5846000000b0020c74075fa1mr6448325wrf.116.1653019310813; Thu, 19
 May 2022 21:01:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220519214021.3572840-1-kaleshsingh@google.com> <202205191848.DEE05F6@keescook>
In-Reply-To: <202205191848.DEE05F6@keescook>
From: Kalesh Singh <kaleshsingh@google.com>
Date: Thu, 19 May 2022 21:01:39 -0700
Message-ID: <CAC_TJve0iyPU0uKoKOi_qcwgxPkgNKgirBcMJ=oYBqhRC3a_+Q@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
Message-ID-Hash: KLTI4VXOURSVJRQZZJYGQ4PDWDBRWHZI
X-Message-ID-Hash: KLTI4VXOURSVJRQZZJYGQ4PDWDBRWHZI
X-MailFrom: kaleshsingh@google.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ioannis Ilkos <ilkos@google.com>, "T.J. Mercier" <tjmercier@google.com>, Suren Baghdasaryan <surenb@google.com>, "Cc: Android Kernel" <kernel-team@android.com>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Andrew Morton <akpm@linux-foundation.org>, Christoph Anton Mitterer <mail@christoph.anton.mitterer.name>, Mike Rapoport <rppt@kernel.org>, Colin Cross <ccross@google.com>, Randy Dunlap <rdunlap@infradead.org>, LKML <linux-kernel@vger.kernel.org>, linux-fsdevel <linux-fsdevel@vger.kernel.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, DRI mailing list <dri-devel@lists.freedesktop.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH] procfs: Add file path and size to /proc/<pid>/fdinfo
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KLTI4VXOURSVJRQZZJYGQ4PDWDBRWHZI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, May 19, 2022 at 6:50 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, May 19, 2022 at 02:40:15PM -0700, Kalesh Singh wrote:
> > [...]
> > +     seq_file_path(m, file, "\n");
> > +     seq_putc(m, '\n');
> >
> >       /* show_fd_locks() never deferences files so a stale value is safe */
> >       show_fd_locks(m, file, files);
>
> This comment implies "file" might be stale? Does that mean anything for
> the above seq_file_path()?

Hi Kees.

Thanks for taking a look. The comment above says the "files" pointer
can be stale. It doesn't affect our use of "file" here. seq_show()
takes the reference with get_file() so "file" wouldn't be destroyed
from under us.

Thanks,
Kalesh
>
> --
> Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
