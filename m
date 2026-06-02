Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FOFKLW8HH2rSdgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 18:40:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4AB63049F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 18:40:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=meta.com header.s=s2048-2025-q2 header.b=HOg7qB1Z;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=meta.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D289F3F817
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 16:40:13 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id 2AA7D3F817
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Jun 2026 16:40:02 +0000 (UTC)
Received: from pps.filterd (m0044012.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 652EIgxR3944923
	for <linaro-mm-sig@lists.linaro.org>; Tue, 2 Jun 2026 09:40:01 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=aQM+IzQj3ZxDY3ggA3owlA7d3KkShBiCJ4vlXvqOyDo=; b=HOg7qB1ZuQW4
	6lBSat61mKhK+MnCr8cVctmCY8FdH0jD5Vqo1SZjiJT1PXSaE6jJQVDirlh/htm/
	9o6dj/yg6WQlQu1Ag3gFjinhmPlncdZ+iDtruJCHvVEKqdsfNMXoAkXSrKPtLDTA
	3xX8W/GYXP0Aq5Gq6Ync/girYSkqCalmedMCwx9NdEVzNdCIolWzgFPcYbZtVZgO
	Jn4AyjLkjiJuARnKpqqzKSPyRW9JD8y2/mqfCdNwg8CHUTH8ACHXhAFYvzpVOmgy
	952MRLNOgD4wNbb/nZkLL1ZWSrP4TZejD+XKBEBOdJHJiP/7oON+DmOd/cec5Y2L
	4bhL4BgFWQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4ej0tq92da-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Jun 2026 09:40:00 -0700 (PDT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-304e7fbfaf5so8234446eec.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Jun 2026 09:40:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780418400; x=1781023200;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aQM+IzQj3ZxDY3ggA3owlA7d3KkShBiCJ4vlXvqOyDo=;
        b=NDu9BnTqSzzOjHd9ixe0sVkQxayB1iSRRvQk5hwcp+KqsZVWwPd0ZTwpyfi6whPJv5
         fVKRu4c2uNeSnaTxw0NO4qWKBE2SSQFMxco2XqukuhVBpg8RRgOAafxU1oYsUFMIcMZ8
         KQQRlmLrM8GJVNQ1ypaZVdwCuXKaFy7yLrWc0HRsWscyaXw7jNbv2xdsd3Hh7L3QBL2l
         YiryTDIpVh3lHrX1vojfahRPrrijilGD6JOqwkG5y3pfjwnm9aD3rkIuVYBt7nrRczbp
         RapavNUUdNTIHHtRgY7UwI/AhJWh72RuedTwipW/FyZNG/b8Y4i+bkMZDQDJ5ydmzctu
         UqfA==
X-Forwarded-Encrypted: i=1; AFNElJ8cMBPXGi3skere2A45/duBsvszoexKP5cYovtBFkBfPpx1rr73hIVbZUkD33a9kmQJu/KcfFbwd7T8ddj7@lists.linaro.org
X-Gm-Message-State: AOJu0YzLC4sPKqw82uRmU7J2zR3YT2ckkWHwLuacsmoQFNnfdkIPyfuT
	37Qn3X4YVLtfCHf6zERtrBX767qUMb2iZK1cT+ghbb2J1a6zUGxDuTt821kph7Zr3aqtLSLzw6V
	7qjVEteScNDn7DZ+VV3phwsAZqBqSNYHo5rbTkg6/xf2RsKFlWHdEKPDjzEIk2UD0N08=
X-Gm-Gg: Acq92OG6xOIKHLrGubzSnndZ4oDzREbRZSpFKRB5hSEqwEYGbeVEZvqVpm8kffC1YZL
	VEcPj4WSeqwxNhxU26aHlJ4AOaRZTfjxF0+Y2zF54Bwuqy39w/bVmDkynS7wVxHj2sViJsj2KQY
	NXUuYefYoBIj5+DS8KqHTR55m8cjFZMilBzvf461RdEJAGIMAk2Vl+rMSbQr5K8CqCitppSvnFv
	beWAeRPwzlunVzVoxdpyc/4c7/vpvwGf938P0VpoYY4Skf9tzmuI9+5PpyR45pdICGur83W/sIA
	BbLi/moP6xAxwKuku6QyO666260i9J2Zv8WwRfHCgcNY+tlWYuzE4NvqAgFuO0iYXnkQGRv2OiN
	sV/9LNU1PG+ZdTPxpHwXJKiAwLH3e6qq96uUkAtSh
X-Received: by 2002:a05:693c:2c0e:b0:304:e450:67e0 with SMTP id 5a478bee46e88-304fa4c81d5mr8098513eec.10.1780418400060;
        Tue, 02 Jun 2026 09:40:00 -0700 (PDT)
X-Received: by 2002:a05:693c:2c0e:b0:304:e450:67e0 with SMTP id 5a478bee46e88-304fa4c81d5mr8098467eec.10.1780418399427;
        Tue, 02 Jun 2026 09:39:59 -0700 (PDT)
Received: from [10.0.40.30] ([51.52.155.79])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-304ed2c10c1sm11553860eec.1.2026.06.02.09.39.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 09:39:59 -0700 (PDT)
Message-ID: <dfa4d88b-9182-499c-b2ba-dbde0fc32745@meta.com>
Date: Tue, 2 Jun 2026 17:39:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Alex Williamson <alex@shazbot.org>
References: <20260527102319.100128-1-mattev@meta.com>
 <20260527102319.100128-4-mattev@meta.com>
 <20260527165922.60a79fee@shazbot.org>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260527165922.60a79fee@shazbot.org>
X-Proofpoint-GUID: ANqlZC6mJkBogldrFZudSliVhAhOvdxq
X-Authority-Analysis: v=2.4 cv=avKCzyZV c=1 sm=1 tr=0 ts=6a1f0761 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=2UbFsIa4v//lIgRL4kGwwA==:17
 a=Dv35txUGz5gI0hTa:21 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22 a=PAz_-FQ8hEVmOPYdF0yf:22
 a=VabnemYjAAAA:8 a=73EwkdylJAySbZmAXzAA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAyMDE2MSBTYWx0ZWRfX2rUqoz1AX1yq
 3LY4crQFr41v8RQgayaOUitB4Mk2ast89KvMfcgOmGEn44cPDNkQDl1mqQGk+tFIVjbmjd8RaSP
 SKiFwkvwbEBAp3k2VytBRevLye8JK2JtMKPG+B58EKi4eVZr/D8VQmSN9fSfGZ6JENVxl397tjq
 w7J1TiSdG9is8WM2DLix36iX0FbkLF2Mak7T5nu1XVe8e8Tt2ydDXQyDsUUnrmGe7T+MJbSQWkz
 Mwh1kRR3DrqKgavgYW1mmdOj+7oLeCbNd+AW4hcAbk1tXmkPVoSJeKoNp4PGbIuwau8EOkjiS3X
 +8o8uUGScZM/bWxBrCnmw5njgnolU6fgB6OZ4geRX6wXqbhU4khp/dL5MWq8zzj9DIWQPp1Pk2x
 xX4cvZDw+ZrRxarxapxo05U5HWKuQAhQCd5paHg7hLzR+fszCcgrggCbszcr2NwhXEgt0MX5U/F
 nAm0EdX8HVlngQ1sZ3A==
X-Proofpoint-ORIG-GUID: ANqlZC6mJkBogldrFZudSliVhAhOvdxq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-02_02,2026-05-28_03,2025-10-01_01
X-Spamd-Bar: ----
Message-ID-Hash: HYPYHD4ARQLKH7B5QWUSJTEFGQZ7R7NV
X-Message-ID-Hash: HYPYHD4ARQLKH7B5QWUSJTEFGQZ7R7NV
X-MailFrom: prvs=461332670b=mattev@meta.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/9] vfio/pci: Add a helper to create a DMABUF for a BAR-map VMA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HYPYHD4ARQLKH7B5QWUSJTEFGQZ7R7NV/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:praan@google.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,meta.com:mid,meta.com:from_mime,meta.com:email,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BF4AB63049F

Hi Alex,

On 27/05/2026 23:59, Alex Williamson wrote:
> 
> On Wed, 27 May 2026 03:23:06 -0700
> Matt Evans <mattev@meta.com> wrote:
> 
>> This helper, vfio_pci_core_mmap_prep_dmabuf(), creates a single-range
>> DMABUF for the purpose of mapping a PCI BAR.  This is used in a future
>> commit by VFIO's ordinary mmap() path.
>>
>> This function transfers ownership of the VFIO device fd to the
>> DMABUF, which fput()s when it's released.
>>
>> Refactor the existing vfio_pci_core_feature_dma_buf() to split out
>> export code common to the two paths, VFIO_DEVICE_FEATURE_DMA_BUF and
>> this new VFIO_BAR mmap().
>>
>> Signed-off-by: Matt Evans <mattev@meta.com>
>> ---
>>   drivers/vfio/pci/vfio_pci_dmabuf.c | 140 ++++++++++++++++++++++-------
>>   drivers/vfio/pci/vfio_pci_priv.h   |   5 ++
>>   2 files changed, 115 insertions(+), 30 deletions(-)
>>
>> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
>> index 0d132c4ca95f..782408c08a5e 100644
>> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
>> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
>> @@ -82,6 +82,8 @@ static void vfio_pci_dma_buf_release(struct dma_buf *dmabuf)
>>   		up_write(&priv->vdev->memory_lock);
>>   		vfio_device_put_registration(&priv->vdev->vdev);
>>   	}
>> +	if (priv->vfile)
>> +		fput(priv->vfile);
>>   	kfree(priv->phys_vec);
>>   	kfree(priv);
>>   }
>> @@ -222,6 +224,45 @@ int vfio_pci_dma_buf_find_pfn(struct vfio_pci_dma_buf *vpdmabuf,
>>   	return -EFAULT;
>>   }
>>   
>> +/*
>> + * Create a DMABUF corresponding to priv, add it to vdev->dmabufs list
>> + * for tracking (meaning cleanup or revocation will zap it), and take
>> + * a vfio_device registration.
>> + */
>> +static int vfio_pci_dmabuf_export(struct vfio_pci_core_device *vdev,
>> +				  struct vfio_pci_dma_buf *priv, uint32_t flags)
> 
> s/uint32_t/u32/?

