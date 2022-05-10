Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BCA5214DF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 May 2022 14:10:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC25D480BF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 May 2022 12:10:47 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id D49BA3E81F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 May 2022 12:10:42 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 779B76195B;
	Tue, 10 May 2022 12:10:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA2A8C385A6;
	Tue, 10 May 2022 12:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1652184642;
	bh=DpHjuqVa+SSlkOsM/Gej0YHbCu1wZMGTmd4rbhVUBqE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a6PjO9Ow4kq9o7cWrnq2GFU5qa9QpEuWuWHq1GreqkvmbEABkI24Doocn1CkwAc9t
	 bNAOVxVTY/DP5mjRphxpzPQjJenPUkiTIEgYWhRTkAukpn/pTwmJnj/IwEQo+EH7fk
	 0GanbfHet/iJ8P9I6jsZp4rvq9ZRWAykdEAYyX28=
Date: Tue, 10 May 2022 14:10:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YnpWNSdAQzG80keQ@kroah.com>
References: <1652178212-22383-1-git-send-email-quic_charante@quicinc.com>
 <YnpF1XP1tH83uBlM@kroah.com>
 <039e1acc-8688-2e06-1b2a-1acbe813b91e@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <039e1acc-8688-2e06-1b2a-1acbe813b91e@amd.com>
Message-ID-Hash: AI7UU37CUBQR6B7NPKSJR6B3F4ENZTW3
X-Message-ID-Hash: AI7UU37CUBQR6B7NPKSJR6B3F4ENZTW3
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Charan Teja Kalla <quic_charante@quicinc.com>, sumit.semwal@linaro.org, tjmercier@google.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: ensure unique directory name for dmabuf stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AI7UU37CUBQR6B7NPKSJR6B3F4ENZTW3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, May 10, 2022 at 01:35:41PM +0200, Christian K=F6nig wrote:
> Am 10.05.22 um 13:00 schrieb Greg KH:
> > On Tue, May 10, 2022 at 03:53:32PM +0530, Charan Teja Kalla wrote:
> > > The dmabuf file uses get_next_ino()(through dma_buf_getfile() ->
> > > alloc_anon_inode()) to get an inode number and uses the same as a
> > > directory name under /sys/kernel/dmabuf/buffers/<ino>. This directory=
 is
> > > used to collect the dmabuf stats and it is created through
> > > dma_buf_stats_setup(). At current, failure to create this directory
> > > entry can make the dma_buf_export() to fail.
> > >=20
> > > Now, as the get_next_ino() can definitely give a repetitive inode no
> > > causing the directory entry creation to fail with -EEXIST. This is a
> > > problem on the systems where dmabuf stats functionality is enabled on
> > > the production builds can make the dma_buf_export(), though the dmabuf
> > > memory is allocated successfully, to fail just because it couldn't
> > > create stats entry.
> > Then maybe we should not fail the creation path of the kobject fails to
> > be created?  It's just for debugging, it should be fine if the creation
> > of it isn't there.
>=20
> Well if it's just for debugging then it should be under debugfs and not
> sysfs.

I'll note that the original patch series for this described why this was
moved from debugfs to sysfs.

> > > This issue we are able to see on the snapdragon system within 13 days
> > > where there already exists a directory with inode no "122602" so
> > > dma_buf_stats_setup() failed with -EEXIST as it is trying to create
> > > the same directory entry.
> > >=20
> > > To make the directory entry as unique, append the inode creation time=
 to
> > > the inode. With this change the stats directory entries will be in the
> > > format of: /sys/kernel/dmabuf/buffers/<inode no>-<inode creation time=
 in
> > > secs>.
> > As you are changing the format here, shouldn't the Documentation/ABI/
> > entry for this also be changed?
>=20
> As far as I can see that is even an UAPI break, not sure if we can allow
> that.

Why?  Device names change all the time and should never be static.  A
buffer name should just be a unique identifier in that directory, that's
all.  No rules on the formatting of it unless for some reason the name
being the inode number was somehow being used in userspace for that
number?

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
