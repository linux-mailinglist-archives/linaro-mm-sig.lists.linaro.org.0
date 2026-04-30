Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDN+GcldBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:17:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E63715320C7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:17:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A7A6402BB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:17:28 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id D38FB404B4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2026 16:47:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=VmzmDuLo;
	dmarc=pass (policy=reject) header.from=meta.com;
	spf=pass (lists.linaro.org: domain of "prvs=3580f105bd=mattev@meta.com" designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=3580f105bd=mattev@meta.com"
Received: from pps.filterd (m0109333.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63UDAiqc4181720
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2026 09:47:55 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=CXvj6rmLtU+yqG7K5nb8uAhPCFMrTB1Lg0tTO/8UY38=; b=VmzmDuLofwCN
	XcDBoa+sLJlHhfy6vjpvEjX9zOHYSohipMJKuWABb0/tFAgCYvUKYRmq1VYJYrm+
	YyffbepmXjCagGPySLIrmaJ5SWJEIM+OBHitW/S1gBzRFsRT6oc2SxOGzvzDzjUw
	92vNwrtouQ3cYeinUfudEAWZWLyl6zwoda8rflkF4cjAWAFZesr61T3Px2BTqwDf
	hF6OXYCAbJd2TYHTf+LHNX+8OiYQxHtTHKnZa33UUllCmQi1/95LKvMZ1J2xd6Ve
	2O6g8ywmcBylHs0F9CFe3Ys6hZVRNSwGu5ttT4tnlutyOtT7x9qVVAEtvsvTkoVC
	pXi+P7srPw==
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4drsn3behr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2026 09:47:55 -0700 (PDT)
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-488e097a270so7303665e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2026 09:47:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777567674; x=1778172474;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CXvj6rmLtU+yqG7K5nb8uAhPCFMrTB1Lg0tTO/8UY38=;
        b=Xa/qjGAcsFDNaCw0nva6i/NPBIa9zDoFQ679Gc6F075FTneXGU4obx8rDl4j/D1hEJ
         tDP5cQDoOfmeRGYpwCetTAWfClkCTSxRBzJivhq+RxmyXPniheMSHdG+Xzs4alqtFYc2
         JlTGfJnY9YbjbcrXgckcRrzVqjrzmgsW+pjxTStWp7uQMz4Y01D3DCXwbmJm6LY4XJBd
         8YHEoe5UAgylDmsWadZeeQ2m2JjpBsdeaidNn3/3iSHBEDzzcedCkzccWcZbEdYAOzwj
         VWd+DT/NcDiy7MJlcg4UZkrwdLtu+ObFkO435ps1Q4LOMjxpLvF/lsCMju1Jaz0JzwWy
         5Axw==
X-Forwarded-Encrypted: i=1; AFNElJ/yAi8BYgS6DJdGF9Vh7nByj+XjCkfKPE/bm8rQwi6QO7GV0K+UZzdiWJwHqejGTahGeQxNT2X6032vQdTA@lists.linaro.org
X-Gm-Message-State: AOJu0YzBtwpJOH0YSVv8cewmOYPpWKHRvn92xXPnTutkziq5gBpYRN3r
	m8ADLXsxQlwHIM8Sa/HySS/vPq/5jhphrHx4iBOpHCNRh9r/Y4vTpKrkKrQ4VFooq3HCW7STj/2
	uEBX/DsXRSGnaZbL2COTtbNM5vLbwhe4K2NBT958Zd2aEBSXm0gY3dc4h2J+YYcxnvs0=
X-Gm-Gg: AeBDieslCVQ4uml6854e+zW58KIUaloGtEIeaRj69fJTO6zJELv2to14ZxWSTn6uMpS
	fwh9MLqWY9Vox4btOl0HGne142CTWgdogETNknd4v9fc2egLsSQZX3V1V5tAMWxtYYE5haDlldM
	i1w+abK82WLNeflWsVw/sBh2JZ8ArLATTWCbM+tDTjhpHfSYIQrdP4rhniXt6ukUKiQtXkD+N5O
	EFVNgcyijk94HS1JqZWNK2jP3T5ixYXtG7HnnhwSfWJ4NnKli8zkaAV8DiRk4m0bbm7iyVSxUFZ
	BlI0bgx3s+9xk4hXiMSmsC06L3RWgrEs5MQ98eaEnF3TbduwRG4yoDFj8xSuTKvP5+P6iWatCWJ
	6Mg+Z9hh0KsQ1hZIIMYpXGHGft3HO+I35pgX+HOfs0NKPWC5y5TzUMuGuYJVMDSDfIXBuSbu1/I
	5F
X-Received: by 2002:a05:600c:8483:b0:487:2671:fb8f with SMTP id 5b1f17b1804b1-48a83d73324mr65498845e9.8.1777567673971;
        Thu, 30 Apr 2026 09:47:53 -0700 (PDT)
X-Received: by 2002:a05:600c:8483:b0:487:2671:fb8f with SMTP id 5b1f17b1804b1-48a83d73324mr65498015e9.8.1777567673394;
        Thu, 30 Apr 2026 09:47:53 -0700 (PDT)
Received: from ?IPV6:2a03:83e0:1126:4:10fb:be93:502f:b7be? ([2620:10d:c092:500::4:5cf3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a822c82f2sm75353315e9.11.2026.04.30.09.47.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2026 09:47:52 -0700 (PDT)
Message-ID: <c598a21e-ee50-42d9-98dc-2959e84ace50@meta.com>
Date: Thu, 30 Apr 2026 17:47:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jason Gunthorpe <jgg@nvidia.com>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-4-mattev@meta.com>
 <20260424182426.GG3444440@nvidia.com>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260424182426.GG3444440@nvidia.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDMwMDE3MiBTYWx0ZWRfX3FPlUfCpL7eo
 AcHjJFyR6AqrowI/RAV2q0O0zL5mfN6F+pIDBmn0Yu9SHhZHAFU5BjJds2h4uy+1a5tZHQpBwWD
 K8YWi3M1Rl3KpRKci5MvX20DwWhKFJHLFTIO4lTeVdVH6rf9+A7NFsA11vH0hw2xx/U6HP6IiPh
 OIyxzXH7oM/8hV2YtVVFgUCJXdQSV8OtD0rj0AaskjxqmuR4H6F5cfr2xzAU2xd8iEMrQDZUdeY
 v05wbiuCICtGmGrlYfB1fy9u/1+QIF3vVybl6OT5c4+kjmy/13C9OZ8wN7/kCNm/93PzyuUFaY0
 puhzy34brew20AjFO1xSFgOXgVINPTbMYTu97yXvAnLsGFDpfzv52khS7oKCDS3AhGre3MaiGpg
 aya78PJJoWLBDAkcqWvzZhZd3hO38HOfk5VEI2voRhiLD4wRbId9lU7SYfs/C+96VrTvj1T1Xzh
 sbWk3Nuz/AfuXNp0tXw==
X-Authority-Analysis: v=2.4 cv=NoDhtcdJ c=1 sm=1 tr=0 ts=69f387bb cx=c_pps
 a=Q4jRaax7EcWM5fECTC1wcQ==:117 a=Dv35txUGz5gI0hTa:21 a=xqWC_Br6kY4A:10
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7x6HtfJdh03M6CCDgxCd:22 a=tpM8CJlwf7uhpglF1g9U:22 a=nxdftAbHouV8PAc5HfQA:9
 a=QEXdDO2ut3YA:10 a=nJq5_VNI1X7IEIKzvdHs:22
X-Proofpoint-GUID: eN2pE3ie7dD5S5rVFMO1ELgT7JU-lxfq
X-Proofpoint-ORIG-GUID: eN2pE3ie7dD5S5rVFMO1ELgT7JU-lxfq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-30_04,2026-04-30_02,2025-10-01_01
X-Spamd-Bar: ----
X-MailFrom: prvs=3580f105bd=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3DZ7ZA6UY5IWKBAFWBPPW2INHZ6UVQ33
X-Message-ID-Hash: 3DZ7ZA6UY5IWKBAFWBPPW2INHZ6UVQ33
X-Mailman-Approved-At: Wed, 13 May 2026 11:15:58 +0000
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] vfio/pci: Add a helper to create a DMABUF for a BAR-map VMA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3DZ7ZA6UY5IWKBAFWBPPW2INHZ6UVQ33/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: E63715320C7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[306];
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
	NEURAL_SPAM(0.00)[0.414];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

Hi Jason,

On 24/04/2026 19:24, Jason Gunthorpe wrote:
> 
> On Thu, Apr 16, 2026 at 06:17:46AM -0700, Matt Evans wrote:
>> +int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
>> +				   struct vm_area_struct *vma,
>> +				   u64 phys_start, u64 req_len,
>> +				   unsigned int res_index)
>> +{
>> +	struct vfio_pci_dma_buf *priv;
>> +	const unsigned int nr_ranges = 1;
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
>> +	 * The mmap() request's vma->vm_offs might be non-zero, but
>> +	 * the DMABUF is created from _offset zero_ of the BAR.  The
>> +	 * portion between zero and the vm_offs is inaccessible
>> +	 * through this VMA, but this approach keeps the
>> +	 * /proc/<pid>/maps offset somewhat consistent with the
>> +	 * pre-DMABUF code.  Size includes the offset portion.
> 
> I'm not sure I understand this comment?
> 
> For the old path vm_pgoff for byte 0 of the bar starts at some large
> offset
> 
> For the new path vm_pgoff for byte 0 of the first range starts at 0

Glad you asked.  :)

This is trying to achieve keeping /proc/<pid>/maps (or similar) somewhat
as informative as pre-DMABUF BAR mmap, in terms of keeping the VMA
vm_offs column useful.  Before this patch, say you mmap() two slices A
and B of the same BAR:

  struct vfio_region_info bar_region;

  vm_a = mmap(0, 0x1000, ..., device_fd, bar_region.offset + 0);
  vm_b = mmap(0, 0x1000, ..., device_fd, bar_region.offset + 0x4000);

...you'd see something like this in /proc/blah/maps:

fffff4000000-fffff4001000 rw-s 10000000000 00:07 148     /dev/vfio/devices/vfio0
fffff5000000-fffff5001000 rw-s 10000004000 00:07 148     /dev/vfio/devices/vfio0

It's nice being able to tell the actual BAR offset (within the
VFIO_PCI_OFFSET_MASK, i.e I _don't_ mean the synthetic region index
offset).

For vm_b, if we create the DMABUF to begin from the start of the
actually-mapped slice

   phys = pci_resource_start(pdev, index) + (vma->vm_pgoff << PAGE_SHIFT)

then the VMA's vm_offs would need to be thunked back down to 0 (since
the fault handler then treats vm_b + 0 as the first byte of the DMABUF).
That works/adds up, but then the vm_offs of both VMAs A & B both have
offset 0, and it's harder to differentiate in /proc/blah/maps.

