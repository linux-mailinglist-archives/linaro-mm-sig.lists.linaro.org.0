Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F08E60436F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:39:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 95D613F612
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:39:51 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by lists.linaro.org (Postfix) with ESMTPS id 34AF93F8EB
	for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Sep 2022 10:26:15 +0000 (UTC)
Received: by mail-lj1-f182.google.com with SMTP id y29so6726181ljq.7
        for <linaro-mm-sig@lists.linaro.org>; Thu, 08 Sep 2022 03:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=7zHmF7fV9+CSAN0NLZlR4YsL2QCd2uL4OzOpXBOMvMs=;
        b=Updcj/5C3zcysfgCd+XVSKzzlMDbyhzK9KV7VA96nw7o6Aiq7w/f6Rreuf4t+ru6Ia
         XO+EzWUB7W7bZkjzNvd5TPNumCOUW62pJeFae/RT0JfZ/BWDywBeuSuLlZkuIsKR1Pwm
         d4a4Lv4ZDEL5fi0jHtYo48baOvLY9PUg1De+IXOTIkkn5XGYeNN8b6M/2ztvVLYhYZc1
         AECew7rZxgj4NzTaXGLk4iVuGwxcSXlWVPABmSd8xaPB7p2RO85yNvQsIIvlgvKgxdlf
         qWZM75W5ERmzTblB28p3YXmF242iZ0Ud02IP837dPVV8UHmxhGYuR58YPXhqkIftwMpP
         5LlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=7zHmF7fV9+CSAN0NLZlR4YsL2QCd2uL4OzOpXBOMvMs=;
        b=sKCIJh8k8o9y/1gxZRfgEXKJXRAm1GNhx6ElffhNNMO1LhSRWGHdjgavQ2qkDbY6Zc
         s+LaW3Gbq0nDlb+Rzlm1iMW4oIB9Do6Y/JwVsCgIMSk4Wliml/pqSTY3XzUddWAyvxqj
         VigtPoE2CVZr89Tzq+IG4CWPr78HrDbpyDe33roEZC0O57YfLrqIuCcRAfYUft7DXfup
         S9MmaoKBOSpqhKerAA+tyaQOGkpsbNwz9Svwfg+q+0MFIq2Kdt8CaeBZDyhWVHiLycNd
         CEisB/cJYXd+On27ysrbv24l8hcAvMb2jB5+77el9elOhu3/bdvs9/y7Zz9f87Drjmcv
         YxJA==
X-Gm-Message-State: ACgBeo1dRkcK9yob3bg+a7SxEUcE8X0CRolA2t3ZWRMBL/gobBZ7YWts
	+fNBtOiW9D5cd5WzfAfxcAkdqavZGQ9CGjWvL3i7JAL+
X-Google-Smtp-Source: AA6agR5d+wwCPsH/ETCPRquWaPRFMuEHcU81Q+wmC6wIdZFu96tqD4jYmOC7FgcjqLpochaAtlr2pT1hUtYbk0+6Eas=
X-Received: by 2002:a2e:9799:0:b0:26b:dd3c:7080 with SMTP id
 y25-20020a2e9799000000b0026bdd3c7080mr255822lji.297.1662632773944; Thu, 08
 Sep 2022 03:26:13 -0700 (PDT)
MIME-Version: 1.0
References: <20220812143055.12938-1-olivier.masse@nxp.com> <CAFA6WYM89+SrW2Br-fnFke4djt4GgGHXn7JS3=rxvAa7dAAY7w@mail.gmail.com>
 <YxemmVxh5F0fXEPJ@phenom.ffwll.local>
In-Reply-To: <YxemmVxh5F0fXEPJ@phenom.ffwll.local>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 8 Sep 2022 15:56:02 +0530
Message-ID: <CAFA6WYMstaxeGVcuEKF68Bo9ZFSvQCaJfiC59Bv2q6LDCD3JDQ@mail.gmail.com>
To: daniel@ffwll.ch
X-MailFrom: sumit.garg@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: M3WLO7RNG22OR4744BY6XNG2GLIYMNHN
X-Message-ID-Hash: M3WLO7RNG22OR4744BY6XNG2GLIYMNHN
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:38:14 +0000
CC: Olivier Masse <olivier.masse@nxp.com>, clement.faure@nxp.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, jens.wiklander@linaro.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, etienne.carriere@linaro.org, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/1] tee: Add tee_shm_register_fd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M3WLO7RNG22OR4744BY6XNG2GLIYMNHN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Daniel,

On Wed, 7 Sept 2022 at 01:29, Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Fri, Aug 19, 2022 at 01:54:31PM +0530, Sumit Garg wrote:
> > Hi Olivier,
> >
> > On Fri, 12 Aug 2022 at 20:01, Olivier Masse <olivier.masse@nxp.com> wrote:
> > >
> > > Add a new ioctl called TEE_IOC_SHM_REGISTER_FD to register a
> > > shared memory from a dmabuf file descriptor.
> > > This new ioctl will allow the Linux Kernel to register a buffer
> > > to be used by the Secure Data Path OPTEE OS feature.
> > >
> > > Please find more information here:
> > > https://static.linaro.org/connect/san19/presentations/san19-107.pdf
> > >
> > > Patch tested on Hikey 6220.
> > >
> >
> > AFAIU, for the OP-TEE SDP feature to work you need to have a DMA-BUF
> > heap driver for allocating secure buffers through exposed chardev:
> > "/dev/dma_heap/sdp". Have you tested it with some out-of-tree driver
> > as I can't find it upstream? Also, do you plan to push that upstream
> > as well?
> >
> > BTW, please add a changelog while sending newer patch-set versions.
>
> Also after the huge discussion last year dma-buf are agreed to be under
> the "you need an open source userspace for any new uapi using them" rule
> that all gpu drivers are under.
>
> Does this exist here?

There is already an open source userspace test application using it
here [1] [2] demonstrating its use-case. I think that should be
sufficient.

[1] https://github.com/OP-TEE/optee_test/blob/master/host/xtest/sdp_basic.c
[2] https://github.com/OP-TEE/optee_test/blob/master/host/xtest/sdp_basic.h

-Sumit

> -Daniel
>
> >
> > -Sumit
> >
> > > Etienne Carriere (1):
> > >   tee: new ioctl to a register tee_shm from a dmabuf file descriptor
> > >
> > >  drivers/tee/tee_core.c   | 38 +++++++++++++++
> > >  drivers/tee/tee_shm.c    | 99 +++++++++++++++++++++++++++++++++++++++-
> > >  include/linux/tee_drv.h  | 11 +++++
> > >  include/uapi/linux/tee.h | 29 ++++++++++++
> > >  4 files changed, 175 insertions(+), 2 deletions(-)
> > >
> > > --
> > > 2.25.0
> > >
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
