Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHzzCZRgBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:29:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CA701532446
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:29:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8EB6404C6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:29:22 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id 7384C3F804
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 16:42:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=LVK6U0wJ;
	dmarc=pass (policy=reject) header.from=meta.com;
	spf=pass (lists.linaro.org: domain of "prvs=358647ce9a=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=358647ce9a=mattev@meta.com"
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6466Piwe3431891
	for <linaro-mm-sig@lists.linaro.org>; Wed, 6 May 2026 09:42:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=KvzelPFNcl7MU+TM0miXboxQSsRGRRlAbQLX3lQgau0=; b=LVK6U0wJ9iIb
	vlscmhtMH1uiKx6GtvkvD3PFd3zgD6F0pJGalLirUzyn7txEkM7B87H6hJ3gBB/R
	xy6LpmR0MAd+x0ZIqp8r0Hyc0y1/04XFD7dLYOiSF6fGh+E8tNIVi/vB/zavG3F8
	8TN42shcv5hTMVXNvb74VYPbCsICbn9zU0M4AXi1sq9f+h9zZCOy9fgdkWE+OWLN
	jvoNlSSljZ+OfTzxu3364d0Kvicl9FDoxbDiiEVrSaNxol0u2vIUnHyNPLDd0Ix5
	f5o4c4x9PCLCIVbSwzFZPTO6tjK7i7qWftyIVCUjJ+tCPZ9EmmMKHs9roWgbBdAX
	UkgXxMdO6A==
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4dwf379h8u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 06 May 2026 09:42:45 -0700 (PDT)
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-488c2aa6becso48271305e9.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 06 May 2026 09:42:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778085765; x=1778690565;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KvzelPFNcl7MU+TM0miXboxQSsRGRRlAbQLX3lQgau0=;
        b=AXzQ3NDBXS2tEmHN5HfkPb0haq7W/1q3ag8CBPJEH6jZmKTIr5nLQj50ZdvXOowmWD
         5OOha30jpwg/DR/qvoOqxk8JiOTMndmbnjXG9Ynoj+OA4Mzno8xbuDG8RIm5u/9W6uyw
         uUgNGFLV4bdCVShzolt94Q5LN8STCHzeeEp7UpLVmsGC0ppqVIdu5bgojZcXRd1dOp5W
         zxMTKzzffCu9zLGM5qlz/RwuXhZmnJmPqjCqqL68xAG7eA0wcAkKoABD3W8e6PqgZfo2
         ONxOckLVvxQrkOW+y1HwToj+LxwdQb4JO82orTzjVDW4LIcO20Rsp7DyLfFqmWf+8wMn
         TxYA==
X-Forwarded-Encrypted: i=1; AFNElJ9Rz5M2PPhxuHG8KzwFMJfOPzCjtxQ5NKJ3WTc7fcETHJwcDXEKzt0BneS3HxePh4Bai+e/oJ47xrMaEZZG@lists.linaro.org
X-Gm-Message-State: AOJu0YwidoXPSppuG4STx5O7bd6DBYJ0htSWbTi+uyoU5hV/O7l8X/nz
	Nx6hIpmndXdv+4+NnT5hX3216g+Q22SBFJ/sPBEr3A74tzU/0K3EKGBNJKwJSQcwzu8KHoFG20Y
	MPJ5wU72MMljL8pwAcTkAr356+tW6nUZbuuulL3/j2lMx/+uRDtPMm7gRqwcbf+PV+EE=
X-Gm-Gg: AeBDievGId79CoDjhpmKFOJ9IJ8PP7KJdQQfQsbqhhKXtYWuVVj2I0Wq3t6hBMyExIY
	w1BGRVV/muuW6b9yWJSHWD8sUxqOcO7Fb2Kv1AjPSuRYIq0H+niuKWMvI5OiOlRHgEqi7ufdIdh
	uFhtpdNFftOgzTH+J3LB16CD/3mySmuNzBG4d0CQpJRbEDGD6jNknlBDMXI4UHhe44KhkvowSZU
	v7TQ6ZaEVzuiOZFWwSjRzWMQlqzWabijQlWswbZiBOaFIRmatkZN5fN5BLtYvk/OgyrRF+pJU7W
	2VD3D8tWS7nlYOFP1NZQFtSFFZAV5x0BRSqQ18MxFtUPMBgKUI7ymaOUVsYoXXyDuVvUkxcszCn
	Nf6Xe1xJJ69eyTv9v5yhImAjIgFm0l4PLB8s+W71+Y/dC3Li32vX2jAB7/5+jmu6SWlg+s9LQhr
	iRbwFtX9YHx0pYOuiXrB1IGjji6RTD+Jlb0brmivBhiVVz2WBJcN1Y1+CpiGMsSMzDXA4r/9P79
	uOIJFeC7PsgKyHWQ85SIm9LUTVjIWCgbQ==
X-Received: by 2002:a05:600c:2ed3:b0:488:d6eb:e63c with SMTP id 5b1f17b1804b1-48e51f427b3mr46111835e9.15.1778085764690;
        Wed, 06 May 2026 09:42:44 -0700 (PDT)
X-Received: by 2002:a05:600c:2ed3:b0:488:d6eb:e63c with SMTP id 5b1f17b1804b1-48e51f427b3mr46111525e9.15.1778085764222;
        Wed, 06 May 2026 09:42:44 -0700 (PDT)
Received: from ?IPV6:2001:8b0:8b6:13d4:102e:f2af:e074:5cde? (e.d.c.5.4.7.0.e.f.a.2.f.e.2.0.1.4.d.3.1.6.b.8.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:8b6:13d4:102e:f2af:e074:5cde])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e538fb1a7sm113622555e9.9.2026.05.06.09.42.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 09:42:43 -0700 (PDT)
Message-ID: <9a7e51bc-351d-4ca0-8080-fd9e0265f3a0@meta.com>
Date: Wed, 6 May 2026 17:42:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Leon Romanovsky <leon@kernel.org>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-2-mattev@meta.com>
 <20260501131236.278ac431@shazbot.org>
 <9304aada-ee84-4cf2-a1d7-82313eda07aa@meta.com>
 <20260506152937.GJ11063@unreal>
 <c0bd0e23-712c-483e-a809-47126ab6e9e9@meta.com>
 <20260506161441.GK11063@unreal>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260506161441.GK11063@unreal>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA2MDE2MyBTYWx0ZWRfX/9zLUQAKZkhK
 0tj6UnC4DLwgAGKhsBH7l0GL7L3y6O7DrxMv8BNkZ5foKaKkZFX9QzCkD5y5viUwO/pf3jcT6bT
 hSjo3kjiLSmGvj5bKiWr6LNbt472gMnPu3hRO76gxErYC1OA9GBt2YCSgTj04/lByoDVtjTaAla
 VCt10O60iQq0TMC55iKk+8cNJWLIfGjjDDp9PIC9mPQs0Gf4OqVfTcX2/7nlSVMyMx1z6dvbu/E
 t9bQcbM+mqpYPzjVrSCJt+VVvung1GKt/tXUr+2cATVZXgmb+WwEzesGijO6KCnNjYEaQbUZhXl
 7YY3q9ZhJL7BlqCdKHueQGb2k30ZSCe6NImBfYXvY4u0ehtMKiQenUgapmn3KAZ9rzlPd4Yj1r0
 5g1RYdr7idO1wM9SBLGuzWhS8N6xD8rBJjhn+7YLO0hd9ihg3XYDUP5PudAVQsf7AN+2WKkUk2Y
 2yy0cK6Yf85jjMv5avw==
