Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 87397604371
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:40:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 983383F612
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:40:12 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	by lists.linaro.org (Postfix) with ESMTPS id 4461A3F8EB
	for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Sep 2022 10:28:59 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id k10so12359467lfm.4
        for <linaro-mm-sig@lists.linaro.org>; Thu, 08 Sep 2022 03:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=o8Z4CAve5fqqekItJ5TFGp6h+pybclKENCYKBTuFmhk=;
        b=IwcoQSz3UBrwnTW+HJsc6p8YeZ3gsbEhZ9gow3OEDbwrZWKiJ4I0GZtV40U0N60tH4
         g6iWHb8C/2uMf1AUqLqniwMkuSC0UXtsyjPPUO/238y/DnuRIcMCTrvrKfwhjwFST81q
         WCI0Bzvb+68TiJRBY2P3TXTqKehNdv1cuRQVc31f7d3fT9OSHBmtRpeVNXKXm0itJAZu
         wzG2WwVEBIaPuN21x1nTMFmLsMU2yRjFNpKQrXZpj8F0G1aR0kF8N0JlrwbLQIchOG2S
         S0sKweHdVu2Py7n87UpmgLnbDYmywB/aBdtRTJ5Q/i0bugqSaUHWPVsvVuCK04qp4WPD
         t3Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=o8Z4CAve5fqqekItJ5TFGp6h+pybclKENCYKBTuFmhk=;
        b=EZ/T06HmITUfMQxTymjdIgyQ6uOYin8VvjEPjZxInItsQ47lBLil9mZR28fLV6lzjU
         ZhaKsUqrzHkuHYquQzAYYwVF4TxMFm3/xdrIu3ZE8DMTb7liqmrZ/v7F1BNVRTJSu6qj
         UKgC+DrxiXRWh/ITFqcV3LmPmmjmca+l7OD/ElIixNQbTS/iKtm/Bo0jCoFvO1FHpfZ7
         gH9kSizNPEoqKsZBp5dWlr3di0BlwjtoTrKVSLTAqWoN/fgydFoRWBO/+ual1GWviJDY
         QFszn/lLV7KjKRQJl1z+L20L0cO6HdxGDTrXoEuIzSBxxhSDlEZ4tc4SMnClvdf8cHiB
         wngA==
X-Gm-Message-State: ACgBeo33TpUwWnBYTVSkWhEiZDQ2j4cbW4VgJvrn1VJk8e2E90xqhR9R
	LabbVU69HZiKcGEFcFlNdrT/HUG/0DYtkOPjFVtRhK53
X-Google-Smtp-Source: AA6agR5m51Ese4pRsiZ202uyHyguCnTFQK0dB89rjGUTjXVlu7AN+6Kz3Be2wVD4Zf8ywGIliea3qbme0TqsVaR8RrU=
X-Received: by 2002:a05:6512:3da5:b0:497:6082:98fd with SMTP id
 k37-20020a0565123da500b00497608298fdmr2328152lfv.109.1662632938143; Thu, 08
 Sep 2022 03:28:58 -0700 (PDT)
MIME-Version: 1.0
References: <20220812143055.12938-1-olivier.masse@nxp.com> <CAFA6WYM89+SrW2Br-fnFke4djt4GgGHXn7JS3=rxvAa7dAAY7w@mail.gmail.com>
 <fb641c168a6b9fc041785a0baa8ee4b2d3ff8ed4.camel@nxp.com>
In-Reply-To: <fb641c168a6b9fc041785a0baa8ee4b2d3ff8ed4.camel@nxp.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 8 Sep 2022 15:58:47 +0530
Message-ID: <CAFA6WYM+G=MPonqPpfVXCgCAxuezUjFnm7gZ1x6ybHGrAtQp3g@mail.gmail.com>
To: Olivier Masse <olivier.masse@nxp.com>
X-MailFrom: sumit.garg@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6TYAEJFP5DUGRCXCVEIXBCLS6G2TGPI2
X-Message-ID-Hash: 6TYAEJFP5DUGRCXCVEIXBCLS6G2TGPI2
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:38:14 +0000
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, =?UTF-8?Q?Cl=C3=A9ment_Faure?= <clement.faure@nxp.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "jens.wiklander@linaro.org" <jens.wiklander@linaro.org>, "op-tee@lists.trustedfirmware.org" <op-tee@lists.trustedfirmware.org>, "etienne.carriere@linaro.org" <etienne.carriere@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [EXT] Re: [PATCH v2 0/1] tee: Add tee_shm_register_fd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6TYAEJFP5DUGRCXCVEIXBCLS6G2TGPI2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 8 Sept 2022 at 14:48, Olivier Masse <olivier.masse@nxp.com> wrote:
>
> Hi Sumit
>
> On ven., 2022-08-19 at 13:54 +0530, Sumit Garg wrote:
> > Caution: EXT Email
> >
> > Hi Olivier,
> >
> > On Fri, 12 Aug 2022 at 20:01, Olivier Masse <olivier.masse@nxp.com>
> > wrote:
> > >
> > > Add a new ioctl called TEE_IOC_SHM_REGISTER_FD to register a
> > > shared memory from a dmabuf file descriptor.
> > > This new ioctl will allow the Linux Kernel to register a buffer
> > > to be used by the Secure Data Path OPTEE OS feature.
> > >
> > > Please find more information here:
> > >
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fstatic.linaro.org%2Fconnect%2Fsan19%2Fpresentations%2Fsan19-107.pdf&amp;data=05%7C01%7Colivier.masse%40nxp.com%7C05071ff1c28044ab740908da81bc44e2%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637964942860947359%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=nYLb2iMoJExdKEg4CL4eW5%2FQ%2Bqqj4Iw1TxFsd1UqWW0%3D&amp;reserved=0
> > >
> > > Patch tested on Hikey 6220.
> > >
> >
> > AFAIU, for the OP-TEE SDP feature to work you need to have a DMA-BUF
> > heap driver for allocating secure buffers through exposed chardev:
> > "/dev/dma_heap/sdp". Have you tested it with some out-of-tree driver
> > as I can't find it upstream? Also, do you plan to push that upstream
> > as well?
>
> It has been tested with linaro,secure-heap reserved dma heap memory
> which is also in review for upstream.

Can you provide the corresponding reference? Also, do keep OP-TEE ML
in CC if you send any new iteration for that patch.

-Sumit

>
> >
> > BTW, please add a changelog while sending newer patch-set versions.
> >
> > -Sumit
> >
> > > Etienne Carriere (1):
> > >   tee: new ioctl to a register tee_shm from a dmabuf file
> > > descriptor
> > >
> > >  drivers/tee/tee_core.c   | 38 +++++++++++++++
> > >  drivers/tee/tee_shm.c    | 99
> > > +++++++++++++++++++++++++++++++++++++++-
> > >  include/linux/tee_drv.h  | 11 +++++
> > >  include/uapi/linux/tee.h | 29 ++++++++++++
> > >  4 files changed, 175 insertions(+), 2 deletions(-)
> > >
> > > --
> > > 2.25.0
> > >
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
