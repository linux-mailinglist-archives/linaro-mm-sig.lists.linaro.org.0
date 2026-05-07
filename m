Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKekK7pgBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:30:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A935532496
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:30:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC7C7402DC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:30:00 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id 560EC3EC66
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 08:00:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b="qL/Obi5d";
	spf=pass (lists.linaro.org: domain of "prvs=3587027ada=mattev@meta.com" designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=3587027ada=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0148461.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 647Ghf1O778015
	for <linaro-mm-sig@lists.linaro.org>; Thu, 7 May 2026 09:56:15 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=AStKs7gIf+H7qi7ZzQdIOFiCgW57yK3MpNAkRUF2is0=; b=qL/Obi5dvBwt
	i9c2sv9SNtqXpLw63YE0iVFyLwL6b4BaMhACgc6cvxDCuo+iXEgY5AqcK8DYXOfG
	Oy2Cy3R2kU+21KVGKEdcKnO+JORfiteK8SES7tlFIxyrNJzXgNQnK5HgJvFp3gp9
	ZnR3EfXRenjXlRDNZApwgtgRy4IabZdUKVivNibPvjxRcMi9IvB0Db0W3LQCsLet
	oDdCWe82S8Q9Od6e/B0LJxAkBUtfBo3NK8J9ZB1phV+Om3BTlNLhHQh4kwQdPjrt
	Yeq/XkO+njD2M7PWY6DdNkD4qHPoIjFPhOFiwolRaAFuyZWZzKXpW4t5P5TGgTnF
	1qzC6F8MXg==
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4dwec799v3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 07 May 2026 09:56:15 -0700 (PDT)
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-48d0677b5f7so6705165e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 May 2026 09:56:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778172973; x=1778777773;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AStKs7gIf+H7qi7ZzQdIOFiCgW57yK3MpNAkRUF2is0=;
        b=jQCxklrCcXVPfAVFvtrhc4sy/1Phy869PfOCtaE9dhISyskm9xgz8CfXXVCdA7S3xb
         x3FpDECouUHbkrB9VoVWOgAcSlLonVYy1KfvB+GtemzRmrhejQsk9VJgfpaM/HFHhbwR
         JTUdJ7/6K8SBw0Y7L1MhwxVlJBA4HTE1OAv6LyA6jYf1JqY98daOYWsr6yTvTH0jLg3e
         nNG0RTGs1K6A0r2IkKL05/2AXXYvNqywZuNwUw4F64QgRP23RqmKBLGu7DNPvCvK3Aa2
         6376TDCHpVeCIqO295sAS/Z1dXueOvL9ChbV0t8a/zQl7cNjOUyUqVgXgTCBo9CjdCV8
         Olcg==
X-Forwarded-Encrypted: i=1; AFNElJ8GRIZV7U5l5PtEJErc6cRtn6QD3g2vPHFJjLHwA/ChJUZ3On3bRdWUQ1GJ4uZmkM4SSR0Ayfu7IsN8f22k@lists.linaro.org
X-Gm-Message-State: AOJu0YwVxKts13J+2NnV5Urt3b1fce74ceOhJ03GLSZsYNLCSF37p9ra
	Xy7PeZtl57bsTws0K6jHa0TI3D0mejLSakuQU8gGHc86Tp5JqTouX62HQLI56ETfdWVmPt+B0g0
	SlRY0+CQzTRXt7AEk6cmjU6DVFvdKTUI/+ODsb0tJqytL1ijsQm8TfdMUcwqv7Zh7C1k=
X-Gm-Gg: AeBDietExfdoY8lqn3fUdSS95Z69hVhB1xhhta/uqy0w8XNAOX3HsEti4Vm5UPiI6QD
	NADyYpB3h0e+fvIDWnJFzsTclr4gJeIJZI12cJje48NCQF0gJLr83lZ5B6nZKgAbOzuwzkh4rQi
	2JznWZuaoAu9NNecrnsxCQzqFJVqMTde0adjLoyaJysu9JMutQdocWPKjNKedznyw3X9DoT4oqH
	rB8N8lNq/sIknnxFkDGJTA1YQewKmQgniupVjOljraoT96GIFCAa5/JJyvTyn6RbgSy22HNOeaK
	0alr5ABQVwUGxcrvpCo69aEvsmJW+xc4WzvyxE2vY2EKqMwLBBZTKMQakbtcuGhITlBL0tRmQsB
	IbzBz6il0ajnL8Ky6OA24PTaIChOTvVZfscU74OZtONL/A160ecRQYlkUI0MjQ64bnjqBtfE7AX
	9qGz1cvnbEHRl9EnEdgameWGKINMTW5V8JMCiLIVGLsIlRIo84NPVqsN46Xtktjg1/0Aq++NWcf
	RqpOJXrNFJxvNyBiMgLY/E=
X-Received: by 2002:a05:600c:4e0c:b0:48a:55d8:7882 with SMTP id 5b1f17b1804b1-48e51e16e58mr154923085e9.9.1778172973441;
        Thu, 07 May 2026 09:56:13 -0700 (PDT)
X-Received: by 2002:a05:600c:4e0c:b0:48a:55d8:7882 with SMTP id 5b1f17b1804b1-48e51e16e58mr154922585e9.9.1778172973017;
        Thu, 07 May 2026 09:56:13 -0700 (PDT)
Received: from ?IPV6:2001:8b0:8b6:13d4:102e:f2af:e074:5cde? (e.d.c.5.4.7.0.e.f.a.2.f.e.2.0.1.4.d.3.1.6.b.8.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:8b6:13d4:102e:f2af:e074:5cde])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e642f8d32sm369175e9.25.2026.05.07.09.56.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2026 09:56:12 -0700 (PDT)
Message-ID: <7d370a5d-3730-42f0-8656-14ad9c0da682@meta.com>
Date: Thu, 7 May 2026 17:56:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Alex Williamson <alex@shazbot.org>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-6-mattev@meta.com>
 <20260501164430.5d3ea683@shazbot.org>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260501164430.5d3ea683@shazbot.org>
