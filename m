Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A153B20A9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jun 2021 20:50:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6411466009
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jun 2021 18:50:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5E0976356E; Wed, 23 Jun 2021 18:50:52 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 888246300B;
	Wed, 23 Jun 2021 18:50:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CCB78603C8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 18:50:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C03B76300B; Wed, 23 Jun 2021 18:50:48 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 by lists.linaro.org (Postfix) with ESMTPS id BA3B4603C8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 18:50:46 +0000 (UTC)
Received: by mail-qk1-f176.google.com with SMTP id bj15so7752186qkb.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 11:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=A9I072mZJre1TS+IQKbZNgSu5AaMK7P2E0lmk7a57z4=;
 b=b5e3Vs0J8hbfUScY+Wtfo2QnoFw5zQRvSxFua4X+zv6sZmqniXxjtckK2oI0DJ0jKp
 +FpDq4XgR5FvYz5KhFDvESo6/vvn5bGvgGZWSgiYdS8/PfbLxpaqI3o9lhVUAZxmPK5T
 nDlzhXlXLqlvJVTPQVPebRcUOY8aDMfSl2n44EWIYFP7pJbCLgzg7CgH7naHE97q6TC2
 fZXUfMee0Dfy9rvfoVtazaR6R+Q7ESYAYIdPD2TcTnMWbmqWi3fqt48BxyEAqBINSR6Y
 /GKjFQQmTzpnkbtvp/1Ez+q16SM92SVKit9WzRj/wJHNz3K/lD3bYob3W0EWe1zfdvXM
 mlxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=A9I072mZJre1TS+IQKbZNgSu5AaMK7P2E0lmk7a57z4=;
 b=g9TvqdS1RSwSKs1isAovJPwbLUa+VEMVqXpwFP43VeKXd4GOTZwJ3ZImRhLEH9K7kf
 U0hIFu0daEC3NYVEOD8iEgysP/bOmGBAS9Jdgty4K7YfHvk/xEFCk74zd0HzYZNxk3rN
 zV9EE6T5KxTjloqSgXNWr6crO1PYH7o7C8v063uZ4wn0cMk8LxCvQooaZXAdquopaPAH
 qxprngNj37wjAQ1r+pmDghJI7rfc8S7YICGG2qbuKH3AAL5fJkrs28Uyo/m7BszbRjBt
 RBsKddfI/3MhgaQ3+dJvjol2+BjvK70QKVxEfgE4GaoQs/SIExOjaxRys1yeh4RUWjH5
 5yzg==
X-Gm-Message-State: AOAM533lMJqfL1qMX6/zinJplR235matSnBO14Kw4f+byMPls5HdSx52
 019oSsroCbNg/HAeeBEJZh2ayw==
X-Google-Smtp-Source: ABdhPJy26aLIQNDGYzv9yUWJkE1S7Ng46xlnu9FBhglctMci0BMRl57bB82kjnJJ4TuniXpuKS76ig==
X-Received: by 2002:a37:5cc6:: with SMTP id q189mr1519218qkb.305.1624474246361; 
 Wed, 23 Jun 2021 11:50:46 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [47.55.113.94])
 by smtp.gmail.com with ESMTPSA id y18sm503840qtx.6.2021.06.23.11.50.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jun 2021 11:50:45 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1lw7xV-00Blq0-8k; Wed, 23 Jun 2021 15:50:45 -0300
Date: Wed, 23 Jun 2021 15:50:45 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Oded Gabbay <oded.gabbay@gmail.com>
Message-ID: <20210623185045.GY1096940@ziepe.ca>
References: <20210622120142.GL1096940@ziepe.ca>
 <d497b0a2-897e-adff-295c-cf0f4ff93cb4@amd.com>
 <20210622152343.GO1096940@ziepe.ca>
 <3fabe8b7-7174-bf49-5ffe-26db30968a27@amd.com>
 <20210622154027.GS1096940@ziepe.ca>
 <09df4a03-d99c-3949-05b2-8b49c71a109e@amd.com>
 <20210622160538.GT1096940@ziepe.ca>
 <d600a638-9e55-6249-b574-0986cd5cea1e@gmail.com>
 <20210623182435.GX1096940@ziepe.ca>
 <CAFCwf111O0_YB_tixzEUmaKpGAHMNvMaOes2AfMD4x68Am4Yyg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFCwf111O0_YB_tixzEUmaKpGAHMNvMaOes2AfMD4x68Am4Yyg@mail.gmail.com>
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
Cc: linux-rdma <linux-rdma@vger.kernel.org>, sleybo@amazon.com,
 Leon Romanovsky <leonro@nvidia.com>, Gal Pressman <galpress@amazon.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Tomer Tayar <ttayar@habana.ai>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Greg KH <gregkh@linuxfoundation.org>, Alex Deucher <alexander.deucher@amd.com>,
 Christoph Hellwig <hch@lst.de>, Oded Gabbay <ogabbay@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Jun 23, 2021 at 09:43:04PM +0300, Oded Gabbay wrote:

> Can you please explain why it is so important to (allow) access them
> through the CPU ?

It is not so much important, as it reflects significant design choices
that are already tightly baked into alot of our stacks. 

A SGL is CPU accessible by design - that is baked into this thing and
places all over the place assume it. Even in RDMA we have
RXE/SWI/HFI1/qib that might want to use the CPU side (grep for sg_page
to see)

So, the thing at the top of the stack - in this case the gaudi driver
- simply can't assume what the rest of the stack is going to do and
omit the CPU side. It breaks everything.

Logan's patch series is the most fully developed way out of this
predicament so far.

> The whole purpose is that the other device accesses my device,
> bypassing the CPU.

Sure, but you don't know that will happen, or if it is even possible
in any given system configuration. The purpose is to allow for that
optimization when possible, not exclude CPU based approaches.

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
