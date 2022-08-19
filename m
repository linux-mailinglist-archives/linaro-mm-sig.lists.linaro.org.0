Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFF85F6869
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Oct 2022 15:44:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C58E73F487
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Oct 2022 13:44:08 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by lists.linaro.org (Postfix) with ESMTPS id A4C4E3F4B4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Aug 2022 08:24:42 +0000 (UTC)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-3376851fe13so69917307b3.6
        for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Aug 2022 01:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=GridmYqKIl9YhRzWxWOzxfd24n2YkgbOm/HqzMAUhEQ=;
        b=bwNIyABVmu81M7BGPfjuHZ6PjIx00blv/MpdYbhXPXackmXOce8DP2CjV/tCB/03Si
         /FmDOotUt4VGGVOPk7no9TMR+TuGC7n73wb594mU54kKQ+XCvHraCCmCzIVrPJbhPpsm
         jjdZZSO942VUB/CVHr+wodkZPIzhIaTwLheZDB0+BeLUGC1Rmzi+4CYlvzHf9VIlSsaj
         ggHRRVyYDnrW6QmjXK1pmuYAURpmrYSbNORQBd7Hna4JgukZcEaIdFcLAGzLz+g3JBos
         GeCdgmv1eq8LW+Iz3ANUpnfGua4NLHGX62ulRSTOHK0XLfbaRoLxVSMBgzs6JBPA4OgR
         WDEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=GridmYqKIl9YhRzWxWOzxfd24n2YkgbOm/HqzMAUhEQ=;
        b=aUD/iPpTBcIa3sQrv75fYMFRPSU66YyMttsOGPUvMHU3map0di37aHpecwCBuvmbdr
         tUMvxWegznr2exlmqhOXbG6YGU/KlaAZUa6CCll43ERt5wA51p56rgMwDvD5ZXFsM/0/
         kJPRGL7xEGwiHkziz3Qyko23iguCZiw1ACfUCXIIL/w1W0X3A+uHwA6f5Uk4H8pG/pj4
         ZLrY4MWnZQfmpwSdl0s659pdz7nDH9pLSD0xmw2tG4bGxEr72agFqvFXfZ3eNgStyUeM
         lQiSIXWB07dLhBqZ4UYt+0RV7aCBLCZI3p3x/vj4XWmeMqpRxuo8br5wIguoDeXMombQ
         WIjA==
X-Gm-Message-State: ACgBeo0k5oty67o9DWiq41tE4LP7Dy6FKL4dD3avzLfNsHXfJGtPhoNl
	LsTDDCzlL7B7JIk1hl55RzKcaRFEGKVV5BceypgPsZL3
X-Google-Smtp-Source: AA6agR5Xeeq2XXdslKqjNOEIt8ha4tkJ3suR0T/hScDsfaXCZ/KwX1otEr27K/Qwm11NBboU15GFBLmyI/AXH0D6BfA=
X-Received: by 2002:a81:d543:0:b0:325:2240:ce5 with SMTP id
 l3-20020a81d543000000b0032522400ce5mr6410102ywj.210.1660897482275; Fri, 19
 Aug 2022 01:24:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220812143055.12938-1-olivier.masse@nxp.com>
In-Reply-To: <20220812143055.12938-1-olivier.masse@nxp.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Fri, 19 Aug 2022 13:54:31 +0530
Message-ID: <CAFA6WYM89+SrW2Br-fnFke4djt4GgGHXn7JS3=rxvAa7dAAY7w@mail.gmail.com>
To: Olivier Masse <olivier.masse@nxp.com>
X-MailFrom: sumit.garg@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OUU753ZRQBQGLM3RAF347ZIV2W2UJMH4
X-Message-ID-Hash: OUU753ZRQBQGLM3RAF347ZIV2W2UJMH4
X-Mailman-Approved-At: Thu, 06 Oct 2022 13:43:04 +0000
CC: etienne.carriere@linaro.org, jens.wiklander@linaro.org, sumit.semwal@linaro.org, christian.koenig@amd.com, op-tee@lists.trustedfirmware.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, clement.faure@nxp.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/1] tee: Add tee_shm_register_fd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OUU753ZRQBQGLM3RAF347ZIV2W2UJMH4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Olivier,

On Fri, 12 Aug 2022 at 20:01, Olivier Masse <olivier.masse@nxp.com> wrote:
>
> Add a new ioctl called TEE_IOC_SHM_REGISTER_FD to register a
> shared memory from a dmabuf file descriptor.
> This new ioctl will allow the Linux Kernel to register a buffer
> to be used by the Secure Data Path OPTEE OS feature.
>
> Please find more information here:
> https://static.linaro.org/connect/san19/presentations/san19-107.pdf
>
> Patch tested on Hikey 6220.
>

AFAIU, for the OP-TEE SDP feature to work you need to have a DMA-BUF
heap driver for allocating secure buffers through exposed chardev:
"/dev/dma_heap/sdp". Have you tested it with some out-of-tree driver
as I can't find it upstream? Also, do you plan to push that upstream
as well?

BTW, please add a changelog while sending newer patch-set versions.

-Sumit

> Etienne Carriere (1):
>   tee: new ioctl to a register tee_shm from a dmabuf file descriptor
>
>  drivers/tee/tee_core.c   | 38 +++++++++++++++
>  drivers/tee/tee_shm.c    | 99 +++++++++++++++++++++++++++++++++++++++-
>  include/linux/tee_drv.h  | 11 +++++
>  include/uapi/linux/tee.h | 29 ++++++++++++
>  4 files changed, 175 insertions(+), 2 deletions(-)
>
> --
> 2.25.0
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
