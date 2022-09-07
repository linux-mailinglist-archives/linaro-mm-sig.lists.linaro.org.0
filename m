Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A59FA5B039F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Sep 2022 14:07:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D853348A19
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Sep 2022 12:07:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 737703F51F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Sep 2022 12:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=FjhohLdrRh9xpRQPVS0aHusJU1Ni6J6xZeu0FQRmyX4=; b=asnYOPXbmCEhbqBDW7KarVLBU/
	PTNtLB+5pIHAXlKZNUVzxCeGMbpIzVscPJhEG5iHxpFKdYjIPaGIiaSX6IgbXZyQZ27R/BmJ9pol7
	+qmtmai0Wj5Q8ZzO2SoE2+oYYwmL9a2O1eQG2nSgz9rL/AgzMr1j8iC1988Z8+QamWo8OJ6FWGxGC
	MqXD6o1no5UOmjGdokf1cGJ1UjKwddlSpGENRL/WRBhVLrVqpUp0GC0klpRisLuJAWsF5F2etfCZw
	T2vwEOj1xffqPbx59GcybwkSZvjTCaV2akgYOLQBS08lwLmjrP4bGq7X/EtvqDDOiGmc/gVy1JdMD
	AicOLcaQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVtpp-005xb9-W5; Wed, 07 Sep 2022 12:07:13 +0000
Date: Wed, 7 Sep 2022 05:07:13 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Oded Gabbay <ogabbay@kernel.org>
Message-ID: <YxiJcQ72ogLBpY25@infradead.org>
References: <0-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
 <4-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
 <YxcYGzPv022G2vLm@infradead.org>
 <b6b5d236-c089-7428-4cc9-a08fe4f6b4a3@amd.com>
 <YxczjNIloP7TWcf2@nvidia.com>
 <CAFCwf115rwTWzgPXcpog4u5NAvH4JO+Qis_fcx0mRrNR5AQcaQ@mail.gmail.com>
 <YxeKb9qxFXodg832@nvidia.com>
 <CAFCwf10YeG0vUL4dG0SJawikYb-FVSrxAt-r3iFA61rc330z=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFCwf10YeG0vUL4dG0SJawikYb-FVSrxAt-r3iFA61rc330z=Q@mail.gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
Message-ID-Hash: EMY255JU5VAWUGXWRDFKZKB3WLDPF66I
X-Message-ID-Hash: EMY255JU5VAWUGXWRDFKZKB3WLDPF66I
X-MailFrom: BATV+a7179cf3af9bc3683476+6954+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jason Gunthorpe <jgg@nvidia.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Christoph Hellwig <hch@infradead.org>, Alex Williamson <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, Maling list - DRI developers <dri-devel@lists.freedesktop.org>, KVM list <kvm@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Leon Romanovsky <leon@kernel.org>, linux-rdma <linux-rdma@vger.kernel.org>, Maor Gottlieb <maorg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EMY255JU5VAWUGXWRDFKZKB3WLDPF66I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Sep 06, 2022 at 10:44:45PM +0300, Oded Gabbay wrote:
> Regardless, it seems we can remove it from the calls to
> dma_map_resource. I went over the kernel code and it seems only habana
> and amdgpu (and amdkfd) are passing this property to dma_map_resource.
> All other callers just pass 0.

What really need to happen is a revert of that entire commit, given that
dma_map_resource must not be used for PCIe P2P transactions as explained
in my previous mail.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
