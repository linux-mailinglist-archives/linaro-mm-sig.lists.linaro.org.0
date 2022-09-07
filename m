Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 217BE5B08A4
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Sep 2022 17:32:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5095043F1B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Sep 2022 15:32:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 19FE23F57F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Sep 2022 15:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=aoNCEd3G2h5oJitKSRVecj6qINXspk8RoWUpFU3QgrE=; b=tCCcEUDdBTy1gWyfW9YlNG/Jia
	azpaKa4Vhsw29BawZm5vkl0bhNs2r5JPa4G6HvoB86C50nitowwurSg3bzRjVx2WZhWwoAhiQAmVn
	/oT7MA7/SWWCc8f8+o9D4Mfq2IBQOQ4PPxdBNHKqMN3P/sWe7Ttp3EszfE6OzWoqHe3YEPWs0eyO9
	jpCx9TEhmKvhFD0ZcYsfFTYekZBR1omjitNqvA2cy1f4syPWthiukLGuozipk5tQrpDhLzu4ihLth
	QSPNF/ojETiUJOgURCWfEFBPHav5pDhp9feHgfz6yk5RxCHpVde8WMEVKomsY+Jgne51OLrnG9Tpe
	HeWIjtag==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVx2N-007MrO-F7; Wed, 07 Sep 2022 15:32:23 +0000
Date: Wed, 7 Sep 2022 08:32:23 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <Yxi5h09JAzIo4Kh8@infradead.org>
References: <0-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
 <4-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
 <YxcYGzPv022G2vLm@infradead.org>
 <b6b5d236-c089-7428-4cc9-a08fe4f6b4a3@amd.com>
 <YxczjNIloP7TWcf2@nvidia.com>
 <YxiJJYtWgh1l0wxg@infradead.org>
 <YxiPh4u/92chN02C@nvidia.com>
 <Yxiq5sjf/qA7xS8A@infradead.org>
 <Yxi3cFfs0SA4XWJw@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yxi3cFfs0SA4XWJw@nvidia.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
Message-ID-Hash: 776L3QEPKXBIZQM2GSNVISS6ZKAVD4J5
X-Message-ID-Hash: 776L3QEPKXBIZQM2GSNVISS6ZKAVD4J5
X-MailFrom: BATV+a7179cf3af9bc3683476+6954+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Alex Williamson <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, dri-devel@lists.freedesktop.org, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org, Maor Gottlieb <maorg@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>, Dan Williams <dan.j.williams@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/776L3QEPKXBIZQM2GSNVISS6ZKAVD4J5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Sep 07, 2022 at 12:23:28PM -0300, Jason Gunthorpe wrote:
>  2) DMABUF abuses dma_map_resource() for P2P and thus doesn't work in
>     certain special cases.

Not just certain special cases, but one of the main use cases.
Basically P2P can happen in two ways:

 a) through a PCIe switch, or
 b) through connected root ports

The open code version here only supports a), only supports it when there
is no offset between the 'phyiscal' address of the BAR seen PCIe
endpoint and the Linux way.  x86 usually (always?) doesn't have an
offset there, but other architectures often do.

Last but not least I don't really see how the code would even work
when an IOMMU is used, as dma_map_resource will return an IOVA that
is only understood by the IOMMU itself, and not the other endpoint.

How was this code even tested?
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
