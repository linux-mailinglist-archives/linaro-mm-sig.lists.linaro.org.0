Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OQFmBEN+Omr7+AcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 14:38:27 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 907CF6B7214
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 14:38:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=dlZQHPEG;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F5E73F949
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 12:38:25 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by lists.linaro.org (Postfix) with ESMTPS id 0AEC23F949
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 12:38:17 +0000 (UTC)
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2c6a4eccab1so40815ad.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 05:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1782218296; x=1782823096; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=kRyC6uc9PiBbjK9ZqA0DFvnVffsSMfHhakITg77vSEE=;
        b=dlZQHPEGbhgDECk9kLDDCtwhXs36df6X9QlAniT3M2FIdTKod1FL/6PbtqlRG7heLq
         52SSep50vW7xzRkBlaRPLNwPzxucWRAyMr9Ovxv248iVpagrvl6ttfe6JdWAghjIEqFb
         rSnrzc4QLsEMA8EdshfijUPtSBOBD3/0yeMl9Wdb5hsYdKaaseNQ7nXRMstHFPC5jtHg
         MMZ/BZFoqBiHZdcw++U0D4FDXlMYt+OF/Y3SQ5QxsGXTNeSsj2ejR2xwyUojlgBFrZf1
         8+ApQly+nW80FbbBEJyObIJ+sLZfv07BMCaE5qe36yrYX5XDDiNI6TN5AMbUbbIu9DwA
         x4Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782218296; x=1782823096;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kRyC6uc9PiBbjK9ZqA0DFvnVffsSMfHhakITg77vSEE=;
        b=cEUDBmD9/7HO1rtgM473+gKkUkapllkCLh24BIMUHotNddZe4a9qN+R5AXUszYvfWK
         mYxcQK5yx8XG7bbu4Xs+kndWWrldAbzIcjBZn6YWFLjg+sivpIc/FIOOuy0kNE2+VkTl
         qqmCJTwWZVpFKAtsQLoFP/qJru2UIDAp0JfmU79lm/UVGTWkcWeJQjlaIU+jGVav0TlT
         XQSaBYKREYfNdMjvMTfupw7njBSnSKSeiRqG+d2VtnuBCkGgfYd6BPQnfPqHTkSO1Clk
         j1q1vGMei3xotPokRGljocjd00V80g16dNgXnDhhNOeVj4t9cx97N14vdqg4AvtqkpJE
         +0AA==
X-Forwarded-Encrypted: i=1; AHgh+RpRBAu/zp9sSblIdtBbqVmSxkwcG6uTYeheUHl83NdGNai3rZjJmQFCizkgGlInsPR2jvbJUEdnpXOeuwRn@lists.linaro.org
X-Gm-Message-State: AOJu0YxzCfTWsrPzfVcMjw0KuLAhhVzRoDVGGJuYm3ALlEhw8EDPbNZE
	dTbpcnLkrtH2vBYejw4vpwmIo97BUulwPA9cqK3QyQWmhsuOcprbuTob/3U8cvK5vg==
X-Gm-Gg: AfdE7ckXYC2wItOrOxt1cY7Az9jOVmXgCVxwCYT5/2GAcvbwtZDSA2dALPUW4f/BsoX
	H0XyfAg2f2b8sR2hdsq0A//w0ioCJsQmX3cM5XHyZLLsCfbuBx9hIrbyrNSqxAjG0eORIUSZhb0
	Uia0/jbVjholy1r/D/WBJVsdgSWLR49nwF2eGAmNL2JJdw7jGqiDjaXgKrGm+jBXBaaF5h5bfxB
	FUSB8mm/niEIHZ3MNzciylgXf9E03qcZhtNuOhvZBlGImslPqF5ijuQqCH1Zh6TKljScc6SHSIk
	m39zQcmpuxatH+6nu9Gb/6xDHCOgT85vORbnauq96Lsn2NnnZblsnUfCWeGyosWh1zbzLQPhuon
	oGbH7Ua3Hcs/fT7AFiHVzZu5HP6Gdtx3FDw5cvrltz/hOTcpnVvXeEk8mtm/LDpjVYNGo3g7LHa
	950exij87P9rDzvJDHhoYqnVXMJ0EA37exBxOhwDG3L9Z3fiFTWPNouh/xvSPM
X-Received: by 2002:a17:902:e5c2:b0:2c1:4a67:5f31 with SMTP id d9443c01a7336-2c7c70efd4emr1597435ad.9.1782218295641;
        Tue, 23 Jun 2026 05:38:15 -0700 (PDT)
Received: from google.com (199.255.142.34.bc.googleusercontent.com. [34.142.255.199])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84564d6c2cesm13106102b3a.2.2026.06.23.05.38.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 05:38:15 -0700 (PDT)
Date: Tue, 23 Jun 2026 12:38:07 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Matt Evans <matt@ozlabs.org>
Message-ID: <ajp-L7wHQ2rQFK97@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-7-matt@ozlabs.org>
 <aixgZQiBQKgS7yIM@google.com>
 <62970f4b-e624-403f-9cdc-02438c820d23@ozlabs.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62970f4b-e624-403f-9cdc-02438c820d23@ozlabs.org>
X-Spamd-Bar: ----
Message-ID-Hash: CH2VKTXON3IPIGQ5NK4VJMTL4OXVATVL
X-Message-ID-Hash: CH2VKTXON3IPIGQ5NK4VJMTL4OXVATVL
X-MailFrom: praan@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/9] vfio/pci: Clean up BAR zap and revocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CH2VKTXON3IPIGQ5NK4VJMTL4OXVATVL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praan@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 907CF6B7214

On Thu, Jun 18, 2026 at 05:06:27PM +0100, Matt Evans wrote:
> Hi Praan,
> 
> On 12/06/2026 20:39, Pranjal Shrivastava wrote:
> >>

[...]

> >> diff --git a/drivers/vfio/pci/hisilicon/hisi_acc_vfio_pci.c b/drivers/vfio/pci/hisilicon/hisi_acc_vfio_pci.c
> >> index 86362ec424a5..51990f6d66d5 100644
> >> --- a/drivers/vfio/pci/hisilicon/hisi_acc_vfio_pci.c
> >> +++ b/drivers/vfio/pci/hisilicon/hisi_acc_vfio_pci.c
> >> @@ -1692,6 +1692,14 @@ static int hisi_acc_vfio_pci_probe(struct pci_dev *pdev, const struct pci_device
> >>  	if (ret)
> >>  		goto out_put_vdev;
> >>  
> >> +	/*
> >> +	 * hisi_acc_vfio_pci_mmap() calls down to
> >> +	 * vfio_pci_core_mmap(), so BAR mappings are still
> >> +	 * DMABUF-backed.  They don't require a zap on revoke, so opt
> >> +	 * out:
> >> +	 */
> >> +	hisi_acc_vdev->core_device.zap_bars_on_revoke = false;
> >> +
> > 
> > This seems to be happening after we vfio_pci_core_register_device, which
> > could be slightly problematic if another device in the same group races 
> > to trigger a hot reset before we can set this to false. Could we 
> > initialize this flag before registration instead?
> 
> Remember it is a safe default, so in the event of a driver not managing
> to opt-out before it's required then all that happens is a redundant
> unmap_mapping_range().  The default-safe was a nice suggestion from Alex
> on v2.
> 

Ack. I see. That makes sense.

Thanks,
Praan

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
