Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBF93AEB06
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jun 2021 16:18:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BC49610D0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jun 2021 14:18:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2C38B66788; Mon, 21 Jun 2021 14:18:04 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85EB0610D0;
	Mon, 21 Jun 2021 14:18:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9CCAF60D42
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 14:18:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9A423610D0; Mon, 21 Jun 2021 14:18:00 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 by lists.linaro.org (Postfix) with ESMTPS id 92DED60D42
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 14:17:58 +0000 (UTC)
Received: by mail-qt1-f179.google.com with SMTP id x21so4320240qtq.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 07:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=f5JgZDeoCfa2i8b2+lJPyccTDGeyU3UeQJEKpYqzmGw=;
 b=iW/qNwvjUN60qOdsm7Tc/2UgFmrbPL7i3tcOoqV4K4nAE5p++VtMzaD7tQUmZY5aS/
 08eVJcFISGR01jyo6CIqviQAi8/x8nwo8NCY7YrYTVakAPQRX4ny9mcq8xMudYSJADOQ
 h+yKiUXxtEnGjWiqtTAEO+fkAVZBXqOEiFWJnEcxmy2hkR14/qsVhyet4cLlhORAQjbS
 5b3b0Ub6MVs3bJel4J0zd7N6pAGiflA4WAmb2m/748JAvI/uviYVvmmbpTnenWCmngzg
 /0zm6jCnZ052zu8m26gQyrxVJtmvIX29vAGvfAg8myajT6QOMOcUsreOn1mLyatblaTF
 2yQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=f5JgZDeoCfa2i8b2+lJPyccTDGeyU3UeQJEKpYqzmGw=;
 b=d+OAUScacQEU/ERq13/0eDvh6gYnyXolm74UvNqLVjqtRhySN8mW/jZaJZ44x+8hmc
 DLkW0ZpRbnqUG6Ut7nEDDDvx3PoRn9SyrTytJ79bNjAurZ5sY8LFyDLcuaDilXYoeotV
 e2QnKd/yBS+Q+/PARyMTI6BoMXTsPMtTX/ELRChJo6syeoDP/uBdcJi/76ZqBljG5Qox
 3fvnJYU+1FW5nYxUSTWYdl7sWgjYfsAtyKXb27j24ihPlvPHrJGEHykwRAfNkE5ZDgzJ
 bhfAPeo0nA+FLLbXlp0+up2yAE9jJ+cMOlTA0WJUTvtnFKbvZD3jr0OW5woFmiQF03Yy
 EB/Q==
X-Gm-Message-State: AOAM533S6YGe/bbUlwrFEvLl/S0zQRWy2I/NwBeUYPt5VboxJ19ItqI8
 5YVcx0HzBv6e2u0daA1EpCXgEw==
X-Google-Smtp-Source: ABdhPJwxuJR5FNaFOeQuuTYdtMofIT5+18r8iXh+MV7YhfMRJf27n/x+7ThZDE3kkaBxOtliYq23Aw==
X-Received: by 2002:ac8:44ca:: with SMTP id b10mr24067709qto.224.1624285077981; 
 Mon, 21 Jun 2021 07:17:57 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [47.55.113.94])
 by smtp.gmail.com with ESMTPSA id y15sm10797034qto.90.2021.06.21.07.17.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 07:17:57 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1lvKkO-009WjS-US; Mon, 21 Jun 2021 11:17:56 -0300
Date: Mon, 21 Jun 2021 11:17:56 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20210621141756.GF1096940@ziepe.ca>
References: <20210618123615.11456-1-ogabbay@kernel.org>
 <CAKMK7uFOfoxbD2Z5mb-qHFnUe5rObGKQ6Ygh--HSH9M=9bziGg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uFOfoxbD2Z5mb-qHFnUe5rObGKQ6Ygh--HSH9M=9bziGg@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 1/2] habanalabs: define uAPI to
 export FD for DMA-BUF
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
Cc: sleybo@amazon.com, Gal Pressman <galpress@amazon.com>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 linux-rdma <linux-rdma@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Oded Gabbay <ogabbay@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Tomer Tayar <ttayar@habana.ai>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>, Christoph Hellwig <hch@lst.de>,
 Leon Romanovsky <leonro@nvidia.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Jun 21, 2021 at 02:28:48PM +0200, Daniel Vetter wrote:

> Mission acomplished, we've gone full circle, and the totally-not-a-gpu
> driver is now trying to use gpu infrastructure. And seems to have
> gained vram meanwhile too. Next up is going to be synchronization
> using dma_fence so you can pass buffers back&forth without stalls
> among drivers.

Well, we can't even see the other side of this so who knows

This is a new uAPI, where is the userspace? In RDMA at least I require
to see the new userspace and test suite before changes to
include/uapi/rdma can go ahead.

> Doug/Jason from infiniband: Should we add linux-rdma to the dma-buf
> wildcard match so that you can catch these next time around too? At
> least when people use scripts/get_maintainers.pl correctly. All the
> other subsystems using dma-buf are on there already (dri-devel,
> linux-media and linaro-mm-sig for android/arm embedded stuff).

My bigger concern is this doesn't seem to be implementing PCI P2P DMA
correctly. This is following the same hacky NULL page approach that
Christoph Hellwig already NAK'd for AMD.

This should not be allowed to proliferate.

I would be much happier seeing this be done using the approach of
Logan's series here:

https://lore.kernel.org/linux-block/20210513223203.5542-1-logang@deltatee.com/

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
