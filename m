Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UI/0OsVgBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:30:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F84553249F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:30:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A4BC03F7F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:30:12 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id 30DE63F743
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 08:05:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b="TBT8+x/D";
	spf=pass (lists.linaro.org: domain of "prvs=3587027ada=mattev@meta.com" designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=3587027ada=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0044012.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6475qOjR3610422
	for <linaro-mm-sig@lists.linaro.org>; Thu, 7 May 2026 08:48:42 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=7ee0kKFk8CI3AWhXFM+kSfgli3u7LAWrP2aGxa36TIM=; b=TBT8+x/DyOnF
	/jQZcsP6J8KkrIiBxC1vYorXjlDpI2msIlIRN7YnrzQ7S97+CNmrwLuLnmCG39U6
	5WGItgxSXzSKsyUK5/JeGZHK3OSCo85kwy0yA/LYWhmAGPFxnmnfU922K3jm8nIT
	D6kZnU/Jc26lv9Pyx2qJeaEuyB19C8fGbHTaxmaWGRZrReTC5Bn+8kanDEjaxT8e
	olHoml38lvu+IzEADYEmLTw8bRp7+VgZp8YJuALcWXTrcq6+ZooeGRS9oF4bA1Wg
	pcN0TocQODFgyyMk36wtNUKOTOErT/R6G4ig4mssnIp5xVNowY0gRwIekSsw70xe
	6Mknw6Euhw==
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4dwey08q8b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 07 May 2026 08:48:42 -0700 (PDT)
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-44d79da8cf7so890470f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 May 2026 08:48:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778168921; x=1778773721;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7ee0kKFk8CI3AWhXFM+kSfgli3u7LAWrP2aGxa36TIM=;
        b=OZpO9qn28GK6pNh9RFxl2F7R70jiflMHtmjRB6dsbbK8EMPrYgubPEEUtSeaXxG8Ih
         4OSf7ug2TNOcjS+RErBODNmcWzGzBZCetSFZQG4kEtL+3huX7HC8ksLubErzZCVvHrtL
         d9klJf5GH5yyeH3KAlIn94L0dBHX8l3JRDLfQV8HeeZq28LziVl2YhTGIiPgHgH3UfkA
         oRahCUmRz3U22KWboh+zw9SMBZoxZGEk7FSUFTVYgeYTSFlFmXb4Enf35pr30iUAws3L
         ubK3p9StedHtTtOLIAHQJAuX3YjBr7wtIcdRdvh+D+/GCFETm0W3Eaa+gzSs2brvKOY6
         tovg==
X-Forwarded-Encrypted: i=1; AFNElJ+ypNqC3dGKIe5a8+MVJ4SM3xXz95GzVWvFvNj/vwi+27m4Ki1nu+4KQdprmTgqpvGsBPW4ZFIpu98Yuv+J@lists.linaro.org
X-Gm-Message-State: AOJu0YwgmEvrSrERajCTFGGVklKCf1iVYhCtzgTarVp10po7q8NaSqxa
	7E6vPaSga5350TTyG49UwbM5oM4emyIjVK9EHGfUSxOlionYuAVwRLSptFSdYaLoSL+VZ5Ax1dm
	+SXpr1rqRaaXdeSH9lq921W71SlJmlHiswF1t+BT4JCPEKgvOISXJyfuYnZ2Wfq62c6c=
X-Gm-Gg: AeBDievNQltE94n89eidOczrFEP7UUFAJaeMXY97SiaTiHRtMw6ClZZ6fnemMzQXQRy
	CP0e9V6UGJjzg0n9rXbYaYlueJwpDHzeyk5DWf+GKd+1G+JBngiVVM32eiE78gMKcQ4KyJXJ+32
	/uoX9ZZ9jEvA/uI2NqDA3kXE0DbWsWiP1C101saNbUykqK/SUmvmFwcEIZwYlWpagMBvUS2e5zt
	pC6bRHFV5yevY3AQ5J9616R68eaCWMm0ZLG2NV2e3gpw1dScR85MsSzLPrrmxrMZiK2kzZ/gIH1
	l8uhHiptdhBi1vdzdquX6HzA5Ur95jlGgkjOKqoR6dBd18yA39+fVnRi+dS/9dCUxCZc+6zH8Y/
	RumEJyR9M9EjnnEkPEcqyq+e2889/iLBgYY7tq5Zna2zmuGMwdvu1YDGdvKV6E7aUeV7GHA/u/+
	3/fpYfD4wAxsiLw1WyxHfrblxVim4v0z1BofTOssoL64Z8rHeWbThCac5FpUKCZeTuaKzm9gzo8
	lbl2JFf/RY9tqyraYerhR6yITiIKrXsACgoHPf37q+F
X-Received: by 2002:a5d:5f48:0:b0:43b:498f:dceb with SMTP id ffacd0b85a97d-4515b056b4dmr13924647f8f.9.1778168920707;
        Thu, 07 May 2026 08:48:40 -0700 (PDT)
X-Received: by 2002:a5d:5f48:0:b0:43b:498f:dceb with SMTP id ffacd0b85a97d-4515b056b4dmr13924574f8f.9.1778168920112;
        Thu, 07 May 2026 08:48:40 -0700 (PDT)
Received: from ?IPV6:2001:8b0:8b6:13d4:102e:f2af:e074:5cde? (e.d.c.5.4.7.0.e.f.a.2.f.e.2.0.1.4.d.3.1.6.b.8.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:8b6:13d4:102e:f2af:e074:5cde])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45055f2203csm21318765f8f.37.2026.05.07.08.48.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2026 08:48:39 -0700 (PDT)
Message-ID: <c746c3a7-37df-49a6-9000-a3b67ae206ab@meta.com>
Date: Thu, 7 May 2026 16:48:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jason Gunthorpe <jgg@nvidia.com>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-3-mattev@meta.com>
 <20260424181510.GF3444440@nvidia.com>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260424181510.GF3444440@nvidia.com>
