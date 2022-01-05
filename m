Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F15485589
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 16:13:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DAD93ED6A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 15:13:23 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 270C73EBD0
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Jan 2022 15:13:12 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9043161771;
	Wed,  5 Jan 2022 15:13:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56238C36AE3;
	Wed,  5 Jan 2022 15:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1641395591;
	bh=csHd2/XILH40OtDlIaymp0IPflgaFvIcWeXacWTGf88=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qIm66gBBLhBxMefhANoTb1PxtN7iaJ8FKqlY0bi88E2irezQd9yT6f26Xth+cC8dp
	 Lej17FBhU8KKBDCE+PQdCdVnQQW+1aJS5wOR06l76gXG3b7x7MdxEtgswElM7eZXuB
	 pQ8ee1pUlmh3Wf65OXlQyoXfIXAk1noEqLrfxEa0=
Date: Wed, 5 Jan 2022 16:13:08 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hridya Valsaraju <hridya@google.com>
Message-ID: <YdW1hPRvKYjfORvp@kroah.com>
References: <20220104235148.21320-1-hridya@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220104235148.21320-1-hridya@google.com>
Message-ID-Hash: 2QAGHNZT3SB3RMEO5JBATQ33W3E74OQP
X-Message-ID-Hash: 2QAGHNZT3SB3RMEO5JBATQ33W3E74OQP
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, john.stultz@linaro.org, surenb@google.com, kaleshsingh@google.com, tjmercier@google.com, keescook@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Move sysfs work out of DMA-BUF export/release path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2QAGHNZT3SB3RMEO5JBATQ33W3E74OQP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jan 04, 2022 at 03:51:48PM -0800, Hridya Valsaraju wrote:
> Recently, we noticed an issue where a process went into direct reclaim
> while holding the kernfs rw semaphore for sysfs in write(exclusive)
> mode. This caused processes who were doing DMA-BUF exports and releases
> to go into uninterruptible sleep since they needed to acquire the same
> semaphore for the DMA-BUF sysfs entry creation/deletion. In order to avoid
> blocking DMA-BUF export/release for an indeterminate amount of time
> while another process is holding the sysfs rw semaphore in exclusive
> mode, this patch moves the per-buffer sysfs file creation/deleteion to
> a kthread.
> 
> Fixes: bdb8d06dfefd ("dmabuf: Add the capability to expose DMA-BUF stats in sysfs")
> Signed-off-by: Hridya Valsaraju <hridya@google.com>
> ---
>  drivers/dma-buf/dma-buf-sysfs-stats.c | 343 ++++++++++++++++++++++++--
>  include/linux/dma-buf.h               |  46 ++++
>  2 files changed, 366 insertions(+), 23 deletions(-)

Crazy, but if this works in your testing, it looks ok to me.  Nice work.

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
