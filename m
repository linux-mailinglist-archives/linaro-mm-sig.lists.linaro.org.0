Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pHucINAJH2pLeAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 18:50:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FAE630625
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 18:50:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=meta.com header.s=s2048-2025-q2 header.b=V2+ukKat;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=meta.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E348C4098C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 16:50:22 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id BE7793F817
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Jun 2026 16:50:11 +0000 (UTC)
Received: from pps.filterd (m0109332.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 652DH7mg1816796
	for <linaro-mm-sig@lists.linaro.org>; Tue, 2 Jun 2026 09:50:11 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=Yehd4DhbieHxqdnPFx+C2OZiJ4/oV9ani65AADLGU2M=; b=V2+ukKatNizu
	elNZjAgnTJky/aEUl851SsfasBCLobh+ZDQjIOfSlk7ulp81uEr2qiqIi8rDoBnt
	PFCu9cCWfZiv5iVBCkHFwxzJYWXdPOCqvYZEJm6yxIEADifa8DEp9d6Zhh4Sc9l4
	qNOdk8XUXOh/y6W4+mbWPkGWXzneORHc7Ej68i7Xa1Ada9Z0rzjxMRJSNbzTsVGK
	GlH2FNXqkyjDSnbYFMKxFS1wKy5Imi6pQ/UkKMaq+ZL92H2ZwiHfIHKuvijOOzKp
	A3yaXbnjvyXNruLNrhzDR73+Rzb+NbwSVBoPUexboFCeDpBM2JfqeTLcC4BHbnmF
	q3CwwTF7eQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4ehyx2sgc5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Jun 2026 09:50:11 -0700 (PDT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-304f23c55b2so4189989eec.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Jun 2026 09:50:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780419010; x=1781023810;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yehd4DhbieHxqdnPFx+C2OZiJ4/oV9ani65AADLGU2M=;
        b=kSKDQRpXNLkQZ6GM96tqdz4V+SVfqgCsVOhSSLQFVTGFE/Y0BogBox9H/qCC8rpof/
         wzBTqB+JujpkbpN+op4DlxcQfo8VBK7ABphHKY2AHUHuE8pwHaeMP8DLQnqWBdkHB53y
         EDKazlc9vsaNIgFXmama8lbZgAWBiTKtBNDLxrkt1+je212MglnCLSIqJs/JDIJM1kkC
         LFvIiSZzPP0PB5sfPlSgjyySJGcwts4ymFxc2LalUSetqkNwwNOCc9Q/mR7cmyPn36TR
         mFNERoRJLz0EdqY82Ndaj8Q/hPivCWXRpkGRQa9hlgkjEGUmINRvZCbPG6H0XD5jDfTm
         eLBA==
X-Forwarded-Encrypted: i=1; AFNElJ/C88GVWgSs2omc7TZkKOkWLHK/8uLveWVZE7TIAOc+pqbWFJToF/VvJCixcSqLgqTeaaeLQi1TwiOpQ47m@lists.linaro.org
X-Gm-Message-State: AOJu0YyD9r2BlkKzV4NWy9F2oAzTbC5P0ruIOQ/EevStsyPmGx+uFNt4
	OXaMmkPL6IdsbxS0E9D3NxEY8h7l81mN8ugazked1/+0gXEAg6J/Bo5CreRaJBwVuwFvDOr5Kfc
	fxsrEGUGDnhlqn0aFw4kQDpW9cG8eEeJKa3qfOy+hrCLmdhRX/wlnkxXTGjxGc8/F7Us=
X-Gm-Gg: Acq92OGTc1FK+4sfvSK1vbq/SSdltfa5gDcNR/orKtpjhk6+tjkCY9lxriVCSZiL1fb
	HJm3rgALYB9FJ76AieAfgwY40djwBNNaR5jA+iBeY/n0by0Co5jNVxNjQu+p7gfuZoCQy2lgb9E
	4NiEJHj5jKoSmlD7a6BBWr+FWcmm6Grud8Ui1JQD1eP375UwrYhFZJrC/mNLOB8ExiqR2CBxl33
	CN9DQxh3lkliZCQouPiFvCniJF/j6RTUoblSsrtFw8Gbp5/N9W3MI33K/C5LOPyqQzthnjnTGHN
	pcGF5MQ4f0kBn7Dye70Qd6ttst/PTm7IaYyaQScSJLD9lSSO7Z6lqyXWkcyOvpGb30ewVbGpe8B
	+tTiPC1dgBVlo4eBSEp7pAbGWgwkAoHoFnjW2QGBT
X-Received: by 2002:a05:7301:60b:b0:304:d32e:65e7 with SMTP id 5a478bee46e88-304fa2fc9e6mr8157998eec.0.1780419009993;
        Tue, 02 Jun 2026 09:50:09 -0700 (PDT)
X-Received: by 2002:a05:7301:60b:b0:304:d32e:65e7 with SMTP id 5a478bee46e88-304fa2fc9e6mr8157955eec.0.1780419009260;
        Tue, 02 Jun 2026 09:50:09 -0700 (PDT)
Received: from [10.0.40.30] ([51.52.155.79])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-304ee0dd8e1sm16956690eec.21.2026.06.02.09.50.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 09:50:08 -0700 (PDT)
Message-ID: <8854824e-06c2-43b3-86c2-8c2c28f9ad63@meta.com>
Date: Tue, 2 Jun 2026 17:50:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Alex Williamson <alex@shazbot.org>
References: <20260527102319.100128-1-mattev@meta.com>
 <20260527102319.100128-10-mattev@meta.com>
 <20260528171432.771a1a30@shazbot.org>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260528171432.771a1a30@shazbot.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAyMDE2MyBTYWx0ZWRfX6HajqNxJv9jF
 BTSre7Io2rdjiedPDkbfNeSaQNIr9MqBmdmGg1ta4KCwE66/st7DHa0BDHGAFGhM6L1bzPn60gt
 i2qCe44mLVYJisxWnOYdwYKFXBwcfWInF8bUuDJsbzCmr3cDMOmvICJZ9cvC9dyDjn/IAV6eWvo
 L1e5MACOAZ+r72JORySSvrjE+6BN2Flzgn/gEWyhZyJJBsKTL58xD4HjEwjcEQpxIR/uE56YwIf
 Z9deiYGsxGF3rUCykUWItoByyEByl6432TEbvIt28B/xqW10EjrYkWPxF5DD7GcZ8hl9Mj/cojl
 RJHKPohDbKPdHMgD10G8zofSInNs2GxzU1NMB6OLU5SvAB13VHy7WmhNv19RnmY5fhydEb6jiE5
 oNtO9C1X2SQHL3ueq6g+IGcmA7wwn+IC93zrKCEJSIHXPGVqPAW9ascJJLtdHi+9xk0TM0kxbz1
 ctYYcgQae/+R70TW6hA==
X-Proofpoint-GUID: JrAC8QJBECpn-2Lwavj4Q7_2gAj2VZR1
X-Proofpoint-ORIG-GUID: JrAC8QJBECpn-2Lwavj4Q7_2gAj2VZR1
X-Authority-Analysis: v=2.4 cv=EJA2FVZC c=1 sm=1 tr=0 ts=6a1f09c3 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=2UbFsIa4v//lIgRL4kGwwA==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7x6HtfJdh03M6CCDgxCd:22 a=xtH7KyWI9dI7BmFOsl-x:22 a=VabnemYjAAAA:8
 a=xAQEHcCOs6QKEQvX3i8A:9 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-02_02,2026-05-28_03,2025-10-01_01
X-Spamd-Bar: ----
Message-ID-Hash: 2G4IA2Z4CFXOORQPOWDDDYLRXL2NLUW3
X-Message-ID-Hash: 2G4IA2Z4CFXOORQPOWDDDYLRXL2NLUW3
X-MailFrom: prvs=461332670b=mattev@meta.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 9/9] vfio/pci: Add mmap() attributes to DMABUF feature
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2G4IA2Z4CFXOORQPOWDDDYLRXL2NLUW3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[meta.com:s=s2048-2025-q2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:praan@google.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	DKIM_TRACE(0.00)[meta.com:-];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:mid,meta.com:from_mime,meta.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F2FAE630625

Hi Alex,

On 29/05/2026 00:14, Alex Williamson wrote:
> 
> On Wed, 27 May 2026 03:23:12 -0700
> Matt Evans <mattev@meta.com> wrote:
> 
>> A new VFIO feature, VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR, is added to
>> set (and get) CPU-facing memory type attributes for a DMABUF exported
>> from vfio-pci.  These are used for subsequent mmap()s of the buffer.
>>
>> There are two attributes supported:
>>   - The default, VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_UC
>>   - VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC, which results in WC
>>     PTEs for the DMABUF's BAR region.
>>
>> Signed-off-by: Matt Evans <mattev@meta.com>
>> ---
>>   drivers/vfio/pci/vfio_pci_core.c   |  2 +
>>   drivers/vfio/pci/vfio_pci_dmabuf.c | 70 +++++++++++++++++++++++++++++-
>>   drivers/vfio/pci/vfio_pci_priv.h   | 12 +++++
>>   include/uapi/linux/vfio.h          | 27 ++++++++++++
>>   4 files changed, 110 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
>> index 5184b3cac160..e256a925e7ce 100644
>> --- a/drivers/vfio/pci/vfio_pci_core.c
>> +++ b/drivers/vfio/pci/vfio_pci_core.c
>> @@ -1590,6 +1590,8 @@ int vfio_pci_core_ioctl_feature(struct vfio_device *device, u32 flags,
>>   		return vfio_pci_core_feature_token(vdev, flags, arg, argsz);
>>   	case VFIO_DEVICE_FEATURE_DMA_BUF:
>>   		return vfio_pci_core_feature_dma_buf(vdev, flags, arg, argsz);
>> +	case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR:
>> +		return vfio_pci_core_feature_dma_buf_memattr(vdev, flags, arg, argsz);
>>   	default:
>>   		return -ENOTTY;
>>   	}
>> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
>> index 3fa14760898f..db8b95ddbe18 100644
>> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
>> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
>> @@ -42,7 +42,10 @@ static int vfio_pci_dma_buf_mmap(struct dma_buf *dmabuf, struct vm_area_struct *
>>   	 * contained within the DMABUF size before calling this.
>>   	 */
>>   
>> -	vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
>> +	if (READ_ONCE(priv->memattr) == VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC)
>> +		vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);
>> +	else
>> +		vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
>>   	vma->vm_page_prot = pgprot_decrypted(vma->vm_page_prot);
>>   
>>   	/* See comments in vfio_pci_core_mmap() re VM_ALLOW_ANY_UNCACHED. */
>> @@ -464,6 +467,7 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
>>   	priv->vdev = vdev;
>>   	priv->nr_ranges = get_dma_buf.nr_ranges;
>>   	priv->size = length;
>> +	priv->memattr = VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC;
>>   	ret = vdev->pci_ops->get_dmabuf_phys(vdev, &priv->provider,
>>   					     get_dma_buf.region_index,
>>   					     priv->phys_vec, dma_ranges,
>> @@ -731,4 +735,68 @@ int vfio_pci_dma_buf_revoke(struct vfio_pci_core_device *vdev, int dmabuf_fd)
>>   
>>   	return ret;
>>   }
>> +
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
>> +				 VFIO_DEVICE_FEATURE_GET |
>> +				 VFIO_DEVICE_FEATURE_SET,
>> +				 sizeof(db_attr));
> 
> I don't see why this needs to support GET.  Are we solving a userspace
> problem that doesn't exist?

Possibly, I'm a bit twitchy about unobservable/write-only internal state 
so added GET out of habit.  However, no worries, removed it and this 
function is now much lighter.

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
>> +	if (dmabuf->ops != &vfio_pci_dmabuf_ops || priv->vdev != vdev) {
>> +		ret = -ENODEV;
>> +		goto out_put_buf;
>> +	}
>> +
>> +	ret = 0;
>> +	scoped_guard(rwsem_write, &vdev->memory_lock) {
> 
> Why?  This doesn't serialize against mmap.  Just use a WRITE_ONCE() to
> match the READ_ONCE() on mmap?

Ooops, good point.  Fixed.

>> +		uint32_t old_attr = priv->memattr;
>> +
>> +		if (flags & VFIO_DEVICE_FEATURE_SET) {
>> +			switch(db_attr.memattr) {
>> +			case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC:
>> +			case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC:
>> +				priv->memattr = db_attr.memattr;
>> +				break;
>> +
>> +			default:
>> +				ret = -ENOTSUPP;
> 
> -EINVAL

I'd like to push back on this one; ENOTSUPP distinguishes trying to use 
a wild attribute value from all manner of other screwups such as
trying to GET (with it no longer supported), passing an fd that isn't a 
DMABUF, etc.

I'm not wed to the value ENOTSUPP, just something distinctive versus the 
other errors userspace might see, and that value seems appropriate.

>> +			}
>> +		}
>> +		db_attr.memattr = old_attr;
>> +	}
>> +
>> +	if (!ret && (flags & VFIO_DEVICE_FEATURE_GET)) {
>> +		if (copy_to_user(arg, &db_attr, sizeof(db_attr)))
>> +			ret = -EFAULT;
>> +	}
>> +
>> + out_put_buf:
>> +	dma_buf_put(dmabuf);
>> +
>> +	return ret;
>> +
>> +}
>>   #endif /* CONFIG_VFIO_PCI_DMABUF */
>> diff --git a/drivers/vfio/pci/vfio_pci_priv.h b/drivers/vfio/pci/vfio_pci_priv.h
>> index a1e0f4fcb1dc..8067be45beb0 100644
>> --- a/drivers/vfio/pci/vfio_pci_priv.h
>> +++ b/drivers/vfio/pci/vfio_pci_priv.h
>> @@ -41,6 +41,7 @@ struct vfio_pci_dma_buf {
>>   	struct kref kref;
>>   	struct completion comp;
>>   	unsigned long vma_pgoff_adjust;
>> +	u32 memattr;
>>   	enum vfio_pci_dma_buf_status status;
>>   };
>>   
>> @@ -154,6 +155,10 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoked);
>>   int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
>>   				  struct vfio_device_feature_dma_buf __user *arg,
>>   				  size_t argsz);
>> +int vfio_pci_core_feature_dma_buf_memattr(
>> +	struct vfio_pci_core_device *vdev, u32 flags,
>> +	struct vfio_device_feature_dma_buf_memattr __user *arg,
>> +	size_t argsz);
>>   int vfio_pci_dma_buf_revoke(struct vfio_pci_core_device *vdev, int dmabuf_fd);
>>   #else
>>   static inline int
>> @@ -163,6 +168,13 @@ vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
>>   {
>>   	return -ENOTTY;
>>   }
>> +static inline int vfio_pci_core_feature_dma_buf_memattr(
>> +	struct vfio_pci_core_device *vdev, u32 flags,
>> +	struct vfio_device_feature_dma_buf_memattr __user *arg,
>> +	size_t argsz)
>> +{
>> +	return -ENODEV;
> 
> -ENOTTY

Gotcha, fixed.  Yes, that's quite conspicuous versus the chunk above, 
unsure where I got that from.


Thank you,


Matt


> 
> Thanks,
> Alex
> 
>> +}
>>   static inline int vfio_pci_dma_buf_revoke(struct vfio_pci_core_device *vdev,
>>   					  int dmabuf_fd)
>>   {
>> diff --git a/include/uapi/linux/vfio.h b/include/uapi/linux/vfio.h
>> index 02366e9f8e16..9b0b68f8a1ef 100644
>> --- a/include/uapi/linux/vfio.h
>> +++ b/include/uapi/linux/vfio.h
>> @@ -1564,6 +1564,33 @@ struct vfio_device_feature_dma_buf {
>>    */
>>   #define VFIO_DEVICE_FEATURE_MIG_PRECOPY_INFOv2  12
>>   
>> +/**
>> + * Given a dma_buf fd previously created by
>> + * VFIO_DEVICE_FEATURE_DMA_BUF, GET or SET the memory attribute that
>> + * will be used by future mmap()s of that fd.  SETting a new attribute
>> + * does not affect existing VMAs.
>> + *
>> + * The default, if no previous SET has been performed, is NC.
>> + *
>> + * Return: 0 on success, -1 and errno is set on failure:
>> + *
>> + *  ENOTSUPP: The given memattr is not supported.
>> + *  EBADF, EINVAL: dmabuf_fd is not a DMABUF fd.
>> + *  ENODEV: The dmabuf_fd does not match this VFIO device.
>> + */
>> +#define VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR 13
>> +
>> +/* Valid memory attributes for the memattr field */
>> +enum vfio_device_dma_buf_memattr {
>> +	VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC = 0, /* pgprot_noncached */
>> +	VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC = 1, /* pgprot_writecombine */
>> +};
>> +
>> +struct vfio_device_feature_dma_buf_memattr {
>> +	__s32	dmabuf_fd;
>> +	__u32	memattr;
>> +};
>> +
>>   /* -------- API for Type1 VFIO IOMMU -------- */
>>   
>>   /**
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
