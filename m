Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOFiG3BgBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:28:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D672532412
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:28:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A7A38404A0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:28:46 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id 5064C3F72F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 13:53:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b="gW3xmhO/";
	dmarc=pass (policy=reject) header.from=meta.com;
	spf=pass (lists.linaro.org: domain of "prvs=358647ce9a=mattev@meta.com" designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=358647ce9a=mattev@meta.com"
Received: from pps.filterd (m0528008.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6466r9ue3686079
	for <linaro-mm-sig@lists.linaro.org>; Wed, 6 May 2026 06:53:36 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=Wr10VTJN3duBxSrKADAl6R/6nUDyzwk22GvJwJKGKOw=; b=gW3xmhO/sRQz
	XJqsiB30MPqABfSYdPyLP0Gn/OezmfyWpq/Qzqjhz2ze7SQRMEXSQHa99g+b7Iir
	gFzVLc2FOh5mAKnK8IvSBVns4QA0YXbcRl87u0f1pieyGY90bP6vERpbS+L7g+P9
	DHCWf4PcInhjkxO+Gm7vkvPJ6GVW5B0TpH8Jp8xFidA4r6Hlogd/JJy3L8saGMRk
	15ap4MCtUXuicSVe2/hcNksNiN8B1EbtQCmsjgszWsFwGMWCoArp5Upp87gHiWGn
	78NOQtEVTH4koE76G93+00BqHzW9i4PIfjFdjf47b5lVOIeDazmu1SVOr2EArvRI
	msxzNEBCAw==
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4dx5vjm727-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 06 May 2026 06:53:36 -0700 (PDT)
Received: by mail-ed1-f70.google.com with SMTP id 4fb4d7f45d1cf-67c3d3a11ceso3376127a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 06 May 2026 06:53:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778075614; x=1778680414;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wr10VTJN3duBxSrKADAl6R/6nUDyzwk22GvJwJKGKOw=;
        b=IbItzuZ96sYAV8uGSPknrvjJl0MH/1IHTkCG1mJGoEwqWs4LEkqbbvLNR2Bxacm7kb
         aP9eScwRVh0aNplP8RDQXz7O9mbEfoG5kOZG5u/N0WlsGTqxGRbuzRGLq2PBcrZVc8Rk
         L7hl8KBrX+Yy4Bf1OQBd8Se2hcYAiZjNAIz0ORvF+nElojmv7T6ZP278lLVzj0oQXMzy
         Ha6CljrVBRpBqZHi/qDRALy55L1AMAZW+M6CrDZ611c2UujySVtDD4ipwd/9BHD4VGDT
         a0mUx0+q1netpZ1B6wNe+7066AIQsmSYr/n2PwPs7X5CEvNj0FDpffzn+CwE6OyLz1vt
         o1EQ==
X-Forwarded-Encrypted: i=1; AFNElJ/cR69kUp4vPUssx0JnoqvkfAmxUFFXFjTrqQ4rGPopf6SoZjk4UEvoCcv5A4wIylfWVU185B58Ki+XcwPu@lists.linaro.org
X-Gm-Message-State: AOJu0Yz4C160bHsxv2mZRrpl5j968Og1SkKs+ddvU/EGnjVF+7hFP+rz
	0Wz4MFy9sY9Ds/R1t4TPt1CYMbZpOOhWENw7PxeyFA7ACl4bKszTcHhdxiigCmYF+6L1J0WT2Fu
	fzm+CViCYkHcgkm09Gd45qXaNv83XAvz6goB4z2T6GkQ1Fojf4R2VJBZN1AMhDb5n02o=
X-Gm-Gg: AeBDietblNCZZBWwuzos03gCNkmYz9vqlyp4djIy/jS+GKs+i73AJKwZf28Sp9xLulM
	z62YzFM3xi/nvZsj/3J0NPAxF8Pc9XPIWwRTv9sfifyoZhJGZUapIf6TBtwH36r/yX3ArBvJ11m
	gDXffu4org7GZz/V/H/rYFVxiWCZZ5nyly6pQJ/jhczVHqpyDZqnVBnnfquqIOILqRsMgZ7Rx4e
	hReSJF2QCPGH5haivNeBUHhafNj/Afr7pxuEVBYvIbBTVc9KcxOPZhqEiE9VypFfbSTWZvPeUOM
	oZs5+niUGmEOYHnkjv/0BU300i4MQgANrOf14UzBtiV7p8uvx7vqS8fVY0A9CsW04KxeZH/75vv
	E2PxIFixiGF0U0Kny9kqq1oKYpJ0PCWxTklTAR7wPTWLNLnAWKmqp2stf1MMXch0yLbkJfg0Xtg
	BBtcNmvfk94q4LSPM9c/5hAGvY1lazpgnbvWQAhXf0b/1HWzXGGu2/iDQxbfPyTqOxFlOCnYcoO
	qkGxNqzqeUG2+D5XaGstqjLP/p8eXnWVA==
X-Received: by 2002:a05:6402:3788:b0:674:b1b1:d039 with SMTP id 4fb4d7f45d1cf-67d63db380emr1617965a12.11.1778075614612;
        Wed, 06 May 2026 06:53:34 -0700 (PDT)
X-Received: by 2002:a05:6402:3788:b0:674:b1b1:d039 with SMTP id 4fb4d7f45d1cf-67d63db380emr1617931a12.11.1778075614040;
        Wed, 06 May 2026 06:53:34 -0700 (PDT)
Received: from ?IPV6:2001:8b0:8b6:13d4:102e:f2af:e074:5cde? (e.d.c.5.4.7.0.e.f.a.2.f.e.2.0.1.4.d.3.1.6.b.8.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:8b6:13d4:102e:f2af:e074:5cde])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-67cd904fe68sm1337174a12.0.2026.05.06.06.53.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 06:53:33 -0700 (PDT)
Message-ID: <9304aada-ee84-4cf2-a1d7-82313eda07aa@meta.com>
Date: Wed, 6 May 2026 14:53:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Alex Williamson <alex@shazbot.org>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-2-mattev@meta.com>
 <20260501131236.278ac431@shazbot.org>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260501131236.278ac431@shazbot.org>
X-Proofpoint-ORIG-GUID: 3LbhupOHgrC1xk1EPa1OdkGLP1qwd_Gf
X-Proofpoint-GUID: 3LbhupOHgrC1xk1EPa1OdkGLP1qwd_Gf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA2MDEzNiBTYWx0ZWRfX+Ctkym/fUgnI
 5JJfpWC6Vbmx76mx/LWTHYX3ZPyhNtztFHkJ09kLbBW94iJALrI1gRTg4Ip3yk+sNHs+FSRx9sF
 LeflkyzGLER0xJw+dsY/4SQJ4OfLQ/foUlDP8UGw0rvYoTMEuqyZ2CBoljsla5SgaC4YpDXSvxS
 U9EF9zPhUVGTbTWG8vjsEtBgdIvytcmTefwdYJHnccLMBnKYb1sHkItmmD2/GRIwwFy5i1+M9pz
 LbTzqqZQPKhFop9YMgj5NNisRkx70iPj5yTFgMVns4FzQtJRzvleI62TOElUG7scXFH34qzoUVY
 qPkWixZQ1P5lMVKd5geznIhqy9OCnXsI0uIGyY/w+/3AvteO5qt7CjMbYsGWfIQDaVB/T5aEviW
 2BgXux79TNLSiEmkowUP9Yct9dQz09GHILGAh5yWEs6PREJJUDTGL3d1FX5QyHSGMOzu5+i/M9v
 CzJ8pFwxW2IXUk98hEg==
X-Authority-Analysis: v=2.4 cv=fvrsol4f c=1 sm=1 tr=0 ts=69fb47e0 cx=c_pps
 a=CYpx6mtW7qE8U/l5VCnCPQ==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=_1IyUuN4QrATX339ibzo:22 a=VwQbUJbxAAAA:8 a=UqCG9HQmAAAA:8 a=Ikd4Dj_1AAAA:8
 a=VabnemYjAAAA:8 a=CQcdbiei6IkXp1Z0tZsA:9 a=QEXdDO2ut3YA:10
 a=22KAYETGZJnyhCxlFjxL:22 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_03,2026-05-06_01,2025-10-01_01
X-Spamd-Bar: ----
X-MailFrom: prvs=358647ce9a=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4IME56MTU7TABZ25GAQVAHEEJA5LG6L4
X-Message-ID-Hash: 4IME56MTU7TABZ25GAQVAHEEJA5LG6L4
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:46 +0000
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, =?UTF-8?Q?Carlos_L=C3=B3pez?= <clopez@suse.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] vfio/pci: Fix vfio_pci_dma_buf_cleanup() double-put
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4IME56MTU7TABZ25GAQVAHEEJA5LG6L4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 1D672532412
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[165];
	R_DKIM_REJECT(1.00)[meta.com:s=s2048-2025-q2];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[meta.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.289];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

