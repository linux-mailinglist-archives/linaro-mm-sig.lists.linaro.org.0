Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F923C3340
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 10 Jul 2021 08:37:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 97ADB66986
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 10 Jul 2021 06:37:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1179266926; Sat, 10 Jul 2021 06:37:13 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC740610C6;
	Sat, 10 Jul 2021 06:37:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DA87860E25
 for <linaro-mm-sig@lists.linaro.org>; Sat, 10 Jul 2021 06:37:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C6F4A610C6; Sat, 10 Jul 2021 06:37:08 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id A8DF660E25
 for <linaro-mm-sig@lists.linaro.org>; Sat, 10 Jul 2021 06:37:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1CAC961375;
 Sat, 10 Jul 2021 06:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1625899025;
 bh=gV2Pfj2NN055Q0X+lsNhoIQOi7ituo+LVpl15VX3Qrg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iEVZdslJuwgHl1Srn3duqBR3Jq8/GB/5xleLtRueB22Bu6QKo8kD1wKLtcP1DUuYb
 beLL3TiJyKW6LS+CMwlzKhA0XEKb/4ZbFUePsoutrpMHHu3qlGbHrpdcKRlphAGHAW
 UCFSE2sxxI4o6shXYxjYeAo7d4BFhuxnJ1nVUubM=
Date: Sat, 10 Jul 2021 08:37:03 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hridya Valsaraju <hridya@google.com>
Message-ID: <YOlADy6gdrUDNltl@kroah.com>
References: <20210710051027.42828-1-hridya@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210710051027.42828-1-hridya@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Delete the DMA-BUF attachment
 sysfs statistics
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, john.stultz@linaro.org, daniel@ffwll.ch,
 surenb@google.com, kernel-team@android.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Jul 09, 2021 at 10:10:24PM -0700, Hridya Valsaraju wrote:
> The DMA-BUF attachment statistics form a subset of the DMA-BUF
> sysfs statistics that recently merged to the drm-misc tree.
> Since there has been a reported a performance regression due to the
> overhead of sysfs directory creation/teardown during
> dma_buf_attach()/dma_buf_detach(), this patch deletes the DMA-BUF
> attachment statistics from sysfs.
> 
> Fixes: bdb8d06dfefd (dmabuf: Add the capability to expose DMA-BUF stats
> in sysfs)
> Signed-off-by: Hridya Valsaraju <hridya@google.com>
> ---

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