X-Authority-Analysis: v=2.4 cv=Vc3H+lp9 c=1 sm=1 tr=0 ts=69fcc42f cx=c_pps
 a=IwH782EDBk/vqbJ9rM8UFw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=03ozwUkBphtHgyqjj1sw:22 a=VwQbUJbxAAAA:8 a=VabnemYjAAAA:8
 a=L20xLjZDwgROH_O_AugA:9 a=QEXdDO2ut3YA:10 a=Ng9YvVcppn9CIdWre3nD:22
 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-GUID: 3t7umPPXGaVUFXjWHPLpkPFFVWvVTLbf
X-Proofpoint-ORIG-GUID: 3t7umPPXGaVUFXjWHPLpkPFFVWvVTLbf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA3MDE3MCBTYWx0ZWRfX+CD2a/P5jejp
 nZmNz9fIyRXBo5mCnFFXlgFNF88x0YNAfmb3thVRLjqUhvHNqfIUGdtCI4cFl5AjUYar6SkpL/s
 X3U2inpMAnno+z5+nLH2Ll+Pa60Z4FvzmV6ohubJHpSDrJeJKXytrhtxGXksvYna0fk5Oj39GJn
 VQijxMFx7wpIMqt5f2sJrpnu/2Vuo3TTDVkBNN09kC0U/Jtw4hPrcJ5bwYQ8JxzdLYjmOp1MR65
 K3YIEOf1AWSuY7ungOhbb1s6tN9nzlH85O6XQXLSlDPyMWIkpn5TwvH7k70Q3nvLvBy83Hl3+MA
 PPegBGSx4jR+I3lWExsq3TMoGJSL3YMzocUch0EMiOl8CDZbtauYskJmDOSQcNn73ebwq15+/fk
 jht4H0XWnhX5VhzrSI2WmPENNChNubiIhiBsZVPDwqrKZkocntNtxJMNDLh3RhW+NQS4w9FiRvN
 duG3DPsXFH9mKFgXHXQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-06_01,2025-10-01_01