X-Proofpoint-GUID: yrEEbhWLsaTwFyLPAXCbyQ5_sPiCcahR
X-Authority-Analysis: v=2.4 cv=GKs41ONK c=1 sm=1 tr=0 ts=69fb6f85 cx=c_pps
 a=Ech0Gv1thIkdqUNjVc2Ehg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=wpfVPzegXHpEFt3DAXn9:22 a=VwQbUJbxAAAA:8 a=Ikd4Dj_1AAAA:8 a=VabnemYjAAAA:8
 a=uIBLic6oc_-Le5kNHd0A:9 a=QEXdDO2ut3YA:10 a=cZgK7WzY9ta9U-6s7oqD:22
 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-ORIG-GUID: yrEEbhWLsaTwFyLPAXCbyQ5_sPiCcahR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-06_01,2026-05-06_01,2025-10-01_01
X-Spamd-Bar: ----
X-MailFrom: prvs=358647ce9a=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2AERRBNZUVELTH6TOWPRH6RCZ6E6TTCU
X-Message-ID-Hash: 2AERRBNZUVELTH6TOWPRH6RCZ6E6TTCU
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:47 +0000
CC: Alex Williamson <alex@shazbot.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, =?UTF-8?Q?Carlos_L=C3=B3pez?= <clopez@suse.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] vfio/pci: Fix vfio_pci_dma_buf_cleanup() double-put
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2AERRBNZUVELTH6TOWPRH6RCZ6E6TTCU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: CA701532446
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[162];
	R_DKIM_REJECT(1.00)[meta.com:s=s2048-2025-q2];
	R_SPF_ALLOW(-0.20)[+mx];
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
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.036];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

