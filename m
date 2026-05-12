Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4C1zGlhhBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:32:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3AF53255E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:32:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27816401DA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:32:39 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id D42A53F77F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 17:51:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=EExxnns3;
	spf=pass (lists.linaro.org: domain of "prvs=35926057cd=mattev@meta.com" designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=35926057cd=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0148461.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64C4fPoL2890452
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 10:51:47 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=sf+Rn+/zlE/3t2At5IGAJ+WyeFpgS59mk9gpV5fg5Bg=; b=EExxnns32Xp5
	12a+7JZj4UeiKq2uMxYppv3vd0ZzsVG+jW9paFI2gTQDUpJ3vaSe7cbARrwIEwoZ
	y383o8nxsaU3WmH7xqF6yid/vBMEqlE1f5m15nEqEVIjAn6WwIRPawNhYdsH9wDC
	2ntA1fgLCD9kG5bI6KgfgDbYzqY/t+gGgGI4gjgZUuY7aUaUkfuzpY/Dfe2GXWDB
	hXZqgpCjNQuYIyEiYSUfvrBAaOCuWL5tvv0vnqMrX6RoQja+7tcx/afVV+elfC0M
	PpWIl7ehb364TmuyvB2TuJWqcyb7SkijecRSPc5SDF7Ju4Ee/PXYCRtdMQm8TSwm
	X/JaxiPHfA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4e3nvnah8t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 10:51:47 -0700 (PDT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2ba9a744f7dso4703664eec.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 10:51:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778608307; x=1779213107;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sf+Rn+/zlE/3t2At5IGAJ+WyeFpgS59mk9gpV5fg5Bg=;
        b=O7txMFYX6L4WlMo+1zKAdGstt6P821bM9m32YuAEHd0Ya9mAHzOXdwr1ldQbvOhhyH
         Ojrgv6I2T04zgDysa7ZZpgug4ZUqRDYc4a0LZI6KGB1G6pRW89XNp5bLzwQXib3yFQPq
         3ePJHRzyQ5H8qq1xCQBtJd5/DU2q/FzEb8rOm99dnWBFcFVdBcPyxLQXvn27qkjL0Jzv
         OfiSMQa86awBrfS35fCH+098joHaiXlbyWPjvazV0hOgNAk0q0h20/WrOGl3IcpWH+aS
         j4IXDqvxL2lXqSXzq9Is1iADKzDvYeORRhlRoayqIquxUAgdQ03rQ4TjEQgcHuzhjzT9
         yrhw==
X-Forwarded-Encrypted: i=1; AFNElJ8qpnQhMT+nEiCfID92RosLp9ptzPrcenl/DzH9KteDKsxBOkldWhnS7IKaTq0Wkzo90M2EEcwChHwT4I/d@lists.linaro.org
X-Gm-Message-State: AOJu0YzFceQRSOtpgtLZt/7qTVO1ToO3Ee++IBbACwRQ962xRK4esAC3
	I/YQ7mOzjMV7y1j3E4CJ2QxD6lL9aH2vpAu7HxjIWwdOb36J826p5B5fkoFjWtdeRBz6QLeE9Gl
	s1ebIfwgXh4MjEJOM/AJNtSe8A95NEjzTDB+US+P1DHc/ca5LKKse5UjkwrwviFfSV4c=
X-Gm-Gg: Acq92OE/F78ttojdYrkbbhCK8OTm3oNxPITbxi47DjQL73Mdq5pAVPl1kmVqm3lots7
	WKhYXGbx44n2jZhv5+Ku6+xrv2V+mBnGl5WlLjzy4TPSuWpDro47bx43Q9r//qcA90UioV7DiBB
	nrsrTh6My1m0kgKH8c65w9M/VCMDdYv6RDeGvxuvgpIq8Ib8SAnMSZMELvO3vQsCTdLZZBwVAwH
	YB5qNa3v1UOFFrscP0T0KV8cJXgX8N1tl/QaOrc5s4Atmu1efZVaq0lPbTx+1pZxlQIoeIXz0OQ
	uFZykOI420Xca+mR67KIxyzJOfcOf5qgWybuxWZfefPIitlXS+6/nLB8NFfd/FaRpf8eeh8hub6
	E4Qv+WhMzDT6ChOT6cTA6nJ8a
X-Received: by 2002:a05:7300:ed85:b0:2f8:1f2b:bb5d with SMTP id 5a478bee46e88-30119f6d66dmr42252eec.25.1778608306626;
        Tue, 12 May 2026 10:51:46 -0700 (PDT)
X-Received: by 2002:a05:7300:ed85:b0:2f8:1f2b:bb5d with SMTP id 5a478bee46e88-30119f6d66dmr42218eec.25.1778608306019;
        Tue, 12 May 2026 10:51:46 -0700 (PDT)
Received: from [10.0.40.30] ([51.52.155.79])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f8859e8389sm18884568eec.3.2026.05.12.10.51.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 May 2026 10:51:45 -0700 (PDT)
Message-ID: <4af0c788-22cc-4fb1-9276-ab35439fb7c8@meta.com>
Date: Tue, 12 May 2026 18:51:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Alex Williamson <alex@shazbot.org>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-10-mattev@meta.com>
 <20260424183153.GJ3444440@nvidia.com> <20260426105215.GA440345@unreal>
 <20260427083644.4ee174cd@shazbot.org>
 <25a4fc45-1b4d-426b-954a-60bf21e9040f@meta.com>
 <20260511140957.25eb5d9d@shazbot.org>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260511140957.25eb5d9d@shazbot.org>
X-Authority-Analysis: v=2.4 cv=O6YJeh9W c=1 sm=1 tr=0 ts=6a0368b3 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=2UbFsIa4v//lIgRL4kGwwA==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7x6HtfJdh03M6CCDgxCd:22 a=03ozwUkBphtHgyqjj1sw:22 a=VwQbUJbxAAAA:8
 a=r1p2_3pzAAAA:8 a=VabnemYjAAAA:8 a=Ikd4Dj_1AAAA:8 a=h_Mwey2iunVtOOa4NVUA:9
 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22 a=r_pkcD-q9-ctt7trBg_g:22
 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEyMDE4NiBTYWx0ZWRfX3KTCETLg2d9i
 kgcudR5F0ap4gKCvSuAjr2t0cvBluA8qHcdTDmSiiAHH08UpO584Xg7xC8uJoeuzCkIt4y1E9Ij
 oHrHTQVVVRen/B7/nPnhZSMaqYqNywMYWRjksTAq+k17rS+7yYWsIyKJj0Cqx6sxJkqDvFJiH6m
 vfEiDgr6Kvum2Aj4q2v/uuUJgVXcnWvB4/fhspf14bfTbErB4YvKEhikFEPsFHEdEsCZ9h2a2Iu
 BskdCW88YyuTpz2Jc/J9soT5C74tDjQbR0cW/EWDCuD+r/xTJIEuTt/WFnQoWvD/n8hCG73Xbu6
 bqp8IOspMnl6xQV/bBWVIPpgLZ0HeFMV26RdyS2wxeXCmI785NQ7E/GEBt2zPRADCjwtyErLRCl
 Vmq8ccQ1XZUligbtQL+qki7XLPOtBmk4d+QGGfs4lZ4v0im8det3BvLnVYr57kaAeKDj11UzfzE
 ApZMTsW4EpV3O8Lz/Jw==
X-Proofpoint-ORIG-GUID: A7l98jtPMj-u_ZRgcSCkTFXlBYrE-E9Q
X-Proofpoint-GUID: A7l98jtPMj-u_ZRgcSCkTFXlBYrE-E9Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_05,2026-05-08_02,2025-10-01_01
X-Spamd-Bar: ----
X-MailFrom: prvs=35926057cd=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TTUUZCGPOU4W3AK35RFPVU46MDMMPLP7
X-Message-ID-Hash: TTUUZCGPOU4W3AK35RFPVU46MDMMPLP7
X-Mailman-Approved-At: Wed, 13 May 2026 11:25:11 +0000
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 9/9] vfio/pci: Add mmap() attributes to DMABUF feature
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TTUUZCGPOU4W3AK35RFPVU46MDMMPLP7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 1A3AF53255E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[meta.com:s=s2048-2025-q2];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[meta.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.191];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,meta.com:email,meta.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

Hi Alex,

On 11/05/2026 21:09, Alex Williamson wrote:
> 
> On Mon, 11 May 2026 16:30:39 +0100
> Matt Evans <mattev@meta.com> wrote:
> 
>> Hi Alex, Leon,
>>
>> On 27/04/2026 15:36, Alex Williamson wrote:
>>>
>>> On Sun, 26 Apr 2026 13:52:15 +0300
>>> Leon Romanovsky <leon@kernel.org> wrote:
>>>    
>>>> On Fri, Apr 24, 2026 at 03:31:53PM -0300, Jason Gunthorpe wrote:
>>>>> On Thu, Apr 16, 2026 at 06:17:52AM -0700, Matt Evans wrote:
>>>>>> A new field is reserved in vfio_device_feature_dma_buf.flags to
>>>>>> request CPU-facing memory type attributes for mmap()s of the buffer.
>>>>>> Add a flag VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_WC, which results in WC
>>>>>> PTEs for the DMABUF's BAR region.
>>>>>>
>>>>>> Signed-off-by: Matt Evans <mattev@meta.com>
>>>>>> ---
>>>>>>    drivers/vfio/pci/vfio_pci_dmabuf.c | 15 +++++++++++++--
>>>>>>    drivers/vfio/pci/vfio_pci_priv.h   |  1 +
>>>>>>    include/uapi/linux/vfio.h          | 12 +++++++++---
>>>>>>    3 files changed, 23 insertions(+), 5 deletions(-)
>>>>>
>>>>> Nice and simple
>>>>>
>>>>> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
>>>>>       
>>>>>> @@ -1549,8 +1551,12 @@ struct vfio_region_dma_range {
>>>>>>    struct vfio_device_feature_dma_buf {
>>>>>>    	__u32	region_index;
>>>>>>    	__u32	open_flags;
>>>>>> -	__u32   flags;
>>>>>> -	__u32   nr_ranges;
>>>>>> +	__u32	flags;
>>>>>> +	/* Flags sub-field reserved for attribute enum */
>>>>>> +#define VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_MASK		(0xfU << 28)
>>>>>> +#define VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_UC		(0 << 28)
>>>>>> +#define VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_WC		(1 << 28)
>>>>>> +	__u32	nr_ranges;
>>>>
>>>> Alex,
>>>>
>>>> The TPH proposal extends the flags field in a similar way, but I suggested
>>>> a different approach to conserve bits. At the moment, we spend three bits
>>>> on a single feature, which feels wasteful.
>>>>
>>>> What do you think?
>>>> https://lore.kernel.org/all/20260409120415.GF86584@unreal/
>>>
>>> I already proposed a very different interface for TPH that decouples
>>> the dma-buf creation from setting the TPH values:
>>>
>>> https://lore.kernel.org/all/20260423132016.4a25e074@shazbot.org/
>>>
>>> This is overall less intrusive than the TPH change proposed, but it
>>> could still make sense to align this as an operation on the dma-buf,
>>> that can be probed as a separate feature.  Thanks,
>>
>> I'll add a VFIO_DEVICE_FEATURE_DMA_BUF_ATTRS in a v2 instead to get in
>> line with the TPH work, no worries.
>>
>> For the benefit of future hackers, how would you describe the criteria
>> for adding flags to this existing field?  What hypothetical feature
>> characteristics would be appropriate?  (Maybe it's that these attrs &
>> TPH add scalar fields in several bits rather than a simple boolean.)
>> Two of us have independently added something that's turned out to be
>> inapproriate so some guidance would be good.
> 
> I think the question of how we actually expand an arbitrary grab bag of
> "ATTRS" is the central question in whether we should implement the
> interface. 

> If we follow the direction I suggested for TPH, maybe this
> is just a VFIO_DEVICE_FEATURE_DMA_BUF_WC, where it supports only PROBE
> and SET, with SET taking only the dma-buf fd to implement the one-way
> promotion from UC -> WC.
> 
> If we support a generic SET ATTRS feature, we really need to map out how
> flag bits are indicated as supported and how a user untangles failures
> from trying to set various attributes.  If we end up with a feature
> indicating each ATTR is available, we might as well have just
> implemented a feature for each attribute.  Thanks,

Agreed, that's key.  Alhough, the aim of this patch is for attrs to be a 
memory type enum rather than a bag of possibly-concurrent and 
possibly-conflicting boolean flags.  Maybe 'memory attributes' would be 
a better feature name.

I'm not sure about the feature-per-attribute.  Say we do a 
VFIO_DEVICE_FEATURE_DMA_BUF_WC and then later support a second, 
VFIO_DEVICE_FEATURE_DMA_BUF_UC_WEAK (like, say, Arm Device-nGRE).  Then 
we have to specify that these two VFIO feature types actually 
interact/override somehow.  I doubt we'll end up with a dozen but it's a 
bit tiresome having a few features that interact.

At least if it's a single DMA_BUF_MEMATTR feature taking an enum, we 
just encode the N different (mutually-exclusive!) valid states and done. 
  I don't feel having a new feature for each keeps things simpler.

Discovery of support for a specific future attribute is OK with a single 
ATTR too; we can take an enum attribute argument to a GET and -ENOTSUPP 
for any we don't like.

(We could also add orthogonal DMABUF flags (can't think of a good 
example...) but I'd suggest _those_ as semantically-grouped different 
features, with the same issues of specifying conflicting cases versus 
existing features.)


Cheers,


Matt

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