X-Spamd-Bar: ---
X-MailFrom: prvs=3587027ada=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PKIT7SC6BZBCUOQHL5K2AV32RWECOBFV
X-Message-ID-Hash: PKIT7SC6BZBCUOQHL5K2AV32RWECOBFV
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:48 +0000
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] vfio/pci: Provide a user-facing name for BAR mappings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PKIT7SC6BZBCUOQHL5K2AV32RWECOBFV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 2A935532496
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[138];
	R_DKIM_REJECT(1.00)[meta.com:s=s2048-2025-q2];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[meta.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.073];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:email,meta.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

Hi Alex,

On 01/05/2026 23:44, Alex Williamson wrote:
> 
> On Thu, 16 Apr 2026 06:17:48 -0700
> Matt Evans <mattev@meta.com> wrote:
> 
>> Since converting BAR mmap()s to using DMABUFs, we lose the original
>> device path in /proc/<pid>/maps, lsof, etc.  Generate a debug-oriented
>> synthetic 'filename' based on the cdev, plus BDF, plus resource index.
>>
>> This applies only to BAR mappings via the VFIO device fd, as
>> explicitly-exported DMABUFs are named by userspace via the
>> DMA_BUF_SET_NAME ioctl.
>>
>> Signed-off-by: Matt Evans <mattev@meta.com>
>> ---
>>   drivers/vfio/pci/vfio_pci_dmabuf.c | 27 +++++++++++++++++++++++++--
>>   1 file changed, 25 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
>> index a12432825e5e..04c7733fe712 100644
>> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
>> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
>> @@ -4,6 +4,7 @@
>>   #include <linux/dma-buf-mapping.h>
>>   #include <linux/pci-p2pdma.h>
>>   #include <linux/dma-resv.h>
>> +#include <uapi/linux/dma-buf.h>
>>   
>>   #include "vfio_pci_priv.h"
>>   
>> @@ -467,6 +468,7 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
>>   {
>>   	struct vfio_pci_dma_buf *priv;
>>   	const unsigned int nr_ranges = 1;
>> +	char *bufname;
>>   	int ret;
>>   
>>   	priv = kzalloc_obj(*priv);
>> @@ -479,6 +481,20 @@ int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
>>   		goto err_free_priv;
>>   	}
>>   
>> +	bufname = kzalloc(DMA_BUF_NAME_LEN, GFP_KERNEL);
>> +	if (!bufname) {
>> +		ret = -ENOMEM;
>> +		goto err_free_phys;
>> +	}
>> +
>> +	/*
>> +	 * Maximum size of the friendly debug name is
>> +	 * vfio1234567890:ffff:ff:3f.7-9 = 30, which fits within
>> +	 * DMA_BUF_NAME_LEN.
>> +	 */
>> +	snprintf(bufname, DMA_BUF_NAME_LEN, "%s:%s/%x",
>> +		 dev_name(&vdev->vdev.device), pci_name(vdev->pdev), res_index);
> 
> Comment suggests 9 is the max res_index that can be printed, but mmap
> only directly supports standard BARs 0-5.  Comment also uses a '-'
> while the code uses a '/'.  Thanks,

Right you are.  Fixed, but, since...
https://lore.kernel.org/kvm/52162da4-e1cc-4f90-a95a-218d6089cd71@meta.com/

...I'm keeping the resource index encoded in the vm_pgoffs and as that's
in /proc/<pid>/maps it doesn't need to be in the name. I.e., an example
mapping of BAR 2 looks like:

ffffa9330000-ffffad300000 rw-s 20000030000 00:0b 12 /dmabuf:vfio0:0000:00:03.0

Thanks,

Matt
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
