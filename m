Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA8F4B6482
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:39:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1F78401CA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:39:25 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by lists.linaro.org (Postfix) with ESMTPS id 212853EE94
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 11:45:29 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id s127so25073752oig.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 03:45:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HDkM4IiHfUKgbkZ+J9zwOceHsfDsj5OClEazZRmTBPg=;
        b=HvPmu/lBdXu8USCBrVJHyisE10/1/FUkHikq4c8GIPsSYm3FNw2nsTcVpUYzL2eImy
         KRPCPFeV3Tshd07oaAWPdk9SbLFOvylwUAsPbprhOKo5XBBCQVw+ScTKVlvUFG++Y6/1
         lx1VV1kGsX0K6v4MLt6YPphNRqfd5UmLF/xPVH+FKQ2w2y98JLaQVx0keZYxGWAremLp
         3RnysEQLgZsQDKLK8OXiTKhyGADOnXG0jhLcvOZFW3vrzauSMpNf7aQzJKdPM2WnUAf/
         CBoN+6qEVRT5y+mVYWx1EEGhzGYS4d65LMa8tApwuPNuKBw3dvCFWzs8xcM9ZAkDH3By
         hwZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HDkM4IiHfUKgbkZ+J9zwOceHsfDsj5OClEazZRmTBPg=;
        b=vqChuAi2jesmIcmLrggb6b/7VVWrxvYFvimWcnWFGTHXoXQCDOFI7fBEH4jDAFRQ7q
         WyVvQ3C4oXyYym7MM9KANycwTKuQdEhqssUhrrWp1FHJwqvcuKyvCqo9AKhC8K5moMjE
         2bs66tmHy//QGaBAJZTyYa4O9mdF6q/sl8ivBbAkEStetRscdxv3rFz2JAJCtXAboXeo
         dxW+38+HxeqVp7SworKMIbcMpfl+RSUB5WY4axVhjsceIAnJkU0xIeawNcALSPr9OISO
         72DNvK0ePx1Li9qEpIeHlbzQDOy7Uthm0k1z9eMVygZw03kPqGS5fEWl8dLPLEhsmC8J
         EZbw==
X-Gm-Message-State: AOAM532gefBfw3/MspBpViW7G38eL5i06NitexmCl1HzhZQrN59iF+OF
	2lEz73ILQuPF3cwd64Xc/e/xShHZpzNZbb8wDhVUsQ==
X-Google-Smtp-Source: ABdhPJwBMtKEh5aO3egIkRpWsViFdiWPOJARwDxK8cU1P6n8YVfos+OGKcyJYOYZ2OYex3TBjPKT8taDFYlkk/vEf2U=
X-Received: by 2002:a05:6808:15a6:: with SMTP id t38mr1044668oiw.154.1643024728284;
 Mon, 24 Jan 2022 03:45:28 -0800 (PST)
MIME-Version: 1.0
References: <20220124025205.329752-1-liupeng256@huawei.com>
 <20220124025205.329752-2-liupeng256@huawei.com> <Ye5hKItk3j7arjaI@elver.google.com>
 <6eb16a68-9a56-7aea-3dd6-bd719a9ce700@huawei.com>
In-Reply-To: <6eb16a68-9a56-7aea-3dd6-bd719a9ce700@huawei.com>
From: Marco Elver <elver@google.com>
Date: Mon, 24 Jan 2022 12:45:16 +0100
Message-ID: <CANpmjNM_bp03RvWYr+PaOxx0DS3LryChweG90QXci3iBgzW4wQ@mail.gmail.com>
To: "liupeng (DM)" <liupeng256@huawei.com>
X-MailFrom: elver@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OXXA2BICKS7XOZNKSGV7TLUC7LSMDGNR
X-Message-ID-Hash: OXXA2BICKS7XOZNKSGV7TLUC7LSMDGNR
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:38:47 +0000
CC: glider@google.com, dvyukov@google.com, corbet@lwn.net, christian.koenig@amd.com, akpm@linux-foundation.org, kasan-dev@googlegroups.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 1/3] kfence: Add a module parameter to adjust kfence objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OXXA2BICKS7XOZNKSGV7TLUC7LSMDGNR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

[ FYI, your reply was not plain text, so LKML may have rejected it. I
advise that you switch your email client for LKML emails to plain
text. ]

On Mon, 24 Jan 2022 at 12:24, liupeng (DM) <liupeng256@huawei.com> wrote:
[...]
> > I think the only reasonable way forward is if you add immediate patching
> > support to the kernel as the "Note" suggests.
>
> May you give us more details about "immediate patching"?
[...]
> Thank you for your patient suggestions, it's actually helpful and inspired.
> We have integrated your latest work "skipping already covered allocations",
> and will do more experiments about KFENCE. Finally, we really hope you can
> give us more introductions about "immediate patching".

"Immediate patching" would, similar to "static branches" or
"alternatives" be based on code hot patching.

https://www.kernel.org/doc/html/latest/staging/static-keys.html

"Patching immediates" would essentially patch the immediate operands
of certain (limited) instructions. I think designing this properly to
work across various architectures (like static_keys/jump_label) is
very complex. So it may not be a viable near-term option.

What Dmitry suggests using a constant virtual address carveout is more
realistic. But this means having to discuss with arch maintainers
which virtual address ranges can be reserved. The nice thing about
just relying on memblock and nothing else is that it is very portable
and simple. You can have a look at how KASAN deals with organizing its
shadow memory if you are interested.

Thanks,
-- Marco
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
