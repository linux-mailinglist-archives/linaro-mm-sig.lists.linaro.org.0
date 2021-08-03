Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A0F3DF6FB
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Aug 2021 23:40:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 22A4161624
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Aug 2021 21:40:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EF146634D9; Tue,  3 Aug 2021 21:40:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F63D611B1;
	Tue,  3 Aug 2021 21:40:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1C20A6085A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Aug 2021 21:39:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0B22E611B1; Tue,  3 Aug 2021 21:39:58 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
 [209.85.219.181])
 by lists.linaro.org (Postfix) with ESMTPS id EFEB96085A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Aug 2021 21:39:55 +0000 (UTC)
Received: by mail-yb1-f181.google.com with SMTP id z128so917313ybc.10
 for <linaro-mm-sig@lists.linaro.org>; Tue, 03 Aug 2021 14:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eH7F2c4Hn9egywDlY45TqR5QW7h6BJhJpVKajFn/Dvg=;
 b=frGpZAuU0TNGycNOUwSntnWTwUNXJjKhM/djmFxpOw4RLjxj4ZIMH/kWc6KmsJtmzd
 5DZZF1XvLkwEjfV0d1g/+qd7fYu4p3IcXqxRh2+j2cEJmx1zwJZD59Hk+1HpT49HtK7X
 Uqge3z5MMAj3GqdriP0bGY+4uxvfDwPHI/8AUaTv/dYUqCfItsy4CzgGG4YcVxQ2W+3k
 8yFws8bfEWrZyIXSyrNOM13JM5LbYjDmUdpWEgK5q3XHMwmDZUH16Fn3Lcmdkk1kJ+tR
 5f+ICl8eIJ74PX6+7FzayWfSiwsOc3t/1lDkBGqzyqADZbXQ5H4FBtmOqjk757mpLOmy
 DCGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eH7F2c4Hn9egywDlY45TqR5QW7h6BJhJpVKajFn/Dvg=;
 b=gu58E2FQijfr/TT5Bc3u74Nb4VTt3W3lEXCgFxv4jpjCHwPDiLLlE8Tj/S8UIBmqaK
 KvGUltoDApxW2n2rL6oN6nDytaijoD2eLyVjczzpS+Lqwx9QsX5/xCKIB8ljVxjzQ5gI
 ZfRrhLR6vrjeq1V7pDTXXIRsSroSPiaoO36MUGo6K6wk3o0DgMdn00rsRgtYB8dLDBaf
 0SGaKNqSt/lW5VMRwBrj+aONkX86D6knt7Bd5UoYA/9P5nOYKCo50dDApWZBGbleKLDJ
 BM10Pulq6yf6FzbKj3gzoqxw+P4elpIKFpAoQ9zVkEtqxjlVyNpw3MylyW/NA8g/UOhD
 gJ1Q==
X-Gm-Message-State: AOAM533OLMBWCjiYkuQ6EYd1nXXfe2HOhhPQcFheFbc7e/Fj3vwn6Lvz
 GF/YMiNE4LX0UzBTTFOxzrsqI+TRYZUuNP1TFTrtmQ==
X-Google-Smtp-Source: ABdhPJynfd6Tp5fx5X/8PoqmW8udIcLQViQbJXvKzToG91Bonke+UV5rO2Ua9gr8hn4ZJodP/4n3mFpQcnCzz5bXHoo=
X-Received: by 2002:a25:cac7:: with SMTP id
 a190mr14975276ybg.290.1628026795438; 
 Tue, 03 Aug 2021 14:39:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210722190747.1986614-1-hridya@google.com>
 <CALAqxLVLMt7rbJBQtFBw-ikBAjKrVgfS8=Nu6NFQbp_gq1m22Q@mail.gmail.com>
In-Reply-To: <CALAqxLVLMt7rbJBQtFBw-ikBAjKrVgfS8=Nu6NFQbp_gq1m22Q@mail.gmail.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Tue, 3 Aug 2021 14:39:19 -0700
Message-ID: <CA+wgaPOQmY4H9n302YspKuLk9iq9vBzdWBTu19EUUsiQYTUOzQ@mail.gmail.com>
To: John Stultz <john.stultz@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Set allocation limit
 for system heap
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Brian Starkey <Brian.Starkey@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Laura Abbott <labbott@redhat.com>,
 Android Kernel Team <kernel-team@android.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Aug 2, 2021 at 7:18 PM John Stultz <john.stultz@linaro.org> wrote:
>
> On Thu, Jul 22, 2021 at 12:07 PM Hridya Valsaraju <hridya@google.com> wrote:
> > This patch limits the size of total memory that can be requested in a
> > single allocation from the system heap. This would prevent a
> > buggy/malicious client from depleting system memory by requesting for an
> > extremely large allocation which might destabilize the system.
> >
> > The limit is set to half the size of the device's total RAM which is the
> > same as what was set by the deprecated ION system heap.
> >
> > Signed-off-by: Hridya Valsaraju <hridya@google.com>
>
> Seems sane to me, unless folks have better suggestions for allocation limits.
>
> Reviewed-by: John Stultz <john.stultz@linaro.org>

Thank you for taking a look John!

Regards,
Hridya

>
> thanks
> -john
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
