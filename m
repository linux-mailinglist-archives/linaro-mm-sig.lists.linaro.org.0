Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJjKAzf44GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F1340FE67
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B0E04069B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:54:45 +0000 (UTC)
Received: from fout-a7-smtp.messagingengine.com (fout-a7-smtp.messagingengine.com [103.168.172.150])
	by lists.linaro.org (Postfix) with ESMTPS id 9ABA13F73D
	for <linaro-mm-sig@lists.linaro.org>; Sun,  2 Nov 2025 15:01:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b=TDBBXL62;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="1 LVX56y";
	dmarc=pass (policy=none) header.from=shazbot.org;
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 103.168.172.150 as permitted sender) smtp.mailfrom=alex@shazbot.org
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.phl.internal (Postfix) with ESMTP id 5A52EEC00FA;
	Sun,  2 Nov 2025 10:01:46 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-04.internal (MEProxy); Sun, 02 Nov 2025 10:01:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1762095706;
	 x=1762182106; bh=0d6OEFnYJ2V3XAULn/TZmZlWcybfhiFmQJo6mbyVvXM=; b=
	TDBBXL627U62EbSvE9rFypOnDsF59crhLTr4X2QKEvliSdqCxPjUyGG2gU1rfyy6
	KFAxwA1gTIMopje4193uHXPRW+ufV9dJZdKqHBRfwc/N4IBiaOR98b4eAXEH0znN
	TGEm6RPZFvDOWz2t1+XG+tu8SlR7C3lIquO0xndqYyPCLJ47ZApUOwrZ+fL1v05Y
	UO6kQ6QwKw94v0SpG2cVHhgdcGhgAbGr8yyVtoD/NNB4QwWq9iuTPgKYtfwDhnMp
	zc4DNh9MkV7/Al+RIrs1DZduD58Ug0u+UsN5KgH6wUZEtxvKc9YwIHTm4hVd6tSs
	0CyeiKlKqOJyqaNciuiXOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1762095706; x=
	1762182106; bh=0d6OEFnYJ2V3XAULn/TZmZlWcybfhiFmQJo6mbyVvXM=; b=1
	LVX56yfNDSpIjbdRvoJO/pVaXhalPLO9zDUW46RhJ+NIFwjTzsxKz0U4lLijuDiE
	/J3coBRe5aiRdAgOPuppxezWF1Kn0vGtaRJ50DbviHDspFXvN4/CsZxDPYFdrTQE
	rQTnMDPaU17wxuuSeRSLCIFoTsQyLhm25SgJgE5MCtd6olWZ3wnfxKjXIlHhXu8w
	AAt1cjfsRLEfHZrrZDRyeCx3bzQMm2DgNgFc3x8D1rq3/SGQUf0gVyKY6ZUAHtAk
	GMrN0tWn0OhqQOH1gi2ycbisP7rKgjkeGTT6oLypSJHXOoGRXO+1vl0LQkXCAw2d
	qLCgYO+qQmzuvtppNv+Cw==
X-ME-Sender: <xms:V3IHacICu8ulgNi7o_gOHA7n7OIXpJl_EkrwhFpTuoWMNbSElXRs6g>
    <xme:V3IHaS_eEi56epCAR71Ow3AZO5YiCeI-oW6OtskAXSaFLFE3lJ3Znpd7T6hKXX39l
    jB_EqBTEDIfpaRz-GdwttQNDa_LzOaDIwPhNt2bHOF7kJ6YFJwVHA>
X-ME-Received: <xmr:V3IHaVpqiAR7FIyLA4s1kUh8xeOXyBaoUionVfff_VNmwkaMImllMw6SCTs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddujeehheeiucetufdoteggodetrf
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
X-ME-Proxy: <xmx:V3IHacPvm6yYAGFkJOoCwJMSLlRkDxe2mP1wwPGKFs_yQdMVw0EBhA>
    <xmx:V3IHaXrLQtlZj7fWGRlOfeH0EMNmKki9CCwP4XF51mbUGiN7MdHcbQ>
    <xmx:V3IHaTinpkeptwnvtlt4p2ISS1nkQs5QM83RIoLIlJ1Tl7W2DA4-lA>
    <xmx:V3IHaY2_kf5P8v7ucB2Tj-fdZ8lmkzXzEpiEchjKzUpwizU-U37EHw>
    <xmx:WnIHaYlbGcSJfLIFOTNM9Y5mg_T2bF-aTHDN-65hDt2_atGb1QiAIi8U>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 2 Nov 2025 10:01:41 -0500 (EST)
Date: Sun, 2 Nov 2025 08:01:37 -0700
From: Alex Williamson <alex@shazbot.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20251102080137.209aa567@shazbot.org>
In-Reply-To: <20251102-dmabuf-vfio-v6-10-d773cff0db9f@nvidia.com>
References: <20251102-dmabuf-vfio-v6-0-d773cff0db9f@nvidia.com>
	<20251102-dmabuf-vfio-v6-10-d773cff0db9f@nvidia.com>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PYUENXDS3EYLSHFVWFZX5VHNC5UG44W5
X-Message-ID-Hash: PYUENXDS3EYLSHFVWFZX5VHNC5UG44W5
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:41 +0000
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Williamson <alex.williamson@redhat.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.lina
 ro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 10/11] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PYUENXDS3EYLSHFVWFZX5VHNC5UG44W5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[3959];
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
	NEURAL_SPAM(0.00)[0.672];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[shazbot.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 99F1340FE67
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun,  2 Nov 2025 10:00:58 +0200
Leon Romanovsky <leon@kernel.org> wrote:
> @@ -2391,6 +2403,7 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>  				      struct iommufd_ctx *iommufd_ctx)
>  {
>  	struct vfio_pci_core_device *vdev;
> +	bool restore_revoke = false;
>  	struct pci_dev *pdev;
>  	int ret;
>  
> @@ -2459,6 +2472,8 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>  			break;
>  		}
>  
> +		vfio_pci_dma_buf_move(vdev, true);
> +		restore_revoke = true;
>  		vfio_pci_zap_bars(vdev);
>  	}
>  
> @@ -2486,6 +2501,12 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>  			       struct vfio_pci_core_device, vdev.dev_set_list);
>  
>  err_undo:
> +	if (restore_revoke) {
> +		list_for_each_entry(vdev, &dev_set->device_list, vdev.dev_set_list)
> +			if (__vfio_pci_memory_enabled(vdev))
> +				vfio_pci_dma_buf_move(vdev, false);
> +	}
> +
>  	list_for_each_entry_from_reverse(vdev, &dev_set->device_list,
>  					 vdev.dev_set_list)

We don't need the separate loop or flag, and adding it breaks the
existing reverse list walk.  Thanks,

Alex
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
