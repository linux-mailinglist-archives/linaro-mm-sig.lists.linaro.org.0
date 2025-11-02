Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0IChCDz44GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C854640FE76
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7DB5405DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:54:50 +0000 (UTC)
Received: from fhigh-a4-smtp.messagingengine.com (fhigh-a4-smtp.messagingengine.com [103.168.172.155])
	by lists.linaro.org (Postfix) with ESMTPS id 234C13F7E9
	for <linaro-mm-sig@lists.linaro.org>; Sun,  2 Nov 2025 17:12:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b=ARP+t+ms;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="v 9KpaIc";
	dmarc=pass (policy=none) header.from=shazbot.org;
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 103.168.172.155 as permitted sender) smtp.mailfrom=alex@shazbot.org
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.phl.internal (Postfix) with ESMTP id D3C421400085;
	Sun,  2 Nov 2025 12:12:04 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Sun, 02 Nov 2025 12:12:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1762103524;
	 x=1762189924; bh=a8GBlzVdFLqLDITNMfrx+jlxxxq6gfyNGi3CdsrexZI=; b=
	ARP+t+msJuI/3RJhhtYbBSFdEA7HyYjz67gdLAISlfgMVO+MnsQr8r1xk62dNhbd
	yI1NvYRfUV5jvNQigsXv5hM9shQ9mIGK7qiGfyO8fc5PQcGXpIOuwDEIZ3WwT5q7
	Gyox0q0Fnl1k6VbVxwNvzp/3PszW8Yb1PKA6OTjeFDd2fkXefL0kmJv1l77vIF5i
	YIgLYJgBqufautWfZLVDdNYHKouRVaxeHaRRsVRK+pLviBAK7gJaEXGEB4qNwR+7
	Hezxm8X7xwAKlixuVAWWSJ+8dOvKgWlCg4pqu016RbmhLzs+27VhTRQqLN29OogB
	3wjUYYJOaN6K34W+lgbHyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1762103524; x=
	1762189924; bh=a8GBlzVdFLqLDITNMfrx+jlxxxq6gfyNGi3CdsrexZI=; b=v
	9KpaIclihxfYlmk593KmiTk5BxS4JIR7bgYvhR0NAwe80xqKE16tUXwNpDkvT269
	OFbT4TjgEiVVOOQDgfAiN06ZXLgRr482uVauwHbvA1UG6HKqcbJGpSpu62nfR9uw
	SZQP7sZg848DbQ/gj6+NF4RZuuTr+gfvhjGuc50FwmUunVlkhCkZ8S0QFToF9eDj
	Q9FsUBEScnBDJGasO2skhA9rIWRksj1tLSmc8bbPrE/V3omRv1tZDAkV/l5A1+pY
	zSXEjUYbPxiJ2N5N7CFusfzpEys4zyVu0WPlXGZHfQx2PC4canHEHDI8LJ045GIC
	moNcBmwwrBiSN+laj4PhQ==
X-ME-Sender: <xms:4pAHaaJvAQn91kmZ_L8EDo9K0hkQkKrMWH_IihatlP3lP5mfCsgZLA>
    <xme:4pAHaVGqzWItmKM9uVjZd7D7s73TPSJT17RH_QAqT7tOT2Lt3yN0HyR1RhuS_DqG1
    Am_YdNX9LPn6NdmN50A5pDf7ybqjSBfU9JLJSS02Nex2t7iHMwkLg>
X-ME-Received: <xmr:4pAHae4VRDGyqVonaYTLr6w6DuqmTaw4vZiOzLQ3Heo4t_Q0q99oFoXPKM8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddujeehkedvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkjghfgggtgfesthejredttddtvdenucfhrhhomheptehlvgigucgh
    ihhllhhirghmshhonhcuoegrlhgvgiesshhhrgiisghothdrohhrgheqnecuggftrfgrth
    htvghrnhepteetudelgeekieegudegleeuvdffgeehleeivddtfeektdekkeehffehudet
    hffhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
    hlvgigsehshhgriigsohhtrdhorhhgpdhnsggprhgtphhtthhopeefgedpmhhouggvpehs
    mhhtphhouhhtpdhrtghpthhtoheplhgvohhnsehkvghrnhgvlhdrohhrghdprhgtphhtth
    hopegshhgvlhhgrggrshesghhoohhglhgvrdgtohhmpdhrtghpthhtoheplhhoghgrnhhg
    seguvghlthgrthgvvgdrtghomhdprhgtphhtthhopegrgigsohgvsehkvghrnhgvlhdrug
    hkpdhrtghpthhtoheprhhosghinhdrmhhurhhphhihsegrrhhmrdgtohhmpdhrtghpthht
    ohepjhhorhhoseeksgihthgvshdrohhrghdprhgtphhtthhopeifihhllheskhgvrhhnvg
    hlrdhorhhgpdhrtghpthhtohepmhdrshiihihprhhofihskhhisehsrghmshhunhhgrdgt
    ohhmpdhrtghpthhtohepjhhgghesiihivghpvgdrtggr