An example from the later patch "vfio/pci: Provide a user-facing name
for BAR mappings" naming is:

ffffb8070000-ffffbc040000 rw-s 00030000 00:0b 5         /dmabuf:vfio0:0000:00:03.0/1
ffffbc140000-ffffbc240000 rw-s 00000000 00:0b 2         /dmabuf:vfio0:0000:00:03.0/0

We could possibly stash the original offset somewhere and then render it
in the name string, but the name's already about the max size and using
the existing vm_offs column is nicer IMO, doesn't need a new field, etc.

I need to work on this comment then!  What this is trying to say is that
the DMABUF is made artificially larger than the part that is visible
through the VMA.

I.e. the DMABUF starts at the beginning of the BAR and so an mmap for
offset +0x4000 for 0x1000 bytes starts at 0 and the VMA sees
0x4000-0x5000.

>> +	 * This differs from an mmap() of an explicitly-exported
>> +	 * DMABUF which is an arbitrary slice of the BAR, would be
>> +	 * created with the desired offset+size, and would usually be
>> +	 * mmap()ed with pgoff = 0.
>> +	 *
>> +	 * Both are equivalent and vfio_pci_dma_buf_find_pfn() finds
>> +	 * the same PFNs.
>> +	 */
>> +	priv->vdev = vdev;
>> +	priv->nr_ranges = nr_ranges;
>> +	priv->size = (vma->vm_pgoff << PAGE_SHIFT) + req_len;
> 
> And why is size being calculated from pgoff ?

This is the part that makes the size the requested size plus the
invisible portion before the VMA starts (equal to an extra 0x4000 in the
example above, distance from offset 0).


Thanks,


Matt

PS: Thanks also for the other reviews!
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
