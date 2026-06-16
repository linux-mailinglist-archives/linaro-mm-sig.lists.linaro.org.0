Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xCPgDxJfPWpI2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:02:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2A06C7A83
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:02:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=Gwha8lQv;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B4D6440CF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:02:07 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id BC2FF40A4D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 11:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1781609860;
	bh=uAgprYITukIDXcpqINMJiY5I+9dV1eJU9keHmx8y09Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Gwha8lQvPpehVbnVayavcRWqSRAMTH6T8yTt43S0hjAkCB/JTFST48vUr+g4CsHVy
	 ZFi9jystoduorstbVb57npnIRroTBZX9uqXPgcnbBbeB0oLES6/SB0HGElsnPhOjXO
	 Jn+yHRyFrIuSCHZqq8OkxUHRwTAsri/tIkPKm+1XrzWPO11/3f3sF/dvrgRXb8gToW
	 5Lhgxo1L5Vx1HPwtQwZwSYJj8PZXHkxCLpzuAoipBPNYHmV22S1+BTtKMa0FpXdtPT
	 cB7j00O/GhtTBBhhrmx8QT+QMGaedFoWWdWyzoAuUkSJgGQQZHT7hDcIPZnF6dPQ98
	 5LVdzjdj+k+JQ==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gflMx00Vzz58nk;
	Tue, 16 Jun 2026 21:37:32 +1000 (AEST)
Message-ID: <c4a6e367-2f22-4cbf-afcb-674f82fdacd2@ozlabs.org>
Date: Tue, 16 Jun 2026 12:37:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Pranjal Shrivastava <praan@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-10-matt@ozlabs.org> <ajENiAQkzXjbxgRX@google.com>
From: Matt Evans <matt@ozlabs.org>
In-Reply-To: <ajENiAQkzXjbxgRX@google.com>
X-Spamd-Bar: ---
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DXKBH5ARKIEXLBYYFGRSYDFGP5I6ER7U
X-Message-ID-Hash: DXKBH5ARKIEXLBYYFGRSYDFGP5I6ER7U
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:01:20 +0000
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 9/9] vfio/pci: Add mmap() attributes to DMABUF feature
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DXKBH5ARKIEXLBYYFGRSYDFGP5I6ER7U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[221];
	R_DKIM_REJECT(1.00)[ozlabs.org:s=201707];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[ozlabs.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:praan@google.com,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ozlabs.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:email,ozlabs.org:mid,ozlabs.org:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,bootlin.com:url,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C2A06C7A83

Hi Praan,

On 16/06/2026 09:47, Pranjal Shrivastava wrote:
> On Wed, Jun 10, 2026 at 04:43:23PM +0100, Matt Evans wrote:
>> A new VFIO feature, VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR, is added to
>> set CPU-facing memory type attributes for a DMABUF exported from
>> vfio-pci.  These are used for subsequent mmap()s of the buffer.
>>
>> There are two attributes supported:
>>  - The default, VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC
>>  - VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC, which results in WC
>>    PTEs for the DMABUF's BAR region.
>>
>> Signed-off-by: Matt Evans <matt@ozlabs.org>
>> ---
>>  drivers/vfio/pci/vfio_pci_core.c   |  2 ++
>>  drivers/vfio/pci/vfio_pci_dmabuf.c | 57 +++++++++++++++++++++++++++++-
>>  drivers/vfio/pci/vfio_pci_priv.h   | 14 ++++++++
>>  include/uapi/linux/vfio.h          | 27 ++++++++++++++
>>  4 files changed, 99 insertions(+), 1 deletion(-)
>>
> 
>> +int vfio_pci_core_feature_dma_buf_memattr(
>> +	struct vfio_pci_core_device *vdev, u32 flags,
>> +	struct vfio_device_feature_dma_buf_memattr __user *arg,
>> +	size_t argsz)
>> +{
>> +	struct vfio_device_feature_dma_buf_memattr db_attr;
>> +	struct vfio_pci_dma_buf *priv;
>> +	struct dma_buf *dmabuf;
>> +	int ret;
>> +
>> +	if (!vdev->pci_ops || !vdev->pci_ops->get_dmabuf_phys)
>> +		return -EOPNOTSUPP;
>> +
>> +	ret = vfio_check_feature(flags, argsz,
>> +				 VFIO_DEVICE_FEATURE_SET,
>> +				 sizeof(db_attr));
>> +	if (ret != 1)
>> +		return ret;
>> +
>> +	if (copy_from_user(&db_attr, arg, sizeof(db_attr)))
>> +		return -EFAULT;
>> +
>> +	dmabuf = dma_buf_get(db_attr.dmabuf_fd);
>> +	if (IS_ERR(dmabuf))
>> +		return PTR_ERR(dmabuf);
>> +
>> +	/* Verify DMABUF: see comments in vfio_pci_dma_buf_revoke() */
>> +	priv = dmabuf->priv;
>> +	if (dmabuf->ops != &vfio_pci_dmabuf_ops ||
>> +	    READ_ONCE(priv->vdev) != vdev) {
>> +		ret = -ENODEV;
>> +		goto out_put_buf;
>> +	}
>> +
>> +	switch (db_attr.memattr) {
>> +	case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC:
>> +	case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC:
>> +		WRITE_ONCE(priv->memattr, db_attr.memattr);
>> +		ret = 0;
>> +		break;
>> +
>> +	default:
>> +		ret = -ENOENT;
> 
> Nit: Looks like the agreement [1] was on -EOPNOTSUPP / -EINVAL but we 
> took -ENOENT here and in the doc string? Was that intentional?
> 
> I tend to agree with Alex's suggestion here, we'd prefer one of those 
> two (-EINVAL / -EOPNOTSUPP) since it clearly communicates to the user
> that "You sent a wrong arg" or "We don't support this"
> 

Yes, it was intentional.  This was noted in the v3 changelog entry in
the cover letter:

 - Removed GET on vfio_pci_core_feature_dma_buf_memattr(), removed
   unnecessary taking of memory_lock, fixed error return values.  In
   particular, removes ENOTSUPP, and uses ENOENT to indicate an
   unknown attribute enum value was passed to SET.  In the discussion
   here,
   https://lore.kernel.org/all/20260602131417.41366391@shazbot.org/
   we'd agreed on EOPNOTSUPP before I realised that's already used
   elsewhere.  ENOENT uniquely indicates an unknown attribute.

EINVAL/EOPNOTSUPP would indeed be semantically perfect, but after
posting my reply there I remembered they are already overloaded with a
load of different meanings.

I think uniqueness is important here so that memattr issues (for example
any future arch-specific porting issues) show up as an
immediately-understandable error value.

> -ENOENT means no such file or directory [2] to the user. Users may not
> be kernel engineers who'd wanna peek into the code and they may simply
> look at the uAPI files which doesn't give them an answer as to what
> went wrong.

But surely when they look at the uAPI header they will then see
"*  ENOENT: The given memattr is not supported." and understand what
went wrong.

> 
>> +	}
>> +
>>  out_put_buf:
>>  	dma_buf_put(dmabuf);
>>  
> 
> Apart from that, 
> Reviewed-by: Pranjal Shrivastava <praan@google.com>

Thanks!


Matt


> 
> Thanks,
> Praan
> 
> [1] https://lore.kernel.org/all/20260602131417.41366391@shazbot.org/
> [2] https://elixir.bootlin.com/linux/v7.1-rc6/source/include/uapi/asm-generic/errno-base.h#L6
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