X-ME-Proxy: <xmx:4pAHacmtyeD6hGjmG5yJylSyTA-HADMGajUjQCdmqT32jDrnaono_w>
    <xmx:4pAHadv8O87-N3u7RBjdpz4I-VpiuG28OEKea_LULbQEWM07iNrZow>
    <xmx:4pAHafSnW8NhnYBcocBvwjMJZJwKp-bH1sWpaSPhMezd7UcEP_aM4A>
    <xmx:4pAHaXEDRYciiigXo_h0MGBa4ZI4FQYqaBv7JF7YPQQn35BVrD5OoA>
    <xmx:5JAHaTjTYS-Qyu0V5EarqGMARTYneth4LDaS1-R29jSNkR8I4POCr7gf>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 2 Nov 2025 12:12:00 -0500 (EST)
Date: Sun, 2 Nov 2025 10:11:58 -0700
From: Alex Williamson <alex@shazbot.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20251102101158.6d2c36c6@shazbot.org>
In-Reply-To: <20251102151253.GA50752@unreal>
References: <20251102-dmabuf-vfio-v6-0-d773cff0db9f@nvidia.com>
	<20251102-dmabuf-vfio-v6-10-d773cff0db9f@nvidia.com>
	<20251102080137.209aa567@shazbot.org>
	<20251102151253.GA50752@unreal>
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TVRI6O4RHFIAE4W4DTK27SHF7GGJDEPF
X-Message-ID-Hash: TVRI6O4RHFIAE4W4DTK27SHF7GGJDEPF
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:41 +0000
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Williamson <alex.williamson@redhat.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.lina
 ro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 10/11] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TVRI6O4RHFIAE4W4DTK27SHF7GGJDEPF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[3957];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	NEURAL_SPAM(0.00)[0.144];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,shazbot.org:mid]
X-Rspamd-Queue-Id: C854640FE76
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 2 Nov 2025 17:12:53 +0200
Leon Romanovsky <leon@kernel.org> wrote:
> On Sun, Nov 02, 2025 at 08:01:37AM -0700, Alex Williamson wrote: 
> > We don't need the separate loop or flag, and adding it breaks the
> > existing reverse list walk.  Thanks,  
> 
> Do you want me to send v7? I have a feeling that v6 is good to be merged.

Let's hold off, if this ends up being the only fixup I can roll it in.
Thanks,

Alex
 
> diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
> index 24204893e221..51a3bcc26f8b 100644
> --- a/drivers/vfio/pci/vfio_pci_core.c
> +++ b/drivers/vfio/pci/vfio_pci_core.c
> @@ -2403,7 +2403,6 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>                                       struct iommufd_ctx *iommufd_ctx)
>  {
>         struct vfio_pci_core_device *vdev;
> -       bool restore_revoke = false;
>         struct pci_dev *pdev;
>         int ret;
>  
> @@ -2473,7 +2472,6 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>                 }
>  
>                 vfio_pci_dma_buf_move(vdev, true);
> -               restore_revoke = true;
>                 vfio_pci_zap_bars(vdev);
>         }
>  
> @@ -2501,15 +2499,12 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>                                struct vfio_pci_core_device, vdev.dev_set_list);
>  
>  err_undo:
> -       if (restore_revoke) {
> -               list_for_each_entry(vdev, &dev_set->device_list, vdev.dev_set_list)
> -                       if (__vfio_pci_memory_enabled(vdev))
> -                               vfio_pci_dma_buf_move(vdev, false);
> -       }
> -
>         list_for_each_entry_from_reverse(vdev, &dev_set->device_list,
> -                                        vdev.dev_set_list)
> +                                        vdev.dev_set_list) {
> +               if (__vfio_pci_memory_enabled(vdev))
> +                       vfio_pci_dma_buf_move(vdev, false);
>                 up_write(&vdev->memory_lock);
> +       }
>  
>         list_for_each_entry(vdev, &dev_set->device_list, vdev.dev_set_list)
>                 pm_runtime_put(&vdev->pdev->dev);
> 
> 
> > 
> > Alex
> >   
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