Hi Alex,

On 01/05/2026 20:12, Alex Williamson wrote:
> 
> On Thu, 16 Apr 2026 06:17:44 -0700
> Matt Evans <mattev@meta.com> wrote:
> 
>> vfio_pci_dma_buf_cleanup() assumed all VFIO device DMABUFs need to be
>> revoked.  However, if vfio_pci_dma_buf_move() revokes DMABUFs before
>> the fd/device closes, then vfio_pci_dma_buf_cleanup() would do a
>> second/underflowing kref_put() then wait_for_completion() on a
>> completion that never fires.  Fixed by predicating on revocation
>> status.
>>
>> This could happen if PCI_COMMAND_MEMORY is cleared before closing the
>> device fd (but the scenario is more likely to hit when future commits
>> add more methods to revoke DMABUFs).
>>
>> Fixes: 1a8a5227f2299 ("vfio: Wait for dma-buf invalidation to complete")
>> Signed-off-by: Matt Evans <mattev@meta.com>
>> ---
>>
>> (Just a fix, but later "vfio/pci: Convert BAR mmap() to use a DMABUF"
>> and "vfio/pci: Permanently revoke a DMABUF on request" depend on this
>> context, so including in this series.)
> 
> We really need a fix for this split out from this series, It's already
> been shown[1] that this is trivially reachable.  Carlos proposed[2] a
> similar solution to the one below.  I was concurrently working on the
> issued and suggested an alternative[3].  Let's pick a solution for
> 7.1-rc.  Thanks,

