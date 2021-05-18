Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9A4388227
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 May 2021 23:31:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48A846109D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 May 2021 21:31:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B63FE61178; Tue, 18 May 2021 21:31:54 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AAB0B61031;
	Tue, 18 May 2021 21:31:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D5AE761020
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 May 2021 21:31:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D38E661031; Tue, 18 May 2021 21:31:49 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by lists.linaro.org (Postfix) with ESMTPS id CB3B661020
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 May 2021 21:31:47 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id c20so16854489ejm.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 May 2021 14:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=veMfG6kwKtjGfJk6CkECwMk0LnoYrS9PYsgFuQgGNNo=;
 b=mARpTPBbZ9aaAj6af4Ph+av/wITZP1I2JAN/uh/ZFB0Kak/rKyNrSlAT1XDsqjZO6x
 w2Ofvqkfhrqc94Mz2G5PF4OLteFtdHHMgAAmBXtaIBCGiq+w9A/06Uw9jSbGm1Xc0tp0
 1jOUFPVCzrza7vmmhpW47L8RgtUbqqjf/iEopo19C3g0nrc3LYPVQBhJyznKQx/LuM9T
 5rM7flKSlOIqd7505V9n6iUUiF7MQJf+6sxl02fb2XPw3XYDQBth1w4nU4TlrZXOWgFt
 SaPjb2K57xfQGWJjdgO5mZcC2QiUca7LuEEi1qeWSLEBqsGGT89ApaH6KZHZj23WrfiY
 iMxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=veMfG6kwKtjGfJk6CkECwMk0LnoYrS9PYsgFuQgGNNo=;
 b=my0oB81czMKvwlGSTBjvpFBn9CluVux43pQl5XYiwQZMRV+rGxraqEUXNmvMLXb4FT
 i1sbqkDU4sVMukM0cq2OVK4Ii9Fj6tmTXiskaDGWptTHWlQmQgWbYraSbtwrZvIwZf5J
 1LR4uICpGKgT7iNl54WMg5X3xrI5k6t75n6MEGNUKOz/keTmuz7GngKcuwMBn4HMk6Jd
 emRm5eb4+31z5AVFYnkVw4+e4NSuxZe7B+0NmQhHkZ+jM5rxjY/b9wxlfCM3OUSyz09f
 plJEhrQCn9maDVdO0N7WhWY85DoZ1EBGJV5l+xsluJclUgicM03AGZEiyip3jb7B5CwU
 rLiA==
X-Gm-Message-State: AOAM533YzXNHniTZT0qB3MYZr+o1DT1St2Trzexn7uzxgGPrsXThHR6W
 ryf54WQQQBCZYKUL96RSLnfRawpY/Ije5R7tA2U=
X-Google-Smtp-Source: ABdhPJxglJopJPVJeBdJAibx2pLncwgknWUSIbigd+ipMvPXFO+JmZfx1w+dU/BvPykLB89d5NTB0UodnOwsVCtUBGY=
X-Received: by 2002:a17:906:6b96:: with SMTP id
 l22mr8027647ejr.456.1621373506979; 
 Tue, 18 May 2021 14:31:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210517141129.2225-1-christian.koenig@amd.com>
 <YKKF4jOvM4gJT6a4@phenom.ffwll.local>
 <5a3e9500-9d6b-a865-5385-fde43da2bf66@gmail.com>
 <CAKMK7uF=y44e9-0-4MBj3jRBdCqMaLgKutTMeBWCbySRnPR4KQ@mail.gmail.com>
 <CAOFGe960UMe4=Xxcoha9R2Y74ma3Pp4Z0DF6PM+SJ2sjq2DBXg@mail.gmail.com>
 <CAKMK7uGtTT+59hRi3PB1WHPES3YJAPYBvbT74vo9PApNE0i7MQ@mail.gmail.com>
 <fee06c2d-27fb-1af4-6222-8f277b36c951@gmail.com>
 <CAKMK7uHLipx_oH-s5PB6pUUZ_JXCyciaY7sDLfK__-2fvSPCKA@mail.gmail.com>
 <f2eb6751-2f82-9b23-f57e-548de5b729de@gmail.com>
In-Reply-To: <f2eb6751-2f82-9b23-f57e-548de5b729de@gmail.com>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 19 May 2021 07:31:35 +1000
Message-ID: <CAPM=9txtjS1UNRVjcWvW4JhwggOaZ4rwgbvCvWv43-eYEBt5gA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC] Add DMA_RESV_USAGE flags
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
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, Jason Ekstrand <jason@jlekstrand.net>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

>
> We basically don't know during CS if a BO is shared or not.

Who doesn't know? We should be able to track this quite easily,
userspace either imports or exports buffers,
it can surely keep track of these and flag them.

Is this a userspace might lie to use worry or do you have some really
broken userspace we don't know about?

Dave.
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
