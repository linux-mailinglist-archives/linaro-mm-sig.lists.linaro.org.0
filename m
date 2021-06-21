Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0213AEBBB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jun 2021 16:49:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0182C66932
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jun 2021 14:49:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7553966756; Mon, 21 Jun 2021 14:49:56 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD25661009;
	Mon, 21 Jun 2021 14:49:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5EC3D60AA0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 14:49:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5481661009; Mon, 21 Jun 2021 14:49:52 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 by lists.linaro.org (Postfix) with ESMTPS id 4EC5660AA0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 14:49:50 +0000 (UTC)
Received: by mail-qt1-f180.google.com with SMTP id r20so13606127qtp.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 07:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7EhCVDJi9/mtNith6sHIuVtzdsDVwMIUM7u21aSrhMw=;
 b=pMj9icezCyVPhAoUcyIC4hXg8iF9vNR6ki/LwTLTUx9T50dBy/aY+JIQc2BM9Hz1/z
 JkL9Jm7F3sTwTj1cBu4VqQ0lfWp+QeZb+UHm3PoPx1trXAkMT1LHeTAZ6a272Hh7Cypf
 IolYhYiuvw6yY/3OnYlCLxHAyGeUoFVQKeTwptIxn6w6eA5jjABocMAs4na9+zV2VW5T
 rz9L38LXMzbPG5+9/L86DpSMJOUqS31ppQLS8vlTPUn6gfpb9oKUdfcwayMnbRDQquI9
 O2qE291+F/7jfBsLM1X67J41Z4Pn6F3VqTRzoFIhrsTP3dOflNs6XlBQ7VQiN7wGxWNO
 b1bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7EhCVDJi9/mtNith6sHIuVtzdsDVwMIUM7u21aSrhMw=;
 b=Nq7nIEWkg8/CAbuc6yO1MYFgLPXQEkK0c6T2WeSgfpRcPHbKT1o9AT/NVomxhtn6K/
 RUupGbx2RtSPYe697YXVD8U/FYd84HUnV0wK0mLumrJtp0tkg9e2bsx8GwDySyWdVwFf
 FxEWSCshTAVnX3wMC2LBlHAeTezKvix7Go3MFfwJYC20FITwLDLaJm5LiTvPxjABMoQV
 oV4BaIgR3uPPi5wPiqPkg5EVwPuEFEDug5YBp3tZmxWrx9UorW2CovvLjZSXd2cCs1Nw
 kNeGjHmZCYu2SNQKc5VPxJHY0bN1C0s8ir261LBvGyR3Of2lJ0tRRYly5PiVLnrvWLfH
 BrHA==
X-Gm-Message-State: AOAM530i3RL2Xtlnf+RrhCNcf3s/elhG508g7OOxaWVWAGvSDLXkKVfO
 T2PMXuaCnLLvalwMFXrlM6HaTg==
X-Google-Smtp-Source: ABdhPJyQ783oDw7ztSH9iUqFrEniMfq/XeByphnoK7SGzg/3oOO5hx+wfM7vN3NxmC0psXJAIBTnIQ==
X-Received: by 2002:ac8:4d84:: with SMTP id a4mr24377635qtw.319.1624286989919; 
 Mon, 21 Jun 2021 07:49:49 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [47.55.113.94])
 by smtp.gmail.com with ESMTPSA id 186sm4426217qkf.29.2021.06.21.07.49.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 07:49:49 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1lvLFE-009XIx-Pt; Mon, 21 Jun 2021 11:49:48 -0300
Date: Mon, 21 Jun 2021 11:49:48 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Greg KH <gregkh@linuxfoundation.org>, Oded Gabbay <ogabbay@kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Doug Ledford <dledford@redhat.com>,
 "airlied@gmail.com" <airlied@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Gal Pressman <galpress@amazon.com>, sleybo@amazon.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Tomer Tayar <ttayar@habana.ai>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>, Christoph Hellwig <hch@lst.de>
Message-ID: <20210621144948.GG1096940@ziepe.ca>
References: <20210618123615.11456-1-ogabbay@kernel.org>
 <CAKMK7uFOfoxbD2Z5mb-qHFnUe5rObGKQ6Ygh--HSH9M=9bziGg@mail.gmail.com>
 <YNCN0ulL6DQiRJaB@kroah.com> <YNCgM1svqKGUhcFY@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YNCgM1svqKGUhcFY@phenom.ffwll.local>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Jun 21, 2021 at 04:20:35PM +0200, Daniel Vetter wrote:

> Also unless we're actually doing this properly there's zero incentive for
> me to review the kernel code and check whether it follows the rules
> correctly, so you have excellent chances that you just break the rules.
> And dma_buf/fence are tricky enough that you pretty much guaranteed to
> break the rules if you're not involved in the discussions. Just now we
> have a big one where everyone involved (who's been doing this for 10+
> years all at least) realizes we've fucked up big time.

This is where I come from on dmabuf, it is fiendishly
complicated. Don't use it unless you absoultely have to, are in DRM,
and have people like Daniel helping to make sure you use it right.

It's whole premise and design is compromised by specialty historical
implementation choices on the GPU side.

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