Fixed.

>> +{
>> +	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
>> +
>> +	if (!vfio_device_try_get_registration(&vdev->vdev))
>> +		return -ENODEV;
>> +
>> +	exp_info.ops = &vfio_pci_dmabuf_ops;
>> +	exp_info.size = priv->size;
>> +	exp_info.flags = flags;
>> +	exp_info.priv = priv;
>> +
>> +	priv->dmabuf = dma_buf_export(&exp_info);
>> +	if (IS_ERR(priv->dmabuf)) {
>> +		vfio_device_put_registration(&vdev->vdev);
>> +		return PTR_ERR(priv->dmabuf);
>> +	}
>> +
>> +	kref_init(&priv->kref);
>> +	init_completion(&priv->comp);
>> +
>> +	/* dma_buf_put() now frees priv */
>> +	INIT_LIST_HEAD(&priv->dmabufs_elm);
>> +	down_write(&vdev->memory_lock);
>> +	dma_resv_lock(priv->dmabuf->resv, NULL);
>> +	priv->revoked = !__vfio_pci_memory_enabled(vdev);
>> +	list_add_tail(&priv->dmabufs_elm, &vdev->dmabufs);
>> +	dma_resv_unlock(priv->dmabuf->resv);
>> +	up_write(&vdev->memory_lock);
>> +
>> +	return 0;
>> +}
>> +
>>   /*
>>    * This is a temporary "private interconnect" between VFIO DMABUF and iommufd.
>>    * It allows the two co-operating drivers to exchange the physical address of
>> @@ -340,7 +381,6 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
>>   {
>>   	struct vfio_device_feature_dma_buf get_dma_buf = {};
>>   	struct vfio_region_dma_range *dma_ranges;
>> -	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
>>   	struct vfio_pci_dma_buf *priv;
>>   	size_t length;
>>   	int ret;
>> @@ -400,34 +440,9 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
>>   	kfree(dma_ranges);
>>   	dma_ranges = NULL;
>>   
>> -	if (!vfio_device_try_get_registration(&vdev->vdev)) {
>> -		ret = -ENODEV;
>> +	ret = vfio_pci_dmabuf_export(vdev, priv, get_dma_buf.open_flags);
>> +	if (ret)
>>   		goto err_free_phys;
>> -	}
>> -
>> -	exp_info.ops = &vfio_pci_dmabuf_ops;
>> -	exp_info.size = priv->size;
>> -	exp_info.flags = get_dma_buf.open_flags;
>> -	exp_info.priv = priv;
>> -
>> -	priv->dmabuf = dma_buf_export(&exp_info);
>> -	if (IS_ERR(priv->dmabuf)) {
>> -		ret = PTR_ERR(priv->dmabuf);
>> -		goto err_dev_put;
>> -	}
>> -
>> -	kref_init(&priv->kref);
>> -	init_completion(&priv->comp);
>> -
>> -	/* dma_buf_put() now frees priv */
>> -	INIT_LIST_HEAD(&priv->dmabufs_elm);
>> -	down_write(&vdev->memory_lock);
>> -	dma_resv_lock(priv->dmabuf->resv, NULL);
>> -	priv->revoked = !__vfio_pci_memory_enabled(vdev);
>> -	list_add_tail(&priv->dmabufs_elm, &vdev->dmabufs);
>> -	dma_resv_unlock(priv->dmabuf->resv);
>> -	up_write(&vdev->memory_lock);
>> -
>>   	/*
>>   	 * dma_buf_fd() consumes the reference, when the file closes the dmabuf
>>   	 * will be released.
>> @@ -438,8 +453,6 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
>>   
>>   	return ret;
>>   
>> -err_dev_put:
>> -	vfio_device_put_registration(&vdev->vdev);
>>   err_free_phys:
>>   	kfree(priv->phys_vec);
>>   err_free_priv:
>> @@ -449,6 +462,73 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
>>   	return ret;
>>   }
>>   
>> +int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
>> +				   struct vm_area_struct *vma,
>> +				   u64 phys_start, u64 req_len,
>> +				   unsigned int res_index)
>> +{
>> +	struct vfio_pci_dma_buf *priv;
>> +	const unsigned int nr_ranges = 1;
> 
> Why, versus priv->nr_ranges = 1; below?  Thanks,

Hm, a vestige from a simpler time when it was a different shape and 
unnecessary now, fixed as per suggestion.


Thanks,


Matt

> Alex
> 
>> +	unsigned long vma_pgoff = vma->vm_pgoff & (VFIO_PCI_OFFSET_MASK >> PAGE_SHIFT);
>> +	int ret;
>> +
>> +	priv = kzalloc_obj(*priv);
>> +	if (!priv)
>> +		return -ENOMEM;
>> +
>> +	priv->phys_vec = kzalloc_obj(*priv->phys_vec);
>> +	if (!priv->phys_vec) {
>> +		ret = -ENOMEM;
>> +		goto err_free_priv;
>> +	}
>> +
>> +	/*
>> +	 * The DMABUF begins from the mmap()'s BAR offset, i.e. the
>> +	 * start of the VMA corresponds to byte 0 of the DMABUF and
>> +	 * byte (vma_pgoff << PAGE_SHIFT) of the BAR.
>> +	 *
>> +	 * vfio_pci_dma_buf_find_pfn() reverses this offset using
>> +	 * vma_pgoff_adjust, so that ultimately a fault's offset from
>> +	 * the start of the _VMA_ has a consistent usage whether the
>> +	 * VMA originates from an mmap() of the VFIO device here or a
>> +	 * direct DMABUF mmap().
>> +	 */
>> +	priv->vdev = vdev;
>> +	priv->size = req_len;
>> +	priv->nr_ranges = nr_ranges;
>> +	priv->vma_pgoff_adjust = vma_pgoff;
>> +	priv->provider = pcim_p2pdma_provider(vdev->pdev, res_index);
>> +	if (!priv->provider) {
>> +		ret = -EINVAL;
>> +		goto err_free_phys;
>> +	}
>> +
>> +	priv->phys_vec[0].paddr = phys_start + ((u64)vma_pgoff << PAGE_SHIFT);
>> +	priv->phys_vec[0].len = priv->size;
>> +
>> +	ret = vfio_pci_dmabuf_export(vdev, priv, O_CLOEXEC | O_RDWR);
>> +	if (ret)
>> +		goto err_free_phys;
>> +
>> +	/*
>> +	 * The VMA gets the DMABUF file so that other users can locate
>> +	 * the DMABUF via a VA.  Ownership of the original VFIO device
>> +	 * file being mmap()ed transfers to priv, and is put when the
>> +	 * DMABUF is released.
>> +	 */
>> +	priv->vfile = vma->vm_file;
>> +	vma->vm_file = priv->dmabuf->file;
>> +	vma->vm_private_data = priv;
>> +
>> +	return 0;
>> +
>> +err_free_phys:
>> +	kfree(priv->phys_vec);
>> +err_free_priv:
>> +	kfree(priv);
>> +	return ret;
>> +}
>> +
>>   void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoked)
>>   {
>>   	struct vfio_pci_dma_buf *priv;
>> diff --git a/drivers/vfio/pci/vfio_pci_priv.h b/drivers/vfio/pci/vfio_pci_priv.h
>> index c8f6f959056a..06dc0fd3e230 100644
>> --- a/drivers/vfio/pci/vfio_pci_priv.h
>> +++ b/drivers/vfio/pci/vfio_pci_priv.h
>> @@ -30,6 +30,7 @@ struct vfio_pci_dma_buf {
>>   	size_t size;
>>   	struct phys_vec *phys_vec;
>>   	struct p2pdma_provider *provider;
>> +	struct file *vfile;
>>   	u32 nr_ranges;
>>   	struct kref kref;
>>   	struct completion comp;
>> @@ -133,6 +134,10 @@ int vfio_pci_dma_buf_find_pfn(struct vfio_pci_dma_buf *vpdmabuf,
>>   			      unsigned long address,
>>   			      unsigned int order,
>>   			      unsigned long *out_pfn);
>> +int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
>> +				   struct vm_area_struct *vma,
>> +				   u64 phys_start, u64 req_len,
>> +				   unsigned int res_index);
>>   
>>   #ifdef CONFIG_VFIO_PCI_DMABUF
>>   int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
