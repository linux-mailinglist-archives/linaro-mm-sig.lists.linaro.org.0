Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0015212FF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 May 2022 13:00:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C92FE480C5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 May 2022 11:00:45 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 666854806B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 May 2022 11:00:41 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EA22B6159A;
	Tue, 10 May 2022 11:00:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03059C385C6;
	Tue, 10 May 2022 11:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1652180440;
	bh=KGn/TH6jy9oduWBq+vUyZA4hXFzpFADN7M2aHHBomVQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q9ZSbEHxwZJxQeNu7bI2Robwy7il5VzTxxOECL3cPkvfGe0WN0mtjG8zRwMIzCYl7
	 ZSjjbchKlOnplbqU313WHo2QStErWJ5w9+fD1HGuwsty8QL6b/jahAo6Oc4gOtv4Sm
	 0c4ydpG14hkHmQ9WMfvQ2BcFulY993U/4gdpQ1W8=
Date: Tue, 10 May 2022 13:00:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Charan Teja Kalla <quic_charante@quicinc.com>
Message-ID: <YnpF1XP1tH83uBlM@kroah.com>
References: <1652178212-22383-1-git-send-email-quic_charante@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1652178212-22383-1-git-send-email-quic_charante@quicinc.com>
Message-ID-Hash: SUJ2KTBBOWNBL3Y2TDQPAJ2P7JKZ3ZNO
X-Message-ID-Hash: SUJ2KTBBOWNBL3Y2TDQPAJ2P7JKZ3ZNO
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, tjmercier@google.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: ensure unique directory name for dmabuf stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SUJ2KTBBOWNBL3Y2TDQPAJ2P7JKZ3ZNO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, May 10, 2022 at 03:53:32PM +0530, Charan Teja Kalla wrote:
> The dmabuf file uses get_next_ino()(through dma_buf_getfile() ->
> alloc_anon_inode()) to get an inode number and uses the same as a
> directory name under /sys/kernel/dmabuf/buffers/<ino>. This directory is
> used to collect the dmabuf stats and it is created through
> dma_buf_stats_setup(). At current, failure to create this directory
> entry can make the dma_buf_export() to fail.
> 
> Now, as the get_next_ino() can definitely give a repetitive inode no
> causing the directory entry creation to fail with -EEXIST. This is a
> problem on the systems where dmabuf stats functionality is enabled on
> the production builds can make the dma_buf_export(), though the dmabuf
> memory is allocated successfully, to fail just because it couldn't
> create stats entry.

Then maybe we should not fail the creation path of the kobject fails to
be created?  It's just for debugging, it should be fine if the creation
of it isn't there.

> 
> This issue we are able to see on the snapdragon system within 13 days
> where there already exists a directory with inode no "122602" so
> dma_buf_stats_setup() failed with -EEXIST as it is trying to create
> the same directory entry.
> 
> To make the directory entry as unique, append the inode creation time to
> the inode. With this change the stats directory entries will be in the
> format of: /sys/kernel/dmabuf/buffers/<inode no>-<inode creation time in
> secs>.

As you are changing the format here, shouldn't the Documentation/ABI/
entry for this also be changed?

And what's to keep the seconds field from also being the same?

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
