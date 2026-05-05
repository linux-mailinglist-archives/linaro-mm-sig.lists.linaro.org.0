Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBdcEb9fBGpxHgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:25:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DA117532325
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:25:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 74C30401C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:25:49 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id 121BF3F812
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2026 18:13:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=s2knLRbe;
	dmarc=pass (policy=reject) header.from=meta.com;
	spf=pass (lists.linaro.org: domain of "prvs=358589eecc=mattev@meta.com" designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=358589eecc=mattev@meta.com"
Received: from pps.filterd (m0109333.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 645EFep43154524
	for <linaro-mm-sig@lists.linaro.org>; Tue, 5 May 2026 11:13:57 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=n/8Evrp0/Cs5xE91fVKhf/YUdfmd3rQjcqs7sGTTtLk=; b=s2knLRbegq9X
	RCpDDJ/hBxKjw2pRkecpdWzz2gHGLBfGVyowgs8mooCbRWX5MHpJSEhh8YVlH6AQ
	8RJ4/8+pU0ux8fOyIJoDPGbyaMfqNNhuUfCBWb+L+6lEdCNzSvCxg1fBEoqSc2+V
	EbmQz+k9tHe0F2aoDYv3pCDhVCvsHHbhW/6qRUBFrMHrkZVXCYrRkaY7BYYwJhni
	o1DNwr+CwfydLAJE+CuHn63B/ToXKcgo18Id141iN/gmxjPmOMMEzF5gNaollCf6
	s+rXyR2Cnq0QDf7k1BVwbMqmN9WyJoH39FmoZTvdqbFOhWUbt8KRnCrHywPFKfuB
	XIvDNHkjbQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4dwda0jqnr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Tue, 05 May 2026 11:13:56 -0700 (PDT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2f2d983d109so782003eec.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 05 May 2026 11:13:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778004836; x=1778609636;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n/8Evrp0/Cs5xE91fVKhf/YUdfmd3rQjcqs7sGTTtLk=;
        b=Qhg3yHoFRgIrWKRBQWOsf+/ZAcZdw5p3lpGDrz0PblKu6/dlFdwX2/mcvrQzi3bPxd
         au3aOmLUYWCPAd0ewbHQEa22ZiZO7lrgOhCp1GsIzEen6mXcv9O8wjpDg4YRr/o+BnVL
         JjGBxr5oBeLkDI2ICDPAke7rYdAxdV3s2/PBD0ItTC/Mj6WFxTlvk6JzO1E13ujGLyVn
         aLYZ7q8OrehkbbBCamcDonw5gj+rtfEhQE205cMswM8mM8F8O2EUhxa8CrLXEE6dBzz+
         86egrAQu3rDc+8k5GONQLRYqTGCOR8SExEGkcUI3RKrHtOPHwDuRrN34nBha5VPtD9v1
         LYyg==
X-Forwarded-Encrypted: i=1; AFNElJ/Bn/x6MhYezr5aWOC6vt7IrzDxJbf9uwWejrZWCsUnRSyn/R5mAa6BCcASjgh6z7A6k7OHtbxB2L3MKTqz@lists.linaro.org
X-Gm-Message-State: AOJu0YyBCYWhMnSRtRuvUHRCw10UTC8z6AEUfpL5KQaD7CylLFhgk9IV
	Ec33yBNMk5DapfXy5TowKN/4i1K0qHn+oRk+9eqpveF8fSkXprYLQBQlaQwCH4apuJ9oOYDEmzd
	MO6rDw24cKrohMloExw0F2xjHP9XItMKX0LxrplEMYmhiwoCVkB/YFTl6QQ0f3TTvVEo=
X-Gm-Gg: AeBDietQY3JmmsDvUJzPnocgM/hAyUoVZJqyMDfcqmWafjaxSUVuUOPjGNetNB9kH7u
	t+SiVbhXImR0cvacy+syoFw6PiZSXRufUpj3anhzn+Ec+uEYqw3EZJvvRyIUy/jf7icQi5Ev9tw
	4VOFMjyARfD5gcraIWoZkbyzN6RSDTLFmThS0BRfxvmngHqN2wVkk4gCmOWVZQikUmctOAHF5e1
	oaKSwoy/VG/fKyMwGxjLMN5hFWYbjvnYuJUf6LKiaGZpVDhF6BW23VkHw3wBA8YBCiOzk1PAVnU
	OdAByiMWPZGUEq22W2777Q5UJsDCPcMB0Zx2a4Fyi4pBLoWIxjb0WU2JQJSJpmKLTJqz3Pe6Al0
	Vh95SCzq76C/6oqk6nZI1WFpeEoJC95nIHFSPbiJ0
X-Received: by 2002:a05:693c:300b:b0:2f2:32bc:788a with SMTP id 5a478bee46e88-2f54b465ca5mr163908eec.25.1778004836049;
        Tue, 05 May 2026 11:13:56 -0700 (PDT)
X-Received: by 2002:a05:693c:300b:b0:2f2:32bc:788a with SMTP id 5a478bee46e88-2f54b465ca5mr163886eec.25.1778004835478;
        Tue, 05 May 2026 11:13:55 -0700 (PDT)
Received: from [10.0.40.29] ([51.52.155.79])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ee3bc6a79esm25025486eec.26.2026.05.05.11.13.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2026 11:13:54 -0700 (PDT)
Message-ID: <2d0eb275-64ef-4710-806b-36f6b32f7122@meta.com>
Date: Tue, 5 May 2026 19:13:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jason Gunthorpe <jgg@nvidia.com>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-4-mattev@meta.com>
 <20260424182426.GG3444440@nvidia.com>
 <c598a21e-ee50-42d9-98dc-2959e84ace50@meta.com>
 <20260430171106.GA6829@nvidia.com>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260430171106.GA6829@nvidia.com>
X-Proofpoint-GUID: m5X_zwE-RG088lN0VX9IOTZJeNHavUrx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDE3NyBTYWx0ZWRfX+NxYV8NJikws
 j3Jcw52ptW1AxI7AbGJmwugOgcC00caSU/96kWmI2B0TgboiHHosK3f0KC1EnEKRy6Xy21736pC
 6RbAX4sl4GNfDsOvD8hFzRfLLuyf75Gcr0ij0D3aEAoD4GFpnYr3ELSEI5M/u+Vf9Q7kkU0NHIu
 j0O6lpbXKilYfAfV06qug0qW2z32hwkdEKFM+atSB4KPDD759AIO1J0Re9Jv/Y1dNvhVO6Kq1Yp
 bnN1eftqVuiqJwyr50EEgZ8LD0bp2E2x3/35X7aUV779wYGsF916wSHAfQmuXHHtUJIoRgnGJ6K
 KTq1uyBAINdj5uSj8+SV8uGN8z3I4eBbbA3WFrF9czsXQkwAeYW5ui7ALLfVFfYlsm5Wqzw2JXG
 9PsG3P1X0PA7wc14TUvqkTNMPZkyoid/8pKZOUfCVbbGFzbNHU0aysG3wM5bRLcuKLRSjkCmSZL
 Wzow+TJXajCdtsLKglg==
X-Authority-Analysis: v=2.4 cv=NYjWEWD4 c=1 sm=1 tr=0 ts=69fa3364 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=2UbFsIa4v//lIgRL4kGwwA==:17
 a=Dv35txUGz5gI0hTa:21 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22 a=tpM8CJlwf7uhpglF1g9U:22
 a=znC_9Zf_qiuKpCydwTIA:9 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: m5X_zwE-RG088lN0VX9IOTZJeNHavUrx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_02,2026-04-30_02,2025-10-01_01
X-Spamd-Bar: ----
X-MailFrom: prvs=358589eecc=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4KSRPOL6P7QWJCJAYRPDE4CQ3G7UPAXH
X-Message-ID-Hash: 4KSRPOL6P7QWJCJAYRPDE4CQ3G7UPAXH
X-Mailman-Approved-At: Wed, 13 May 2026 11:22:17 +0000
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] vfio/pci: Add a helper to create a DMABUF for a BAR-map VMA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4KSRPOL6P7QWJCJAYRPDE4CQ3G7UPAXH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: DA117532325
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[185];
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
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.429];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

Hi Jason,

On 30/04/2026 18:11, Jason Gunthorpe wrote:
> 
> On Thu, Apr 30, 2026 at 05:47:49PM +0100, Matt Evans wrote:
>>> On Thu, Apr 16, 2026 at 06:17:46AM -0700, Matt Evans wrote:
>>>> +int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
>>>> +				   struct vm_area_struct *vma,
>>>> +				   u64 phys_start, u64 req_len,
>>>> +				   unsigned int res_index)
>>>> +{
>>>> +	struct vfio_pci_dma_buf *priv;
>>>> +	const unsigned int nr_ranges = 1;
>>>> +	int ret;
>>>> +
>>>> +	priv = kzalloc_obj(*priv);
>>>> +	if (!priv)
>>>> +		return -ENOMEM;
>>>> +
>>>> +	priv->phys_vec = kzalloc_obj(*priv->phys_vec);
>>>> +	if (!priv->phys_vec) {
>>>> +		ret = -ENOMEM;
>>>> +		goto err_free_priv;
>>>> +	}
>>>> +
>>>> +	/*
>>>> +	 * The mmap() request's vma->vm_offs might be non-zero, but
>>>> +	 * the DMABUF is created from _offset zero_ of the BAR.  The
>>>> +	 * portion between zero and the vm_offs is inaccessible
>>>> +	 * through this VMA, but this approach keeps the
>>>> +	 * /proc/<pid>/maps offset somewhat consistent with the
>>>> +	 * pre-DMABUF code.  Size includes the offset portion.
>>>
>>> I'm not sure I understand this comment?
>>>
>>> For the old path vm_pgoff for byte 0 of the bar starts at some large
>>> offset
>>>
>>> For the new path vm_pgoff for byte 0 of the first range starts at 0
>>
>> Glad you asked.  :)
>>
>> This is trying to achieve keeping /proc/<pid>/maps (or similar) somewhat
>> as informative as pre-DMABUF BAR mmap, in terms of keeping the VMA
>> vm_offs column useful.  Before this patch, say you mmap() two slices A
>> and B of the same BAR:
>>
>>   struct vfio_region_info bar_region;
>>
>>   vm_a = mmap(0, 0x1000, ..., device_fd, bar_region.offset + 0);
>>   vm_b = mmap(0, 0x1000, ..., device_fd, bar_region.offset + 0x4000);
>>
>> ...you'd see something like this in /proc/blah/maps:
>>
>> fffff4000000-fffff4001000 rw-s 10000000000 00:07 148     /dev/vfio/devices/vfio0
>> fffff5000000-fffff5001000 rw-s 10000004000 00:07 148     /dev/vfio/devices/vfio0
> 
> 
>> then the VMA's vm_offs would need to be thunked back down to 0 (since
>> the fault handler then treats vm_b + 0 as the first byte of the DMABUF).
>> That works/adds up, but then the vm_offs of both VMAs A & B both have
>> offset 0, and it's harder to differentiate in /proc/blah/maps.
> 
> Yes, and that would be correct.
> 
> The VMA output of lspci should show the exact pgoff passed to mmap and
> nothing else. Do not mangle it for "debugging".
> 
> pgoff is not to be used to show random internal FD details..
> 
>> We could possibly stash the original offset somewhere and then render it
>> in the name string, but the name's already about the max size and using
>> the existing vm_offs column is nicer IMO, doesn't need a new field, etc.
> 
>> I need to work on this comment then!  What this is trying to say is that
>> the DMABUF is made artificially larger than the part that is visible
>> through the VMA.
> 
> Yuk, that's another reason not to do this.

OK, fair enough.  I'll rework this and remove this one weird trick, 
thanks for the input.

Matt

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