X-Proofpoint-GUID: 6WOb0hvGMthXt6LxwRqmjgN4d80mZNEB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA3MDE1OCBTYWx0ZWRfX24sfBu5URv8U
 /MQEjIAJqE0AdARNoJ1f+/P5or8oRXqEBjjoXm6Ze38LlHaVVb6SVba4XOkjmSTT5qGKin0Y+hB
 JNT2Pu5nVtoMMF5BsWGK2hbLoOOljKsVKMJT5KDE11KZytoNv6iad1lxATob0F1lu9xaq1UBRqB
 lsYvQDQfeBy6UtfnvHmdurGctIc4t8MNojqPu0x8TCGHHk2O0UlkXysNAZSZa/krSbdvwBg0eHf
 jBx7pB4aOsDZ3MGyMrWSVORflQbPhU+I6VuJwJLq3JDsrJdbWnhGGzzIUxgt2tr5fu3NbxJp27v
 ZFyktDFAauM5rhT3q1SIOr4lUWKtOjvp20n0BsSHhfNSvdXIRTiJH3zbzFVb9uFbZ7vN0RLY4bw
 x1OG4QITLW811iVgne24N7jCFb+jAA85dCuUBhq2OHyDFpYsCBODre4JM5clS1Vo73LGBuX9HZQ
 ZHNmrYUCLT0DJ/76oaA==
X-Proofpoint-ORIG-GUID: 6WOb0hvGMthXt6LxwRqmjgN4d80mZNEB
X-Authority-Analysis: v=2.4 cv=Zcwt8MVA c=1 sm=1 tr=0 ts=69fcb45a cx=c_pps
 a=C8Sa+zVB7PeSwznsLr31Mw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=PAz_-FQ8hEVmOPYdF0yf:22 a=VabnemYjAAAA:8 a=PVx_5XRel0ZW2V4eVl8A:9
 a=QEXdDO2ut3YA:10 a=eYhU8IiCvE_ms1W8Tcak:22 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_01,2026-05-06_01,2025-10-01_01
X-Spamd-Bar: ---
X-MailFrom: prvs=3587027ada=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QP34TV2QIR2BHWEVDLSCIQFV4LSDH74V
X-Message-ID-Hash: QP34TV2QIR2BHWEVDLSCIQFV4LSDH74V
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:48 +0000
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/9] vfio/pci: Add a helper to look up PFNs for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QP34TV2QIR2BHWEVDLSCIQFV4LSDH74V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 8F84553249F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[139];
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
	NEURAL_SPAM(0.00)[0.465];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:email,meta.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

Hi Jason,

