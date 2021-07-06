Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FFE3BD5A9
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 14:23:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E391966905
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 12:23:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D8A9D61236; Tue,  6 Jul 2021 12:23:53 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 59E0D60B43;
	Tue,  6 Jul 2021 12:23:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 73F3A604F9
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 12:23:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6BAA860B27; Tue,  6 Jul 2021 12:23:48 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id 601716062F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 12:23:46 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id u8so25814170wrq.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Jul 2021 05:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=uNyqHLQRNkYk8ghNPCyy058MytEY7ye/Hosx5rgh6L0=;
 b=I861MRXnVEJLWhlPliO+jitKdknn/PB69GvRAM/Y4b8ranu/45I6eMeXTNi9dKuJ0j
 WYk89i6CPtBnGLN6nluhfnivHJjMYYzeqUVC8YHPJKGLDAkmLUXMmITr5S5TPlVgR6z+
 pWlut4ORszisRKb8vPQRzvBskW4VntzJL5DP8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=uNyqHLQRNkYk8ghNPCyy058MytEY7ye/Hosx5rgh6L0=;
 b=IBxyu64h4awYSWAUEZeJpTn1KMf5/eWVlnjU99h6XHV+pL1nVFVYEaTJanePN2Y7jz
 /f2zqrp3jZXdaGgoFxNt7fdPP4GUr0FeAfE9qK2cB0wwjo11D16p4UAhb1aCGT1azqxT
 0aGjlXBIA1mtNNy20qR3jJYwAwWJ5YomWtC//IV+pW+HEj+aVrOu/9GLYmZIIaGwzeE2
 kjlF9VHxkV6ezX19QfG0xHOdT+nROWSoDdw/9np4XukFh0T6bYeOCGmOvJeYC2elqv2g
 H+xP+M4fBH7NXqyJhVqIkHJgzzkLrKAEIughgrL/zm4lDub8CW89xWW3j5aEFQJoYzpn
 QtLA==
X-Gm-Message-State: AOAM5311VrVSV2dwSOJvZQLMykqkiG5VzcFUiLLJHFab7eMT92u3r4Ul
 6ZP2f99VW6evuUUYX/DQ9S3umw==
X-Google-Smtp-Source: ABdhPJxolizhwmybAQ3VsffOuvUoyS5FTxRrVw3O2VuBLsJFS1lJdSAYSr7mbyMR8j36zn3HCunCMA==
X-Received: by 2002:adf:a41e:: with SMTP id d30mr3249053wra.10.1625574225475; 
 Tue, 06 Jul 2021 05:23:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 31sm18348673wrs.79.2021.07.06.05.23.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 05:23:44 -0700 (PDT)
Date: Tue, 6 Jul 2021 14:23:42 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <YORLTmyoXDtoM9Ta@phenom.ffwll.local>
Mail-Followup-To: Christoph Hellwig <hch@lst.de>,
 Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org, sumit.semwal@linaro.org,
 christian.koenig@amd.com, galpress@amazon.com, sleybo@amazon.com,
 dri-devel@lists.freedesktop.org, jgg@ziepe.ca,
 linux-rdma@vger.kernel.org, linux-media@vger.kernel.org,
 dledford@redhat.com, airlied@gmail.com, alexander.deucher@amd.com,
 leonro@nvidia.com, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20210705130314.11519-1-ogabbay@kernel.org>
 <YOQXBWpo3whVjOyh@phenom.ffwll.local>
 <20210706122110.GA18273@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210706122110.GA18273@lst.de>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v4 0/2] Add p2p via dmabuf to habanalabs
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
Cc: sleybo@amazon.com, linux-rdma@vger.kernel.org, gregkh@linuxfoundation.org,
 Oded Gabbay <ogabbay@kernel.org>, galpress@amazon.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, jgg@ziepe.ca, dledford@redhat.com,
 amd-gfx@lists.freedesktop.org, alexander.deucher@amd.com,
 christian.koenig@amd.com, leonro@nvidia.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Jul 06, 2021 at 02:21:10PM +0200, Christoph Hellwig wrote:
> On Tue, Jul 06, 2021 at 10:40:37AM +0200, Daniel Vetter wrote:
> > > Greg, I hope this will be good enough for you to merge this code.
> > 
> > So we're officially going to use dri-devel for technical details review
> > and then Greg for merging so we don't have to deal with other merge
> > criteria dri-devel folks have?
> > 
> > I don't expect anything less by now, but it does make the original claim
> > that drivers/misc will not step all over accelerators folks a complete
> > farce under the totally-not-a-gpu banner.
> > 
> > This essentially means that for any other accelerator stack that doesn't
> > fit the dri-devel merge criteria, even if it's acting like a gpu and uses
> > other gpu driver stuff, you can just send it to Greg and it's good to go.
> > 
> > There's quite a lot of these floating around actually (and many do have
> > semi-open runtimes, like habanalabs have now too, just not open enough to
> > be actually useful). It's going to be absolutely lovely having to explain
> > to these companies in background chats why habanalabs gets away with their
> > stack and they don't.
> 
> FYI, I fully agree with Daniel here.  Habanlabs needs to open up their
> runtime if they want to push any additional feature in the kernel.
> The current situation is not sustainable.

Before anyone replies: The runtime is open, the compiler is still closed.
This has become the new default for accel driver submissions, I think
mostly because all the interesting bits for non-3d accelerators are in the
accel ISA, and no longer in the runtime. So vendors are fairly happy to
throw in the runtime as a freebie.

It's still incomplete, and it's still useless if you want to actually hack
on the driver stack.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
