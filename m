Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sQRbJeUGH2pqdgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 18:37:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC8F630421
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 18:37:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=meta.com header.s=s2048-2025-q2 header.b=brcsqM3s;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=meta.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C29CA40996
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 16:37:55 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id 463A13F817
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Jun 2026 16:37:45 +0000 (UTC)
Received: from pps.filterd (m0044010.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 652EHHDd094014
	for <linaro-mm-sig@lists.linaro.org>; Tue, 2 Jun 2026 09:37:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=JaI89Wggv+m77fH63fQe+3epu7CJNe/5q/9Y6SRKmH0=; b=brcsqM3sFqRv
	6NFORFPsKgFa9mENs8X1TFSHUuTUAfm/cI0B8hjI4apfh/X1RyhAsKe5wuc3kCMA
	Dje7w0722dwJ1/QzS9RXo5f0OYbIZ62nSfv9c9Bbv/IirIF1QKEBMMUfKMLi3E/h
	gxkUIZlZTEfpb56to9EDjrg+hnGkLd0hTn5L5Vym3EOSZs6SVAR2MW9RP09USsh/
	6RE8/pKKV6Y6PeREA7kw8kJmO/ak7IZYNY6ctOR/pvkpwYA6ymNVLJHxvzGWwe8i
	kkF9UWVWEWbcsdvF9fh4i3XlB09MbiWejOC2Osr6/ocglJlk7yR3wJZRuF2DYz/P
	1QEIutWKVg==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4ej0t8h1wa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Jun 2026 09:37:43 -0700 (PDT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-13709ab38a8so12392284c88.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Jun 2026 09:37:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780418263; x=1781023063;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JaI89Wggv+m77fH63fQe+3epu7CJNe/5q/9Y6SRKmH0=;
        b=eZcf6z3g++uzHC1DG8dRr8VUTML0gKzmyO26U8E9pjzanap7tvzCQiigogeriMwDAe
         g+R13eB2SOwSOkq7lglAV8XlW4q15ywxIzk1aB2Bxe2IOvDc/5DvSHxuKMWK/jendpnT
         g2qRGqyXZ1v+XiRL/lLg1cVBWbZfmRKkHIoO7H/IJ5KQbUNfNCff+OrYDMPgh6k6PN46
         IUQTMsEaq4dKzVKCfhP6lR5hFQEbWvH3Y6vwuFhmx4OA0hr86gJiXgYwYK97cm54uNqo
         Oo2d30Pqm/idm4amB/bSJVszPOxYJHqBdsDr0eByURphv+26/jCv8yFli9Pezz47p3u8
         bpBw==
X-Forwarded-Encrypted: i=1; AFNElJ8Wz6y+pWUrfAYuJJ8OP8afBlxJ7yKNPCYEBPZOMv5GECEzJK+ufVM+CMmuy3D17I8d4J3evgYTa+7JTCib@lists.linaro.org
X-Gm-Message-State: AOJu0YycQ5waK0c63ri3fo/InNXNG3A6hdHC5/iDQdseKwiYhl8QMdq6
	9YWeQ7acSWGGKK8gXNxsmgmdx+3jAqrlQatGk5ojeWV8ZC+W7KD5dPghBOLhec5EnwAu98Y4veN
	YbGM9RSNjq8aJZ5Us1Tia1D34OvFX3MCijAGvC5OFHkgc7HleWr3A0OKA7suL/KLqCHE=
X-Gm-Gg: Acq92OEPmv9hqTsx5Npc/a7kZj6wCLafidehFSDJU2om1SbQw1rVAP1mUIqyCkDxGp+
	XVVQA1jCIfh97lSVpXZz5hDPtquBzb3t/TOKM7nIJo723qyeWqkKnYKT5F5RNQVTFqMCcSn86pm
	EVJ5yLmCE/YHZ9f9UMCDAYYO23xffV78XQABGVouWG4K9Nqb1KFWmLHuPAaGB0C9Ue9rKE83m/V
	CHd53bDdFGDJVUErYWJDi1T+6I5xcOs+rWT/j8OG2IIu/mzMumvWHZvYxuHU7L5IdGD+uJSYg+O
	QIRML9+0c/w68DclRTHW+tA4+Vajgi7DtFcri+kZ+cMfVNaB9U7Cjhb4wxufHN72gz9p3BJLZyq
	9HcmwM9DT484mxlSBizK0Kz1vMIHh4CZwoDSepsmy
X-Received: by 2002:a05:7022:1a84:b0:11a:fb3c:568b with SMTP id a92af1059eb24-137d423bfe1mr6867347c88.17.1780418262982;
        Tue, 02 Jun 2026 09:37:42 -0700 (PDT)
X-Received: by 2002:a05:7022:1a84:b0:11a:fb3c:568b with SMTP id a92af1059eb24-137d423bfe1mr6867319c88.17.1780418262207;
        Tue, 02 Jun 2026 09:37:42 -0700 (PDT)
Received: from [10.0.40.30] ([51.52.155.79])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-137f5489d17sm159385c88.1.2026.06.02.09.37.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 09:37:41 -0700 (PDT)
Message-ID: <71936818-dc94-47bc-9f17-59005553dd73@meta.com>
Date: Tue, 2 Jun 2026 17:37:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Alex Williamson <alex@shazbot.org>
References: <20260527102319.100128-1-mattev@meta.com>
 <20260527102319.100128-3-mattev@meta.com>
 <20260527163837.02be1e7c@shazbot.org>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260527163837.02be1e7c@shazbot.org>
X-Proofpoint-GUID: VYox46BXVIY4cqym5DMr5jRzPwAvKOyp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAyMDE2MCBTYWx0ZWRfXwmb6S4z4eHBX
 iAVSHLaeXYrWNxxTkPMP3J3+jgDrF1Ac2kxAe/m1eg7wbk9xGAtXX0NrQbiPEjsn53NAZxxq2Ae
 IHzGrfytY5zkV1hzRGhbO7y66trOSUxKqeI3GKrxROCIbtxs+mOvSmncalEtVjZh6WLiJ5YjR83
 MVLfLk1I1Qna+0qYq29JprUkOpzucIqXPQKCGWe3htIRCPxio4VuUwJk0c3xGxOPz0NzH3CeUrY
 EN/f85k3bwaM5k469WRTGzaYkjkwbvPf8jOoIQKlU1jJxogzNpp5Q8z6iCbIgoxll8bBsNGayUc
 u17yZqPqYrE7j1C1P+k0V5v0hMgzD3Xs8dTpqel5Opi/C61CBQZHflvqYWCVAntv9TyCKrMrRmc
 HcVZiI83R5OFMgaYJLv81Iwe5sfp0Z+VcdvHsFrgx8Pek4244P3lDmF2vSuE/Ittgzjvy70BXqM
 S53ihGxyeDTl+HHyCQQ==
X-Authority-Analysis: v=2.4 cv=F8dnsKhN c=1 sm=1 tr=0 ts=6a1f06d7 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=2UbFsIa4v//lIgRL4kGwwA==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7x6HtfJdh03M6CCDgxCd:22 a=8elwO82fXORLTBIkMd32:22 a=VabnemYjAAAA:8
 a=W66DtvnrEJvMCsljMtwA:9 a=QEXdDO2ut3YA:10 a=vr4QvYf-bLy2KjpDp97w:22
 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-ORIG-GUID: VYox46BXVIY4cqym5DMr5jRzPwAvKOyp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-02_02,2026-05-28_03,2025-10-01_01
X-Spamd-Bar: ----
Message-ID-Hash: JH2ALEHYKJF2PIAPQ6KNHXNSSOMWL5K4
X-Message-ID-Hash: JH2ALEHYKJF2PIAPQ6KNHXNSSOMWL5K4
X-MailFrom: prvs=461332670b=mattev@meta.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/9] vfio/pci: Add a helper to look up PFNs for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JH2ALEHYKJF2PIAPQ6KNHXNSSOMWL5K4/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,meta.com:mid,meta.com:from_mime,meta.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EBC8F630421

Hi Alex,

On 27/05/2026 23:38, Alex Williamson wrote:
> 
> On Wed, 27 May 2026 03:23:05 -0700
> Matt Evans <mattev@meta.com> wrote:
> 
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
>>   drivers/vfio/pci/vfio_pci_dmabuf.c | 142 ++++++++++++++++++++++++++---
>>   drivers/vfio/pci/vfio_pci_priv.h   |  20 ++++
>>   2 files changed, 149 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
>> index c16f460c01d6..0d132c4ca95f 100644
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
>> @@ -106,6 +93,135 @@ static const struct dma_buf_ops vfio_pci_dmabuf_ops = {
>>   	.release = vfio_pci_dma_buf_release,
>>   };
>>   
>> +int vfio_pci_dma_buf_find_pfn(struct vfio_pci_dma_buf *vpdmabuf,
> 
> This private dmabuf object pointer is named priv pretty consistently
> throughout the rest of the file.

Right you are, fixed.

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
>> +	 *
>> +	 * Finally, vma_pgoff_adjust is used for a DMABUF representing
>> +	 * a VFIO BAR mmap, which is created from the start of the
>> +	 * offset region.  It should be zero, or equal vm_pgoff.
>> +	 */
>> +
>> +	const unsigned long pagesize = PAGE_SIZE << order;
>> +	unsigned long vma_off = ((vma->vm_pgoff - vpdmabuf->vma_pgoff_adjust) <<
>> +				 PAGE_SHIFT) & VFIO_PCI_OFFSET_MASK;
>> +	unsigned long rounded_page_addr = ALIGN_DOWN(address, pagesize);
>> +	unsigned long rounded_page_end = rounded_page_addr + pagesize;
>> +	unsigned long page_buf_offset;
>> +	unsigned long range_buf_offset = 0;
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
>> +	if (vpdmabuf->vma_pgoff_adjust != 0 &&
>> +	    vpdmabuf->vma_pgoff_adjust != (vma->vm_pgoff &
>> +					   (VFIO_PCI_OFFSET_MASK >> PAGE_SHIFT))) {
>> +		WARN(1, "Unexpected vma_pgoff_adjust 0x%lx (vm_pgoff 0x%lx)\n",
>> +		     vpdmabuf->vma_pgoff_adjust, vma->vm_pgoff);
>> +		return -EFAULT;
>> +	}
> 
> This appears to be user trigger'able, by causing a vma to be split, and
> also unnecessary as it seems the math works out correctly for the split
> case.

Good spot, fixed.  I added a VMA split case to the [RFC] 
vfio_dmabuf_mmap_test, thanks for spotting this.

>> +
>> +	if (unlikely(check_add_overflow(rounded_page_addr - vma->vm_start,
>> +					vma_off, &page_buf_offset)))
>> +		return -EFAULT;
>> +
>> +	for (i = 0; i < vpdmabuf->nr_ranges; i++) {
>> +		unsigned long page_buf_offset_end;
>> +		size_t range_len = vpdmabuf->phys_vec[i].len;
>> +		phys_addr_t range_start = vpdmabuf->phys_vec[i].paddr;
>> +
>> +		if (unlikely(check_add_overflow(page_buf_offset, pagesize,
>> +						&page_buf_offset_end)))
>> +			return -EFAULT;
> 
> Why is this inside the loop, the args are invariant of anything
> modified in the loop.  Thanks,

Right; I slipped up when renaming/refactoring the additions, that 
definitely goes above.  Fixed!


Thanks,


Matt


> 
> Alex
> 
>> +		/*
>> +		 * If the current range starts after the page's span,
>> +		 * this and any future range won't match.  Bail early.
>> +		 */
>> +		if (page_buf_offset_end <= range_buf_offset)
>> +			break;
>> +
>> +		if (page_buf_offset >= range_buf_offset &&
>> +		    page_buf_offset_end <= range_buf_offset + range_len) {
>> +			/*
>> +			 * The faulting page is wholly contained
>> +			 * within the span represented by the range.
>> +			 * Validate PFN alignment for the order:
>> +			 */
>> +			unsigned long pfn = (range_start + page_buf_offset -
>> +					     range_buf_offset) / PAGE_SIZE;
>> +
>> +			if (IS_ALIGNED(pfn, 1 << order)) {
>> +				*out_pfn = pfn;
>> +				return 0;
>> +			}
>> +			/* Retry with smaller order */
>> +			return -EAGAIN;
>> +		}
>> +		range_buf_offset += range_len;
>> +	}
>> +
>> +	/*
>> +	 * A hugepage straddling a range boundary will fail to match a
>> +	 * range, but the address will (eventually) match when retried
>> +	 * with a smaller page.
>> +	 */
>> +	if (order > 0)
>> +		return -EAGAIN;
>> +
>> +	/*
>> +	 * If we get here, the address fell outside of the span
>> +	 * represented by the (concatenated) ranges.  Setup of a
>> +	 * mapping must ensure that the VMA is <= the total size of
>> +	 * the ranges, so this should never happen.  But, if it does,
>> +	 * force SIGBUS for the access and warn.
>> +	 */
>> +	WARN_ONCE(1, "No range for addr 0x%lx, order %d: VMA 0x%lx-0x%lx pgoff 0x%lx, %u ranges, size 0x%zx\n",
>> +		  address, order, vma->vm_start, vma->vm_end, vma->vm_pgoff,
>> +		  vpdmabuf->nr_ranges, vpdmabuf->size);
>> +
>> +	return -EFAULT;
>> +}
>> +
>>   /*
>>    * This is a temporary "private interconnect" between VFIO DMABUF and iommufd.
>>    * It allows the two co-operating drivers to exchange the physical address of
>> diff --git a/drivers/vfio/pci/vfio_pci_priv.h b/drivers/vfio/pci/vfio_pci_priv.h
>> index fca9d0dfac90..c8f6f959056a 100644
>> --- a/drivers/vfio/pci/vfio_pci_priv.h
>> +++ b/drivers/vfio/pci/vfio_pci_priv.h
>> @@ -23,6 +23,20 @@ struct vfio_pci_ioeventfd {
>>   	bool			test_mem;
>>   };
>>   
>> +struct vfio_pci_dma_buf {
>> +	struct dma_buf *dmabuf;
>> +	struct vfio_pci_core_device *vdev;
>> +	struct list_head dmabufs_elm;
>> +	size_t size;
>> +	struct phys_vec *phys_vec;
>> +	struct p2pdma_provider *provider;
>> +	u32 nr_ranges;
>> +	struct kref kref;
>> +	struct completion comp;
>> +	unsigned long vma_pgoff_adjust;
>> +	u8 revoked : 1;
>> +};
>> +
>>   bool vfio_pci_intx_mask(struct vfio_pci_core_device *vdev);
>>   void vfio_pci_intx_unmask(struct vfio_pci_core_device *vdev);
>>   
>> @@ -114,6 +128,12 @@ static inline bool vfio_pci_is_vga(struct pci_dev *pdev)
>>   	return (pdev->class >> 8) == PCI_CLASS_DISPLAY_VGA;
>>   }
>>   
>> +int vfio_pci_dma_buf_find_pfn(struct vfio_pci_dma_buf *vpdmabuf,
>> +			      struct vm_area_struct *vma,
>> +			      unsigned long address,
>> +			      unsigned int order,
>> +			      unsigned long *out_pfn);
>> +
>>   #ifdef CONFIG_VFIO_PCI_DMABUF
>>   int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32 flags,
>>   				  struct vfio_device_feature_dma_buf __user *arg,
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
