Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBogAJFl5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:42:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCE5431DEF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:42:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5475D40690
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:42:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	by lists.linaro.org (Postfix) with ESMTPS id 3DE393F8E9
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 08:31:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=K6l+3LeM;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of baolu.lu@linux.intel.com designates 198.175.65.19 as permitted sender) smtp.mailfrom=baolu.lu@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1776069112; x=1807605112;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=ygX3QGpmpzQ4vDb35DrfpC80ywfwMhPNQFU2B1S833A=;
  b=K6l+3LeMxYKj6vLSstiW/3xHhDPpsNLWaUncfBQHCaCdZKPd3Uim2RQf
   4FSOcr6CELD2ZmobDi2JSgvvTcqwf8gxwkl19aLfjGl9AU4jIY5eMrG8V
   6eGrAL54QIew09JSJOQN3l/3aZqkDJYDfxROFh25wMf7Uy8+ZGoW11xdg
   e/b39i6uVVDZtIquqQKvUcP1pvCMDh/859r5h7D1tcxb5JbByUE54uowK
   1W5lh37ljRWKiVQetBSaLvCJ/N7UzRYNM1mkjOWpRD+/MmxCP8vYEUafU
   FQuvlJuh3ZoauUmuHtS7e34cWjUFJSM6HPIsMKVke0fYp/vV/u9zlk2z0
   Q==;
X-CSE-ConnectionGUID: TMn+aDnqRY64ZD20MgEjQg==
X-CSE-MsgGUID: PefKNI5uQ86pZHnuPpXh6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="76907461"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000";
   d="scan'208";a="76907461"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2026 01:31:51 -0700
X-CSE-ConnectionGUID: kRnB8EohQb611Ginyevg6g==
X-CSE-MsgGUID: AiU4VxdXSISX/Yzv4b1gFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000";
   d="scan'208";a="233756454"
Received: from allen-sbox.sh.intel.com (HELO [10.239.159.30]) ([10.239.159.30])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2026 01:31:47 -0700
Message-ID: <f4e2171a-da58-488f-be02-26a39b5afbe3@linux.intel.com>
Date: Mon, 13 Apr 2026 16:29:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@nvidia.com>
References: <12-v1-b5cab63049c0+191af-dmabuf_map_type_jgg@nvidia.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <12-v1-b5cab63049c0+191af-dmabuf_map_type_jgg@nvidia.com>
X-Spamd-Bar: ---------
X-MailFrom: baolu.lu@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SGX5YETRIY6ZIFZMHBGCNG7Q2VDS5IXQ
X-Message-ID-Hash: SGX5YETRIY6ZIFZMHBGCNG7Q2VDS5IXQ
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:23 +0000
CC: Christian Koenig <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, iommu@lists.linux.dev, Kevin Tian <kevin.tian@intel.com>, Leon Romanovsky <leonro@nvidia.com>, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Matthew Brost <matthew.brost@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas Hellstrom <thomas.hellstrom@linux.intel.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 12/26] vfio/pci: Change the DMA-buf exporter to use mapping_type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SGX5YETRIY6ZIFZMHBGCNG7Q2VDS5IXQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	DATE_IN_PAST(1.00)[177];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[baolu.lu@linux.intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linux.intel.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 4BCE5431DEF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2/18/26 08:11, Jason Gunthorpe wrote:
> Simple conversion to add a match_mapping() callback that offers an
> exporter SGT mapping type. Later patches will add a physical address
> exporter so go straight to adding the match_mapping() function.
> 
> The check for attachment->peer2peer is replaced with setting
> exporter_requires_p2p=true. VFIO always uses MMIO memory.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>   drivers/vfio/pci/vfio_pci_dmabuf.c | 31 +++++++++++++++++++++++++-----
>   1 file changed, 26 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
> index d4d0f7d08c53e2..c7addef5794abf 100644
> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
> @@ -25,9 +25,6 @@ static int vfio_pci_dma_buf_attach(struct dma_buf *dmabuf,
>   {
>   	struct vfio_pci_dma_buf *priv = dmabuf->priv;
>   
> -	if (!attachment->peer2peer)
> -		return -EOPNOTSUPP;
> -
>   	if (priv->revoked)
>   		return -ENODEV;
>   
> @@ -75,11 +72,35 @@ static void vfio_pci_dma_buf_release(struct dma_buf *dmabuf)
>   	kfree(priv);
>   }
>   
> -static const struct dma_buf_ops vfio_pci_dmabuf_ops = {
> -	.attach = vfio_pci_dma_buf_attach,
> +static const struct dma_buf_mapping_sgt_exp_ops vfio_pci_dma_buf_sgt_ops = {
>   	.map_dma_buf = vfio_pci_dma_buf_map,
>   	.unmap_dma_buf = vfio_pci_dma_buf_unmap,
> +};
> +
> +static int vfio_pci_dma_buf_match_mapping(struct dma_buf_match_args *args)
> +{
> +	struct vfio_pci_dma_buf *priv = args->dmabuf->priv;
> +	struct dma_buf_mapping_match sgt_match[1];
> +
> +	dma_resv_assert_held(priv->dmabuf->resv);

My understanding of this lock assertion is that priv and the underlying
priv->vdev are accessed within this function. Therefore, the lock is
necessary to protect them. Do I understand it right?

However, callers - for example, dma_buf_mapping_attach() - do not
acquire dma_resv_lock() before calling this function. So kernel traces
will always be triggered.

> +
> +	/*
> +	 * Once we pass vfio_pci_dma_buf_cleanup() the dmabuf will never be
> +	 * usable again.
> +	 */
> +	if (!priv->vdev)
> +		return -ENODEV;
> +
> +	sgt_match[0] = DMA_BUF_EMAPPING_SGT_P2P(&vfio_pci_dma_buf_sgt_ops,
> +						priv->vdev->pdev);
> +
> +	return dma_buf_match_mapping(args, sgt_match, ARRAY_SIZE(sgt_match));
> +}
> +
> +static const struct dma_buf_ops vfio_pci_dmabuf_ops = {
> +	.attach = vfio_pci_dma_buf_attach,
>   	.release = vfio_pci_dma_buf_release,
> +	.match_mapping = vfio_pci_dma_buf_match_mapping,
>   };
>   
>   /*

Thanks,
baolu
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
