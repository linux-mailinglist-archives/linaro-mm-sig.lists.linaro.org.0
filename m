Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EAD4B6483
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:39:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 00CF3401BD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:39:31 +0000 (UTC)
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	by lists.linaro.org (Postfix) with ESMTPS id 3F8B23EE94
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 11:55:40 +0000 (UTC)
Received: by mail-oo1-f46.google.com with SMTP id f4-20020a4ac484000000b002e3e221d769so5734760ooq.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 03:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=McNieCwRwqdn4mXgmAvirHEqDHVQd8Qo6rMG0vyrR7Q=;
        b=HNu+maSSw2VuoPG4z2uqifqYkaqVw+S4RwRek4pz9ohP+yYYdhPtsnebMxEUL9dCg0
         mz4snKlOEPKfVdw9XFwzbzUnLeeKb7uoLF0m6AVVled4cErVwiFux0F7AqnZypSPj/w9
         7CUAthYAwmJwcA2SLFnbKmI25IZY9D33wVk2wLeEcSa9iibyrFhSEhyuNBa7vJHGqoq+
         Mf6xSUvsTspf6F1BnsKbYk4KwExvvwuBI0DekRdYZF96MwMDX5PLcKcdIcKiv8laApGC
         1OWhuDW9YRtxwBY2fDwBjyzTaVPfHvNFHy2m9pft0LKZrUVxDvZCglgu7+N9C6PFAHDu
         39hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=McNieCwRwqdn4mXgmAvirHEqDHVQd8Qo6rMG0vyrR7Q=;
        b=LkrG9ErlrX0y1WSYTi2lIND8PZQ1SKkmuJuTHcKlaDvoMoMa/hGXiJo7n/O4I3qNna
         qT057zl1xwNtV68Il1ufROYh8u+FVYxPF7e/JiiqO+DEdXHUJF2ziUBjyQ9sISWsxblZ
         YXzJY6HCPdYmzbGym2ekyLTpW91G4DZKOASlCvWN4iAdtwt93j6ilEqqf2F5GiOYdu35
         JpcEu9FcoD3hCKxdrK2jaodQt6LeSgYoeSzYmHf6b1AWVZI5CqoJB9seYBCXIeMjgkFJ
         UCij25wWhJD1xYuyzvEe7qODikQqop+AzmFp/A6qoJVB0MllLaeMigbQjmJ8zEBt8+zd
         8hmg==
X-Gm-Message-State: AOAM531IK+dFZ4mEkDWRcM3YQBXE8X6FBMxAr4AmbhwB7jj9IBiMCWrw
	JgaZ+K92wCoABoQsNJtkAVZmQMDnO6CDVy3b5eZoLQ==
X-Google-Smtp-Source: ABdhPJw7mc2w5pNFCFGNTs8AQieDdtqWE4vCOvZNY/RlwQ+oYpw5SAwk5nCWs+H6posIOLwEsPgAVLlXQxs+y7bzmRY=
X-Received: by 2002:a4a:bd84:: with SMTP id k4mr2249718oop.45.1643025339517;
 Mon, 24 Jan 2022 03:55:39 -0800 (PST)
MIME-Version: 1.0
References: <20220124025205.329752-1-liupeng256@huawei.com>
 <20220124025205.329752-2-liupeng256@huawei.com> <Ye5hKItk3j7arjaI@elver.google.com>
 <6eb16a68-9a56-7aea-3dd6-bd719a9ce700@huawei.com> <CANpmjNM_bp03RvWYr+PaOxx0DS3LryChweG90QXci3iBgzW4wQ@mail.gmail.com>
In-Reply-To: <CANpmjNM_bp03RvWYr+PaOxx0DS3LryChweG90QXci3iBgzW4wQ@mail.gmail.com>
From: Marco Elver <elver@google.com>
Date: Mon, 24 Jan 2022 12:55:28 +0100
Message-ID: <CANpmjNO8g_MB-5T9YxLKHOe=Mo8AWTmSFGh5jmr479s=j-v0Pg@mail.gmail.com>
To: "liupeng (DM)" <liupeng256@huawei.com>
X-MailFrom: elver@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7EQC6ZF5YUAMB3QALQWZQZBUJMC2MHAP
X-Message-ID-Hash: 7EQC6ZF5YUAMB3QALQWZQZBUJMC2MHAP
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:38:48 +0000
CC: glider@google.com, dvyukov@google.com, corbet@lwn.net, christian.koenig@amd.com, akpm@linux-foundation.org, kasan-dev@googlegroups.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 1/3] kfence: Add a module parameter to adjust kfence objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7EQC6ZF5YUAMB3QALQWZQZBUJMC2MHAP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 24 Jan 2022 at 12:45, Marco Elver <elver@google.com> wrote:
>
> [ FYI, your reply was not plain text, so LKML may have rejected it. I
> advise that you switch your email client for LKML emails to plain
> text. ]
>
> On Mon, 24 Jan 2022 at 12:24, liupeng (DM) <liupeng256@huawei.com> wrote:
> [...]
> > > I think the only reasonable way forward is if you add immediate patching
> > > support to the kernel as the "Note" suggests.
> >
> > May you give us more details about "immediate patching"?
> [...]
> > Thank you for your patient suggestions, it's actually helpful and inspired.
> > We have integrated your latest work "skipping already covered allocations",
> > and will do more experiments about KFENCE. Finally, we really hope you can
> > give us more introductions about "immediate patching".
>
> "Immediate patching" would, similar to "static branches" or
> "alternatives" be based on code hot patching.
>
> https://www.kernel.org/doc/html/latest/staging/static-keys.html
>
> "Patching immediates" would essentially patch the immediate operands
> of certain (limited) instructions. I think designing this properly to
> work across various architectures (like static_keys/jump_label) is
> very complex. So it may not be a viable near-term option.
>
> What Dmitry suggests using a constant virtual address carveout is more
> realistic. But this means having to discuss with arch maintainers
> which virtual address ranges can be reserved. The nice thing about
> just relying on memblock and nothing else is that it is very portable
> and simple. You can have a look at how KASAN deals with organizing its
> shadow memory if you are interested.

Hmm, there may be more issues lurking here:

https://lore.kernel.org/all/20200929140226.GB53442@C02TD0UTHF1T.local/
https://lore.kernel.org/all/20200929142411.GC53442@C02TD0UTHF1T.local/

... and I'm guessing if we assign a fixed virtual address range it'll
live outside the linear mapping, which is likely to break certain
requirements of kmalloc()'d allocations in certain situations (a
problem we had with v1 of KFENCE on arm64).

So I don't even know if that's feasible. :-/

Thanks,
-- Marco
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