Hi Leon,

On 06/05/2026 17:14, Leon Romanovsky wrote:
> 
> On Wed, May 06, 2026 at 04:55:27PM +0100, Matt Evans wrote:
>> Hi Leon,
>>
>> On 06/05/2026 16:29, Leon Romanovsky wrote:
>>>
>>> On Wed, May 06, 2026 at 02:53:31PM +0100, Matt Evans wrote:
>>>> Hi Alex,
>>>>
>>>> On 01/05/2026 20:12, Alex Williamson wrote:
>>>>>
>>>>> On Thu, 16 Apr 2026 06:17:44 -0700
>>>>> Matt Evans <mattev@meta.com> wrote:
>>>>>
>>>>>> vfio_pci_dma_buf_cleanup() assumed all VFIO device DMABUFs need to be
>>>>>> revoked.  However, if vfio_pci_dma_buf_move() revokes DMABUFs before
>>>>>> the fd/device closes, then vfio_pci_dma_buf_cleanup() would do a
>>>>>> second/underflowing kref_put() then wait_for_completion() on a
>>>>>> completion that never fires.  Fixed by predicating on revocation
>>>>>> status.
>>>>>>
>>>>>> This could happen if PCI_COMMAND_MEMORY is cleared before closing the
>>>>>> device fd (but the scenario is more likely to hit when future commits
>>>>>> add more methods to revoke DMABUFs).
>>>>>>
>>>>>> Fixes: 1a8a5227f2299 ("vfio: Wait for dma-buf invalidation to complete")
>>>>>> Signed-off-by: Matt Evans <mattev@meta.com>
>>>>>> ---
>>>>>>
>>>>>> (Just a fix, but later "vfio/pci: Convert BAR mmap() to use a DMABUF"
>>>>>> and "vfio/pci: Permanently revoke a DMABUF on request" depend on this
>>>>>> context, so including in this series.)
>>>>>
>>>>> We really need a fix for this split out from this series, It's already
>>>>> been shown[1] that this is trivially reachable.  Carlos proposed[2] a
>>>>> similar solution to the one below.  I was concurrently working on the
>>>>> issued and suggested an alternative[3].  Let's pick a solution for
>>>>> 7.1-rc.  Thanks,
>>>>
>>>> It looks like [3] is progressing, so I'll drop this one when I can rebase
>>>> onto it.
>>>>
>>>> I noticed [3] removes the dma_resv_lock(priv->dmabuf->resv) around the
>>>> priv->vdev = NULL, and this series' vfio_pci_mmap_huge_fault() relies on
>>>> vdev only changing whilst resv is held to resolve a race between a fault and
>>>> cleanup (see patch 7 of this series).  The handler takes resv so that it can
>>>> stably test vdev in order to take memory_lock.
>>>
>>> I think that you should rely on priv->revoked and not on priv->vdev.
>>
>> Needs both unfortunately, as the fault handler ultimately needs to take
>> vdev->memory_lock.
> 
> One can argue that if priv->revoked == True, all accesses to device
> should be denied and treated as priv->vdev == Null.

I agree, the handler will early-exit when a buffer is revoked.  Though 
when it _isn't_ revoked, it still needs to go through a careful set of 
steps to keep vdev around long enough to take the lock (and ensure it 
still isn't revoked, etc.).

I think the sequence in patch 7 still works (with Alex's patch in [3]), 
since the invariants still hold:

- if not-revoked then vdev is still valid (IOW, vdev = NULL only happens 
after revoked = true)
- revoke is only changed when holding priv->dmabuf->resv

OK, [3] doesn't seem to break this series (just context/rebase).  Sorry 
for the thinking out loud, it'll be good if someone sees a flaw in my 
reasoning though.

[3] was https://lore.kernel.org/all/20260429142242.70f746b4@nvidia.com/


Matt
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
