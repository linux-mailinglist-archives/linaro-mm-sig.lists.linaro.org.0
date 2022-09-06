Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2B05AF526
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Sep 2022 21:59:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CEA2B3F4F4
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Sep 2022 19:59:29 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id 5D0543F4F4
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Sep 2022 19:59:25 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id m17-20020a7bce11000000b003a5bedec07bso10307939wmc.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Sep 2022 12:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date;
        bh=VrcGAAHAFPBkHhppiEmlpx+VdwyrqvH6/RbOsQratUo=;
        b=M5h3saQs6F1UBXdjXnvlynP0tALp22uVJtMAUE8iSwB+bkrHqEOrpeStA2fQe0HZLG
         YdZDuD8LI9dc62w8cGcwf2yNtMGV2kRoFK6GdKfUXRceSGpRnCR0rRV3DTzNfjVFjuJU
         dg17JdrVDQJfVv8mYhJu6NQhnD6rI1ItsBHd8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=VrcGAAHAFPBkHhppiEmlpx+VdwyrqvH6/RbOsQratUo=;
        b=zWDX6oRs/WsTV5dvNRjKzJ6sxubXGMn0hBdUsozAJW4apEtfkIMCLMUEdvmqA+Qm29
         iVwmHMRncwTYrygKSF7LHPPKA9HNZgozZfg3fCdI10n9vKubAD4E01urXSbbWjrQ18qX
         6Fu802H3rTJPVuZlF8v9smD6Hm+CgRlfCfOlEN8lcA1zwT7Ja+YYPrF8ouW45MeZJ0vr
         fkxtJfslqwjsDuGxrQklevlMrlGk/0OFIUZ6o3fyKKe2SKcWCLqpqVAy+HzbVgiWJ1nX
         kQ6Dp5WD+GP0V8F/Y01O70HoUm4lsVUKFcLgT6ZxJQFYV7IOu/ahI9jYSAJcv7Ax3R7w
         9fqQ==
X-Gm-Message-State: ACgBeo2VmS8MRP6jH38RxhdGJLPrcCbTDCzUg18byF3gjEV5/H8EbMjp
	mNsWPD8BNecMIMluvJAXL8QYmg==
X-Google-Smtp-Source: AA6agR70xNvhnTUF/14KkJLm8rVw//b90FT680b1H6RZc3w8FRaOhwakoWInvlm1LH/O+Z8Yz4H0qw==
X-Received: by 2002:a05:600c:34c2:b0:3a5:d2f5:9d02 with SMTP id d2-20020a05600c34c200b003a5d2f59d02mr37123wmq.153.1662494364404;
        Tue, 06 Sep 2022 12:59:24 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id l9-20020adfe9c9000000b00228d94931dcsm4199922wrn.116.2022.09.06.12.59.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 12:59:23 -0700 (PDT)
Date: Tue, 6 Sep 2022 21:59:21 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sumit Garg <sumit.garg@linaro.org>
Message-ID: <YxemmVxh5F0fXEPJ@phenom.ffwll.local>
Mail-Followup-To: Sumit Garg <sumit.garg@linaro.org>,
	Olivier Masse <olivier.masse@nxp.com>, clement.faure@nxp.com,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	jens.wiklander@linaro.org, linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org, etienne.carriere@linaro.org,
	sumit.semwal@linaro.org, christian.koenig@amd.com,
	linux-media@vger.kernel.org
References: <20220812143055.12938-1-olivier.masse@nxp.com>
 <CAFA6WYM89+SrW2Br-fnFke4djt4GgGHXn7JS3=rxvAa7dAAY7w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFA6WYM89+SrW2Br-fnFke4djt4GgGHXn7JS3=rxvAa7dAAY7w@mail.gmail.com>
X-Operating-System: Linux phenom 5.18.0-4-amd64 
Message-ID-Hash: KMJZDWE4FVZ774N5N7IEQ4CQU2SMOFXQ
X-Message-ID-Hash: KMJZDWE4FVZ774N5N7IEQ4CQU2SMOFXQ
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, clement.faure@nxp.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, jens.wiklander@linaro.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, etienne.carriere@linaro.org, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/1] tee: Add tee_shm_register_fd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KMJZDWE4FVZ774N5N7IEQ4CQU2SMOFXQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Aug 19, 2022 at 01:54:31PM +0530, Sumit Garg wrote:
> Hi Olivier,
> 
> On Fri, 12 Aug 2022 at 20:01, Olivier Masse <olivier.masse@nxp.com> wrote:
> >
> > Add a new ioctl called TEE_IOC_SHM_REGISTER_FD to register a
> > shared memory from a dmabuf file descriptor.
> > This new ioctl will allow the Linux Kernel to register a buffer
> > to be used by the Secure Data Path OPTEE OS feature.
> >
> > Please find more information here:
> > https://static.linaro.org/connect/san19/presentations/san19-107.pdf
> >
> > Patch tested on Hikey 6220.
> >
> 
> AFAIU, for the OP-TEE SDP feature to work you need to have a DMA-BUF
> heap driver for allocating secure buffers through exposed chardev:
> "/dev/dma_heap/sdp". Have you tested it with some out-of-tree driver
> as I can't find it upstream? Also, do you plan to push that upstream
> as well?
> 
> BTW, please add a changelog while sending newer patch-set versions.

Also after the huge discussion last year dma-buf are agreed to be under
the "you need an open source userspace for any new uapi using them" rule
that all gpu drivers are under.

Does this exist here?
-Daniel

> 
> -Sumit
> 
> > Etienne Carriere (1):
> >   tee: new ioctl to a register tee_shm from a dmabuf file descriptor
> >
> >  drivers/tee/tee_core.c   | 38 +++++++++++++++
> >  drivers/tee/tee_shm.c    | 99 +++++++++++++++++++++++++++++++++++++++-
> >  include/linux/tee_drv.h  | 11 +++++
> >  include/uapi/linux/tee.h | 29 ++++++++++++
> >  4 files changed, 175 insertions(+), 2 deletions(-)
> >
> > --
> > 2.25.0
> >

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
