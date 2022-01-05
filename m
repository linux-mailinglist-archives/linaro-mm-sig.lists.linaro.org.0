Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4BD485893
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 19:38:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 849593ED1A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 18:38:57 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by lists.linaro.org (Postfix) with ESMTPS id 5023D3EBD0
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Jan 2022 18:38:38 +0000 (UTC)
Received: by mail-yb1-f169.google.com with SMTP id e202so504260ybf.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Jan 2022 10:38:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KDSSdl8IkbacxfFwsObHrS3PgJqOAa/GBT59WYZWGOY=;
        b=hUkWbHbz2hswycTdHLnrAm/MuO98IXDtZgYocw1/GhNAggTm949CZWE6RzTXjapTkW
         VS/DmW3iWzF0xKhT605D1XzwhMahz1ldavEJ2ZiPOQQzZEHJm7O71WALq9e/xkPsHQA4
         ENSyX5bKdJpqS3MOLxFVwu64vbML9heMh50dW8sH9YnMBKvfUfcsOO8Wz+cVwujxsZ/V
         Qek2oUB3vP8MzA5MMbz7HhUs52Zm1EXLKmd3xp8VauwoxCaEEjyLisUAc9Fet3GlfJT+
         x2L3Vjm7P/YbuIV7Wv7W7JxbyKct7n0LHl+DvlGmfCdNG+6DoeOyNtA41DfLDsswyNoH
         onrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KDSSdl8IkbacxfFwsObHrS3PgJqOAa/GBT59WYZWGOY=;
        b=S9NrhjrSE8hJsPErBrWXk7LthBYzxotS7DXkeXWvrfS7A4SjZoH8b8DKzeU/btOncM
         mFvapCOdVVyhZT2BBtFE57bZihHVDUj5le3x9Z4UtqR4un3iGm+A5KGq0myTfCM5Wf4x
         Xn69bvcqSFqgs892IuSPEyOcnnSKfWzqMs4hcT42tsWTiYzCwlm6XI7if6MSw6o7qaV8
         MHNewxpOp+BEu/iBDvHUp3ppaUrB31lm2Igu/S/55PdvzN/OAqqkw7a6Uv/iHlWtLTge
         HU60DCc6AkVKDReG/Vgxm7oBYac1wqd5PY2yIfZvmkcJY8mwlCj0YDrg6RH2FxRN9kAL
         Nu2A==
X-Gm-Message-State: AOAM533Wd2GF51YCwSZQTRMdbfe0ulhq5vbUeMIjn6Wkhe0s9udpwOX6
	KDDach4InDlK9iYEL9i3fPZ7dFUpFWg29FHiTyDPAQ==
X-Google-Smtp-Source: ABdhPJxb7sBxKDM43T6iP1tu6DArcpsKXXzzig25USibmzC/QeMkWpl4LwfoJZyuV92oHcxUzXWi2NF5BZOIohtw5jg=
X-Received: by 2002:a25:ae13:: with SMTP id a19mr52540860ybj.327.1641407917644;
 Wed, 05 Jan 2022 10:38:37 -0800 (PST)
MIME-Version: 1.0
References: <20220104235148.21320-1-hridya@google.com> <YdW1hPRvKYjfORvp@kroah.com>
In-Reply-To: <YdW1hPRvKYjfORvp@kroah.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Wed, 5 Jan 2022 10:38:02 -0800
Message-ID: <CA+wgaPPSO1f=c+jYWqisNy_e8hxuxcr0VtpJcWe+FnKGyC2ZKg@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID-Hash: VYYHNY4AXRBWRL4W5UCIPCPS3M4QO5ZL
X-Message-ID-Hash: VYYHNY4AXRBWRL4W5UCIPCPS3M4QO5ZL
X-MailFrom: hridya@google.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, john.stultz@linaro.org, surenb@google.com, kaleshsingh@google.com, tjmercier@google.com, keescook@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Move sysfs work out of DMA-BUF export/release path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VYYHNY4AXRBWRL4W5UCIPCPS3M4QO5ZL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jan 5, 2022 at 7:13 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Tue, Jan 04, 2022 at 03:51:48PM -0800, Hridya Valsaraju wrote:
> > Recently, we noticed an issue where a process went into direct reclaim
> > while holding the kernfs rw semaphore for sysfs in write(exclusive)
> > mode. This caused processes who were doing DMA-BUF exports and releases
> > to go into uninterruptible sleep since they needed to acquire the same
> > semaphore for the DMA-BUF sysfs entry creation/deletion. In order to avoid
> > blocking DMA-BUF export/release for an indeterminate amount of time
> > while another process is holding the sysfs rw semaphore in exclusive
> > mode, this patch moves the per-buffer sysfs file creation/deleteion to
> > a kthread.
> >
> > Fixes: bdb8d06dfefd ("dmabuf: Add the capability to expose DMA-BUF stats in sysfs")
> > Signed-off-by: Hridya Valsaraju <hridya@google.com>
> > ---
> >  drivers/dma-buf/dma-buf-sysfs-stats.c | 343 ++++++++++++++++++++++++--
> >  include/linux/dma-buf.h               |  46 ++++
> >  2 files changed, 366 insertions(+), 23 deletions(-)
>
> Crazy, but if this works in your testing, it looks ok to me.  Nice work.
>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Thank you for the review Greg :)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
