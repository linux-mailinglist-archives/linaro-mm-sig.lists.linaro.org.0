Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F935F445A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Oct 2022 15:39:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E17B3F0CD
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Oct 2022 13:39:01 +0000 (UTC)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by lists.linaro.org (Postfix) with ESMTPS id E487C3F04C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Aug 2022 14:01:49 +0000 (UTC)
Received: by mail-yb1-f182.google.com with SMTP id g5so1588581ybg.11
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Aug 2022 07:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=+SFgv9h1iU3RaW1EzL8Sx1GBNpviMfrfYSjOlKJNalY=;
        b=GexBwlzNcUg/qU5qiIjT+qVLabhItlMZab8kXhbIgYg/s9YqOoVrhlLXym1XIzz6Px
         Rk/RcoIczEJHjJ97VO0fTIPsq3HYyPVaW/JUIMNQ3cN5X/KmTDLGFCtxREsLBL1kWy5k
         GUARJmL+g5kLqA7tIYXDo9XtXSX4f+3BJX1JbJdmAck4z/iUxKOTWqtTOr5UiBmmNL0s
         NVZsUn5yWc2PEnvIy9Yqpg2lQDkclvsn72rdBGNwa7cy9OVzMz5JtbAwcV386nrB9Ufe
         QkAw64GzOwXZeuGlRILLthaFnMXQ1T8n8RRiuSz8NZzbZR/OM0XraZCMKwZT/Yzcz/01
         k7gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=+SFgv9h1iU3RaW1EzL8Sx1GBNpviMfrfYSjOlKJNalY=;
        b=3OJc9l57rHvRS6lGTEXFvt2pdVNXdo/+k02TAZK9ITvgoMr0jnkDP+gSz7NwbfTTqY
         c2uWhPkLHc0ZwFSefUGou1Uv9pz8DCChoAa4iQ7lnKjTUbb7SB1V5ibKzw6fAFek2hr9
         oJ/fSRibuTIOJWS51VBGKv5Jw/SARS83xMdG4ZfEyFBIRDXoBJ4C44TXiBQ0L9ZvQohV
         8HQfNM2wuCbSzDhX65eGbLRtCQgc7QlMNs6OgpmkDaiN9Lv03Zzt3Boh3yobHMvVvHBV
         /8pIWoe6hL2j1g5MbJ42DP5+PVkB/S02/GhAcLkihTwF/O0e3xg1nrDLokaI9GDYmF6i
         +dnQ==
X-Gm-Message-State: ACgBeo2ZTU2FtAZEMWyI2JHkJQkYH/jLXrXEwzrqKWae7aF3shS/BrZq
	iR8ZG0gBT0VpT3ZB8QZb3M2T2opKSp2zJ5tGDqZqEiBg
X-Google-Smtp-Source: AA6agR6wQfVo93oLxu/F6/VJXBQ5LP7rYTWu4LmoAHDNLeE2RTl1HyOisioe9Yvs8j7bCHes1v8fGpO512CYJNhfzF0=
X-Received: by 2002:a05:6902:124b:b0:67b:5d4e:c98d with SMTP id
 t11-20020a056902124b00b0067b5d4ec98dmr3734245ybu.475.1660312909389; Fri, 12
 Aug 2022 07:01:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220811135637.6332-1-olivier.masse@nxp.com>
In-Reply-To: <20220811135637.6332-1-olivier.masse@nxp.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Fri, 12 Aug 2022 19:31:38 +0530
Message-ID: <CAFA6WYN6TdTR+O7UXe3D=5-5gRt5h7VhFYpGtyGGge-k3e_ShA@mail.gmail.com>
To: Olivier Masse <olivier.masse@nxp.com>
X-MailFrom: sumit.garg@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VFE77T37U4SM54QGJNFBEPN7U6NPIQQY
X-Message-ID-Hash: VFE77T37U4SM54QGJNFBEPN7U6NPIQQY
X-Mailman-Approved-At: Tue, 04 Oct 2022 13:38:03 +0000
CC: jens.wiklander@linaro.org, sumit.semwal@linaro.org, christian.koenig@amd.com, op-tee@lists.trustedfirmware.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, clement.faure@nxp.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/1] tee: Add tee_shm_register_fd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VFE77T37U4SM54QGJNFBEPN7U6NPIQQY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Olivier,

On Thu, 11 Aug 2022 at 19:26, Olivier Masse <olivier.masse@nxp.com> wrote:
>
> Add a new ioctl called TEE_IOC_SHM_REGISTER_FD to register a
> shared memory from a dmabuf file descriptor.
>

IIRC, here you are trying to fill the gap for OP-TEE SDP use-case. But
the use-case should be described here, its current status with OP-TEE
upstream and which platform you have tested this interface with?

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