On 24/04/2026 19:15, Jason Gunthorpe wrote:
> 
> On Thu, Apr 16, 2026 at 06:17:45AM -0700, Matt Evans wrote:
>> Add vfio_pci_dma_buf_find_pfn(), which a VMA fault handler can use to
>> find a PFN.
>>
>> This supports multi-range DMABUFs, which typically would be used to
>> represent scattered spans but might even represent overlapping or
>> aliasing spans of PFNs.
>>
>> Because this is intended to be used in vfio_pci_core.c, we also need
>> to expose the struct vfio_pci_dma_buf in the vfio_pci_priv.h header.
>>
>> Signed-off-by: Matt Evans <mattev@meta.com>
>> ---
>>   drivers/vfio/pci/vfio_pci_dmabuf.c | 124 ++++++++++++++++++++++++++---
>>   drivers/vfio/pci/vfio_pci_priv.h   |  19 +++++
>>   2 files changed, 130 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
>> index 04478b7415a0..8b6bae56bbf2 100644
>> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
>> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
>> @@ -9,19 +9,6 @@
>>   
>>   MODULE_IMPORT_NS("DMA_BUF");
>>   
>> -struct vfio_pci_dma_buf {
>> -	struct dma_buf *dmabuf;
>> -	struct vfio_pci_core_device *vdev;
>> -	struct list_head dmabufs_elm;
>> -	size_t size;
>> -	struct phys_vec *phys_vec;
>> -	struct p2pdma_provider *provider;
>> -	u32 nr_ranges;
>> -	struct kref kref;
>> -	struct completion comp;
>> -	u8 revoked : 1;
>> -};
>> -
>>   static int vfio_pci_dma_buf_attach(struct dma_buf *dmabuf,
>>   				   struct dma_buf_attachment *attachment)
>>   {
>> @@ -106,6 +93,117 @@ static const struct dma_buf_ops vfio_pci_dmabuf_ops = {
>>   	.release = vfio_pci_dma_buf_release,
>>   };
>>   
>> +int vfio_pci_dma_buf_find_pfn(struct vfio_pci_dma_buf *vpdmabuf,
>> +			      struct vm_area_struct *vma,
>> +			      unsigned long address,
>> +			      unsigned int order,
>> +			      unsigned long *out_pfn)
>> +{
>> +	/*
>> +	 * Given a VMA (start, end, pgoffs) and a fault address,
>> +	 * search the corresponding DMABUF's phys_vec[] to find the
>> +	 * range representing the address's offset into the VMA, and
>> +	 * its PFN.
>> +	 *
>> +	 * The phys_vec[] ranges represent contiguous spans of VAs
>> +	 * upwards from the buffer offset 0; the actual PFNs might be
>> +	 * in any order, overlap/alias, etc.  Calculate an offset of
>> +	 * the desired page given VMA start/pgoff and address, then
>> +	 * search upwards from 0 to find which span contains it.
>> +	 *
>> +	 * On success, a valid PFN for a page sized by 'order' is
>> +	 * returned into out_pfn.
>> +	 *
>> +	 * Failure occurs if:
>> +	 * - The page would cross the edge of the VMA
>> +	 * - The page isn't entirely contained within a range
>> +	 * - We find a range, but the final PFN isn't aligned to the
>> +	 *   requested order.
>> +	 *
>> +	 * (Upon failure, the caller is expected to try again with a
>> +	 * smaller order; the tests above will always succeed for
>> +	 * order=0 as the limit case.)
>> +	 *
>> +	 * It's suboptimal if DMABUFs are created with neigbouring
>> +	 * ranges that are physically contiguous, since hugepages
>> +	 * can't straddle range boundaries.  (The construction of the
>> +	 * ranges vector should merge such ranges.)
>> +	 */
>> +
>> +	const unsigned long pagesize = PAGE_SIZE << order;
>> +	unsigned long rounded_page_addr = address & ~(pagesize - 1);
> 
> ALIGN_DOWN(address, pagesize);

Oops, right, fixed.

>> +	unsigned long rounded_page_end = rounded_page_addr + pagesize;
>> +	unsigned long buf_page_offset;
>> +	unsigned long buf_offset = 0;
>> +	unsigned int i;
>> +
>> +	if (rounded_page_addr < vma->vm_start || rounded_page_end > vma->vm_end) {
>> +		if (order > 0)
>> +			return -EAGAIN;
>> +
>> +		/* A fault address outside of the VMA is absurd. */
>> +		WARN(1, "Fault addr 0x%lx outside VMA 0x%lx-0x%lx\n",
>> +		     address, vma->vm_start, vma->vm_end);
>> +		return -EFAULT;
>> +	}
>> +
>> +	if (unlikely(check_add_overflow(rounded_page_addr - vma->vm_start,
>> +					vma->vm_pgoff << PAGE_SHIFT, &buf_page_offset)))
>> +		return -EFAULT;
> 
>> +
>> +	for (i = 0; i < vpdmabuf->nr_ranges; i++) {
>> +		size_t range_len = vpdmabuf->phys_vec[i].len;
>> +		phys_addr_t range_start = vpdmabuf->phys_vec[i].paddr;
>> +
>> +		/*
>> +		 * If the current range starts after the page's span,
>> +		 * this and any future range won't match.  Bail early.
>> +		 */
>> +		if (buf_page_offset + pagesize <= buf_offset)
>> +			break;
> 
> No overflow check on this +? If we are worried order is so large that
> the first needs a check then this would too..

In the earlier check it's not order being large but the vm_pgoff, but 
yes an overflow check wouldn't hurt here.  Added.

I've found (my) choice of variable names here awkward, and have renamed 
them to make it a bit clearer as to what's the page being searched for 
and what's the range, etc.

>> +
>> +		if (buf_page_offset >= buf_offset &&
>> +		    buf_page_offset + pagesize <= buf_offset + range_len) {
> 
>> +			/*
>> +			 * The faulting page is wholly contained
>> +			 * within the span represented by the range.
>> +			 * Validate PFN alignment for the order:
>> +			 */
>> +			unsigned long pfn = (range_start >> PAGE_SHIFT) +
>> +				((buf_page_offset - buf_offset) >> PAGE_SHIFT);
> 
> (range_start + (buf_page_offset - buf_offset)) / PAGE_SIZE;

WFM, done.

Thank you,

Matt

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
