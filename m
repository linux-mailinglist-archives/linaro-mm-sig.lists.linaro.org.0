Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFO5Ht0s9WnyJAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 02 May 2026 00:44:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F13914B00F5
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 02 May 2026 00:44:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D366A401B7
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 May 2026 22:44:43 +0000 (UTC)
Received: from fhigh-b7-smtp.messagingengine.com (fhigh-b7-smtp.messagingengine.com [202.12.124.158])
	by lists.linaro.org (Postfix) with ESMTPS id A21EC401B7
	for <linaro-mm-sig@lists.linaro.org>; Fri,  1 May 2026 22:44:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b=aFYeUrfL;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="S wP3GP3";
	dmarc=pass (policy=none) header.from=shazbot.org;
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 202.12.124.158 as permitted sender) smtp.mailfrom=alex@shazbot.org
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 526327A00CF;
	Fri,  1 May 2026 18:44:33 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-03.internal (MEProxy); Fri, 01 May 2026 18:44:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1777675473;
	 x=1777761873; bh=H+RPTh5X6WGERBnZyIFiypbSLQyXU92BgOcneXZdT8o=; b=
	aFYeUrfLvBQkHDbVz7ZKmfk9HobjnyXxr1UrU9OKtxysKgwVEbot3/j3uMrtgz7V
	lfGBLiE2289Gg4oHBFSC2GXoAzSzcFzknK0wA0fVr6Hc9HePVjEaMEau8DU5UT/z
	mcumS4d92lla3JCegb6BwQF5cPlGQRHfrzCw61+jkvyfxBvezwJUkdZpp30EjiuK
	h05vH8lfYdrbuiiEVmY+DMRhc7W3Gs5gdz3LyG0CFhF0YHdYvhp4OFgPkWCYgb1y
	X4zqCoWfkDQ/63n9BNr0jeKLuzJNIrjyZCSZsub/BG/tYPlVt+bt8knf8T2tHR8g
	m2LhUk3LmrtVRwTeTWyJiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1777675473; x=
	1777761873; bh=H+RPTh5X6WGERBnZyIFiypbSLQyXU92BgOcneXZdT8o=; b=S
	wP3GP3HwG/1UeyK/CZhjcl73RSpwARK7KiTMSpsvLSEMbZYQjX5BBKKYJEfA/9vR
	X+jPmI4W6hT4lEt/sdOv/iBMowm810wktfFgZIN0xxlniwzByzi8ewFoSNUcByG1
	0Kt62z3CN1TZYk1VLI3oOt+Q/WTML8MVmbcgzusVOw+SxGoM1iNdhaupzViVAjgL
	ZGNKZFjI0vMMRZhAyjq8F3+8lhjGA9UlOB3mK8cO94Gu195LNtA3MnpMspUWj2B5
	jvfT0SQNTlHMc1kgx20D4IDquJ+SSkApTw9e1GikQR8c5xLygVWe86y+8CMwGr98
	I12siL+2SnDk41DQ6GEzA==
X-ME-Sender: <xms:0Cz1aXy8nsNfltzNFLqZ7-71AVNWepLVy8DfLw2r5f6djlm8LRSPfQ>
    <xme:0Cz1adqSsIV25QlvASWKP97FeQyR5eLXm_wEHhajRMA7KJFB0DyZtDvctGOZltqPY
    nhZLlpdX49cWEP53hx193Yp8iA9XffNxt5WHz94PSNjzVqJkcFHGQ>
X-ME-Received: <xmr:0Cz1adUbgnjoWm5CaxK0Ubjb3dPQjQHk4yR5VsvAMb5AWDk69LEGHdwwEeM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdeludegfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefukfgjfhfogggtgfesthejredtredtvdenucfhrhhomheptehlvgigucgh
    ihhllhhirghmshhonhcuoegrlhgvgiesshhhrgiisghothdrohhrgheqnecuggftrfgrth
    htvghrnhepvdekfeejkedvudfhudfhteekudfgudeiteetvdeukedvheetvdekgfdugeev
    ueeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
    hlvgigsehshhgriigsohhtrdhorhhgpdhnsggprhgtphhtthhopedvtddpmhhouggvpehs
    mhhtphhouhhtpdhrtghpthhtohepmhgrthhtvghvsehmvghtrgdrtghomhdprhgtphhtth
    hopehlvghonheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepjhhgghesnhhvihguihgr
    rdgtohhmpdhrtghpthhtoheprghmrghsthhrohesfhgsrdgtohhmpdhrtghpthhtoheptg
    hhrhhishhtihgrnhdrkhhovghnihhgsegrmhgurdgtohhmpdhrtghpthhtohepmhhnghih
    rggurghmsegrmhgriihonhdruggvpdhrtghpthhtohepughmrghtlhgrtghksehgohhogh
    hlvgdrtghomhdprhgtphhtthhopegsjhhorhhnsehkvghrnhgvlhdrohhrghdprhgtphht
    thhopehsuhhmihhtrdhsvghmfigrlheslhhinhgrrhhordhorhhg
