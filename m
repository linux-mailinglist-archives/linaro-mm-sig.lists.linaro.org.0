Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D325A405AEA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Sep 2021 18:31:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B319D63523
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Sep 2021 16:31:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1E3D56325F; Thu,  9 Sep 2021 16:31:11 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6EB6960B91;
	Thu,  9 Sep 2021 16:31:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1EFA16055B
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Sep 2021 16:31:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 13CB160B91; Thu,  9 Sep 2021 16:31:07 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 0926F6055B
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Sep 2021 16:31:05 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id d6so3409413wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Sep 2021 09:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u+0jFX+c9As4mGNIOMW4VKBlVBkjOIBw3KEyFedYOaI=;
 b=bbFcCygdOWBh3I3p1p2h3+WeDK8qco4C6NmJcfldjivlawaHz7aMOiMt8tR6Ty5xYr
 vFIMdU+u7QOzp2X6Z7EGAQ/SFyr7BKtd5WYfUkWSQ2Ava5SM/tHdgE5fRjgJJxib5ke4
 9QTWO2YtVY+iq1ykq9E9y12HG20+qdvptEv8mRNmSerDF70CMHafid7rHTLd9JDZOZXB
 6poQ3PgFmrZnaIbAes1l1NiiSYSNzbSLSNRwGPZXLcF4SeIH/Gfp1VUnBYI1HTlW9398
 R1Bc3c3BGH3fmESVlZvXOO+9UdyQJ6Kh+pj1aettYb/7OahVLOuhR2ooRP2zky/oQLsZ
 TotA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u+0jFX+c9As4mGNIOMW4VKBlVBkjOIBw3KEyFedYOaI=;
 b=ENqvfGfYP7rlHSCO26MePYbPKGEHdM1eNFKsz7EofDFEeqApGcZ7f3bXorUQcTOjJY
 b9xsI/xyeGOtJjGU3p8hptSuAx3VDe6SglnyGufRFKUWnJYNxiVPR8n0BSYMkrzMXCA0
 Huqtty5cSeYgWODO6bbKivbXmFIwK+LsUxYmhYBflXA4zOfA0LB/UImp/51Lxovw6Xfa
 sfpbIYRWoeXJZ5AIvdLt0yvz8cLKoOVFL1UpLgbSVnRJyFqzbAqPFkdklEj7OZJqc46v
 Vf2wuuRyk7OI9bFMRE9YWeAAkKCNUX9Wry7DVlx3aXewe6OpZlHyWpsXU74yqfquYxUT
 1t1Q==
X-Gm-Message-State: AOAM532Zm4pYLbVPYy4ninPPb1PbvT8mlqtLbL6atueb8RD8T6A9U+40
 kZf+mBwo8PLv970SUO7DbgBfEprXqvncvkr/jFA=
X-Google-Smtp-Source: ABdhPJziNKyewTTtSu5pziJeaODH5nE8F9cT5n7HbZ3pWAcwqx9wKwmPdZrhzS9wqwHAw5W+ht5QMcC2TK8ie1veLgk=
X-Received: by 2002:a5d:4488:: with SMTP id j8mr4732581wrq.260.1631205063988; 
 Thu, 09 Sep 2021 09:31:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210903184806.1680887-1-robdclark@gmail.com>
 <i-XmBd_5J3_d8cdm-IT6Ery2kHN0FPZCX968aU5idvxQxNlvDJguLLThtF2NF15LF8gGsH4uI2w0s0CL_39KGpzoGpuCgcz2_-4Wjf3AYEM=@emersion.fr>
In-Reply-To: <i-XmBd_5J3_d8cdm-IT6Ery2kHN0FPZCX968aU5idvxQxNlvDJguLLThtF2NF15LF8gGsH4uI2w0s0CL_39KGpzoGpuCgcz2_-4Wjf3AYEM=@emersion.fr>
From: Rob Clark <robdclark@gmail.com>
Date: Thu, 9 Sep 2021 09:35:31 -0700
Message-ID: <CAF6AEGuD2bnFpmSWtGxU5+AFj1HVKtnOZmLKRr-pDVbLn0nPVw@mail.gmail.com>
To: Simon Ser <contact@emersion.fr>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 0/9] dma-fence: Deadline awareness
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
Cc: Rob Clark <robdclark@chromium.org>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>, Luben Tuikov <luben.tuikov@amd.com>,
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Pekka Paalanen <ppaalanen@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Melissa Wen <mwen@igalia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Tian Tao <tiantao6@hisilicon.com>, freedreno <freedreno@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Sep 9, 2021 at 9:16 AM Simon Ser <contact@emersion.fr> wrote:
>
> Out of curiosity, would it be reasonable to allow user-space (more
> precisely, the compositor) to set the deadline via an IOCTL without
> actually performing an atomic commit with the FB?
>
> Some compositors might want to wait themselves for FB fence completions
> to ensure a client doesn't block the whole desktop (by submitting a
> very costly rendering job). In this case it would make sense for the
> compositor to indicate that it intends to display the buffer on next
> vblank if it's ready by that point, without queueing a page-flip yet.

Yes, I think it would.. and "dma-buf/sync_file: Add SET_DEADLINE
ioctl" adds such an ioctl.. just for the benefit of igt tests at this
point, but the thought was it would be also used by compositors that
are doing such frame scheduling.  Ofc danvet is a bit grumpy that
there isn't a more real (than igt) userspace for the ioctl yet ;-)

BR,
-R
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