It looks like [3] is progressing, so I'll drop this one when I can 
rebase onto it.

I noticed [3] removes the dma_resv_lock(priv->dmabuf->resv) around the 
priv->vdev = NULL, and this series' vfio_pci_mmap_huge_fault() relies on 
vdev only changing whilst resv is held to resolve a race between a fault 
and cleanup (see patch 7 of this series).  The handler takes resv so 
that it can stably test vdev in order to take memory_lock.

Must your fix change vdev outside of holding resv?  I'm still sketching 
alternatives; at first glance perhaps the fault handler could rely on 
vdev being valid if !revoked, which can be tested holding [only] resv.


Thanks,

Matt

> 
> Alex
> 
> [1]https://lore.kernel.org/all/GVXPR02MB12019AA6014F27EF5D773E89BFB372@GVXPR02MB12019.eurprd02.prod.outlook.com/
> [2]https://lore.kernel.org/all/20260429182736.409323-2-clopez@suse.de/
> [3]https://lore.kernel.org/all/20260429142242.70f746b4@nvidia.com/
> 
>   
>> drivers/vfio/pci/vfio_pci_dmabuf.c | 9 +++++++--
>>   1 file changed, 7 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
>> index 281ba7d69567..04478b7415a0 100644
>> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
>> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
>> @@ -395,20 +395,25 @@ void vfio_pci_dma_buf_cleanup(struct vfio_pci_core_device *vdev)
>>   
>>   	down_write(&vdev->memory_lock);
>>   	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
>> +		bool was_revoked;
>> +
>>   		if (!get_file_active(&priv->dmabuf->file))
>>   			continue;
>>   
>>   		dma_resv_lock(priv->dmabuf->resv, NULL);
>>   		list_del_init(&priv->dmabufs_elm);
>>   		priv->vdev = NULL;
>> +		was_revoked = priv->revoked;
>>   		priv->revoked = true;
>>   		dma_buf_invalidate_mappings(priv->dmabuf);
>>   		dma_resv_wait_timeout(priv->dmabuf->resv,
>>   				      DMA_RESV_USAGE_BOOKKEEP, false,
>>   				      MAX_SCHEDULE_TIMEOUT);
>>   		dma_resv_unlock(priv->dmabuf->resv);
>> -		kref_put(&priv->kref, vfio_pci_dma_buf_done);
>> -		wait_for_completion(&priv->comp);
>> +		if (!was_revoked) {
>> +			kref_put(&priv->kref, vfio_pci_dma_buf_done);
>> +			wait_for_completion(&priv->comp);
>> +		}
>>   		vfio_device_put_registration(&vdev->vdev);
>>   		fput(priv->dmabuf->file);
>>   	}
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