X-ME-Proxy: <xmx:0Cz1aUrOHlNHxVpuRRwlUKIIa4PqR_2-hdS1duRpGNs8acQS9PUn-w>
    <xmx:0Cz1aRFzdnNWifsx23r_VcLJU-zJ2U7_4I4qFAB12e96hNavZ-2heQ>
    <xmx:0Cz1aWv4ijDSK8YqBGaagAKqzGxOeMNiau1ue4bnu-BssBHg87Gb0g>
    <xmx:0Cz1aUT1udFPrzbCAbWQckLAye7mlvoqL0k0yj-nKaNwzHUi_djdjA>
    <xmx:0Sz1aeJ3Ke8v-ukJ8nq1JmuSLDcRO2zwGVhY9am45YM85bbTFycKM5RV>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 1 May 2026 18:44:31 -0400 (EDT)
Date: Fri, 1 May 2026 16:44:30 -0600
From: Alex Williamson <alex@shazbot.org>
To: Matt Evans <mattev@meta.com>
Message-ID: <20260501164430.5d3ea683@shazbot.org>
In-Reply-To: <20260416131815.2729131-6-mattev@meta.com>
References: <20260416131815.2729131-1-mattev@meta.com>
	<20260416131815.2729131-6-mattev@meta.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: LIQPWEE2QEQNMOAMTLZJBEAZPWZLESBN
X-Message-ID-Hash: LIQPWEE2QEQNMOAMTLZJBEAZPWZLESBN
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, alex@shazbot.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] vfio/pci: Provide a user-facing name for BAR mappings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LIQPWEE2QEQNMOAMTLZJBEAZPWZLESBN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: F13914B00F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[shazbot.org:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DKIM_TRACE(0.00)[shazbot.org:-,messagingengine.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[shazbot.org:mid,meta.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]

On Thu, 16 Apr 2026 06:17:48 -0700
Matt Evans <mattev@meta.com> wrote:

> Since converting BAR mmap()s to using DMABUFs, we lose the original
> device path in /proc/<pid>/maps, lsof, etc.  Generate a debug-oriented
> synthetic 'filename' based on the cdev, plus BDF, plus resource index.
> 
> This applies only to BAR mappings via the VFIO device fd, as
> explicitly-exported DMABUFs are named by userspace via the
> DMA_BUF_SET_NAME ioctl.
> 
> Signed-off-by: Matt Evans <mattev@meta.com>
> ---
>  drivers/vfio/pci/vfio_pci_dmabuf.c | 27 +++++++++++++++++++++++++--
>  1 file changed, 25 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
> index a12432825e5e..04c7733fe712 100644
> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> @@ -4,6 +4,7 @@
>  #include <linux/dma-buf-mapping.h>
>  #include <linux/pci-p2pdma.h>
>  #include <linux/dma-resv.h>
> +#include <uapi/linux/dma-buf.h>
>  
>  #include "vfio_pci_priv.h"
>  
> @@ -467,6 +468,7 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
>  {
>  	struct vfio_pci_dma_buf *priv;
>  	const unsigned int nr_ranges = 1;
> +	char *bufname;
>  	int ret;
>  
>  	priv = kzalloc_obj(*priv);
> @@ -479,6 +481,20 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
>  		goto err_free_priv;
>  	}
>  
> +	bufname = kzalloc(DMA_BUF_NAME_LEN, GFP_KERNEL);
> +	if (!bufname) {
> +		ret = -ENOMEM;
> +		goto err_free_phys;
> +	}
> +
> +	/*
> +	 * Maximum size of the friendly debug name is
> +	 * vfio1234567890:ffff:ff:3f.7-9 = 30, which fits within
> +	 * DMA_BUF_NAME_LEN.
> +	 */
> +	snprintf(bufname, DMA_BUF_NAME_LEN, "%s:%s/%x",
> +		 dev_name(&vdev->vdev.device), pci_name(vdev->pdev), res_index);

Comment suggests 9 is the max res_index that can be printed, but mmap
only directly supports standard BARs 0-5.  Comment also uses a '-'
while the code uses a '/'.  Thanks,

Alex
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
