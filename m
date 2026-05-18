Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOcdFHBEC2qsFAUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 18:55:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CC976571453
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 18:55:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C704740475
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 16:55:10 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id 7B9E33F743
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 16:55:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=XN8JeS87;
	spf=pass (lists.linaro.org: domain of "prvs=3598b3f9c7=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=3598b3f9c7=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0528005.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64HNBbM51617783
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 09:55:00 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=ZLY9yfLbRBjpxy+2SZZ2QJ1skamsrrS9MpjOO7Diwus=; b=XN8JeS877jEd
	EB+ZxD27YIsRCiVSeSY3lAZcZeFfFdxQF+qfF4CTddtmCk+K2U3049kfL4nFlmH7
	SL3cBbF1DhT0/mKioDrKiQNuR8X/wF49z9HY/X3ZO25Px96ZXMmw7UGd0yozk487
	BHNo/ja8XUZxE3NcwBWwhA5pmfG/2rItk5Uheyxl/ozsVbHucAmJ+60On9h5ljfT
	gsTgOrcXmoUn6KVcUVg0XrKksIyHrs9ANc/am9s32d/a/zIvHdMsuKPx/fJ1J80A
	0nwLeVfHhVfOp9GSZfmcFsGcbp6H2Lm7tfODKhxJrvgT4pMpk4jYBf7t481ofi8A
	u89jy8cs2A==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4e7a5hps10-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 09:54:59 -0700 (PDT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2fe1cf409a1so5002210eec.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 09:54:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779123299; x=1779728099;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZLY9yfLbRBjpxy+2SZZ2QJ1skamsrrS9MpjOO7Diwus=;
        b=KAGMlGsIkaib4p3pQEma2ZfqusYYts3e0vzvYZiI7/bKZI/JiXoUWvafzXVCydjtTl
         MjwD2tj+/SzUinllEGJu4eyClPtpWRcDgI6Dh/DVpeB7jLcR/gJnvzMAtWv0ZaXZQRG9
         nqtPLw97M1hBvSD9vE3URlU7jMjOSg4mrZqW8FeeyFCku2pZE/UfAWgb5O9MprCD6IRE
         oUH55AWzzEkirCYUVxH5UONWJHIdvHEEqwB7doDxKV+JhuXKwQtFJoJhCXI6JJbelO2A
         648GzteSwjtQB84Y8BFZFBflpk0tWiiy1RDs/Lv3iuHnjV9e73huRK3E9DGGZlIHzYLa
         XhtQ==
X-Forwarded-Encrypted: i=1; AFNElJ+Pq6v+HfSlwOZIGSeJiV5CFg9qWHqEg7hrY2ZzRyfztXWNk9SdstBaM/9XhsRZIkvrUNOVWMOACskExd59@lists.linaro.org
X-Gm-Message-State: AOJu0Yx3lG3ljbk1OZXjG+j63nneiWIgqcgtbmmalbz7Svzliha/dfe9
	KSU/yExSovoxZYJz4rxPBXTRUwW3cE9XhvKB8mxsChRR58mrtmx/bRU0RgtZxSFdhJsiE6BvXCq
	MzQkgGDQAZ+b2LwyJC2itztBnTh0DT+L5k9g8tx+Wdm2uukX1/16gd2++6TLDKMkI308=
X-Gm-Gg: Acq92OH8ihPp/n6Z8CyIW/fJf/kRWxpdr453KGAdcp4sNEglNQ13oFA/tv+pbnlW+H8
	Oht9c6bWicmkiEv/ZVNtEb+QBslomHfE2Q6tXCOlqk6vXO5P7iG0wWXMUyY5JGRJL5jf8XZWPNO
	QvyM3ULlOhcU6+pcMCdHN49OgB8ls8G1Zf9yq+3RtgcYL3lmr4ehAWR56Ua7aNGnT3ogmcaaWZJ
	97P/fjjhQkh7LrM7RGQJ2wXibFW7NT14Y1CNh1QcBgzI2iKD9fLLljemz1rlsVQigIe1/4abhrf
	iqefRawOe1LPDJqz4nNuLahAQLf1rE8DxiHIMxRFhDIcVHdENES4g9Ccc9jo8OS0hh2ZYlQSXoM
	Go6xoIvXi71BpIJetaFw9BNeDgLtTvw==
X-Received: by 2002:a05:693c:2c8e:b0:2ee:f85:ec3c with SMTP id 5a478bee46e88-303986b0490mr6401872eec.30.1779123298688;
        Mon, 18 May 2026 09:54:58 -0700 (PDT)
X-Received: by 2002:a05:693c:2c8e:b0:2ee:f85:ec3c with SMTP id 5a478bee46e88-303986b0490mr6401843eec.30.1779123298106;
        Mon, 18 May 2026 09:54:58 -0700 (PDT)
Received: from [10.0.40.30] ([51.52.155.79])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30296dcb6adsm15797561eec.15.2026.05.18.09.54.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 09:54:57 -0700 (PDT)
Message-ID: <e90b20b7-3189-4395-b2a8-6391b5958936@meta.com>
Date: Mon, 18 May 2026 17:54:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Leon Romanovsky <leon@kernel.org>, Alex Williamson <alex@shazbot.org>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-7-mattev@meta.com>
 <20260501171919.42659174@shazbot.org> <20260505105822.GC11063@unreal>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260505105822.GC11063@unreal>
X-Authority-Analysis: v=2.4 cv=NqXhtcdJ c=1 sm=1 tr=0 ts=6a0b4463 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=2UbFsIa4v//lIgRL4kGwwA==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7x6HtfJdh03M6CCDgxCd:22 a=jCddH8ec0KUNCymVuxII:22 a=VabnemYjAAAA:8
 a=GEBLkO6eNKYXaKtmIbgA:9 a=QEXdDO2ut3YA:10 a=O8hF6Hzn-FEA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-GUID: xeZahzexqLxRUtCnI0JHzTFl3BJ--6KS
X-Proofpoint-ORIG-GUID: xeZahzexqLxRUtCnI0JHzTFl3BJ--6KS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE4MDE2NiBTYWx0ZWRfX3bUl/83tkzQE
 YNwgXmx3RBaBfajJ3teGYaO8x6ICMBR33066Zpboqq4NLdgbXFeACt8MY2ErxZ0+gvMcqxsBY91
 OTCoMu3rkXOlawnEblZVnOcLeGge4HWnqSrmSDes7eVrXogAiJfg/Anilj4FC5IxKCLsKWJOB8j
 KTsviQqgtFDEI1vuiq3Q2xO+PbkALzIkVEDoqnFIhh+hjQWBC6r8EVaSi129iN1Xi4moZRZnts4
 p4fvr2BqLM/60vCcByByqrUTvKTB1MdFGz6rGHOoOV4HguctsBc5qouqIH9D8ghM2uHybUy4vPO
 Q+fxPuFBOMKz3IAxsZRjw2dA5XxrLCs/B9DsocF0Jmriapil/+WBvXP003gBGgpprWZdOHGIE0P
 Xjq1IcUiqWYNoD76AOwF1NIaJtHHWzBmsFA+F+5inpb/y5YhRneXHQnFSWWJOmwmZiZ/s8hAofv
 hz3srVm5o0eyY2CMSUA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-18_03,2026-05-18_01,2025-10-01_01
X-Spamd-Bar: ----
Message-ID-Hash: FQAMW5YJYYY6IQAXYPB5JIWVPXPAM5F6
X-Message-ID-Hash: FQAMW5YJYYY6IQAXYPB5JIWVPXPAM5F6
X-MailFrom: prvs=3598b3f9c7=mattev@meta.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/9] vfio/pci: Clean up BAR zap and revocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FQAMW5YJYYY6IQAXYPB5JIWVPXPAM5F6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[meta.com:s=s2048-2025-q2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:mid,meta.com:email,lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[meta.com:-]
X-Rspamd-Queue-Id: CC976571453
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Leon, Alex,

On 05/05/2026 11:58, Leon Romanovsky wrote:
> 
> On Fri, May 01, 2026 at 05:19:19PM -0600, Alex Williamson wrote:
>> On Thu, 16 Apr 2026 06:17:49 -0700
>> Matt Evans <mattev@meta.com> wrote:
>>
>>> Previously, vfio_pci_zap_bars() (and the wrapper
>>> vfio_pci_zap_and_down_write_memory_lock()) calls were paired with
>>> calls of vfio_pci_dma_buf_move().
>>>
>>> This commit replaces them a unified new function,
>>> vfio_pci_zap_revoke_bars() containing both the vfio_pci_dma_buf_move()
>>> and the unmap_mapping_range(), making it harder for callers to omit
>>> one.  It adds a wrapper, vfio_pci_lock_zap_revoke_bars(), which takes
>>> the write memory_lock before zapping, and adds a new
>>> vfio_pci_unrevoke_bars() for the re-enable path.
>>>
>>> However, as of "vfio/pci: Convert BAR mmap() to use a DMABUF" the
>>> unmap_mapping_range() to zap is entirely redundant for plain vfio-pci,
>>> since the DMABUFs used for BAR mappings already zap PTEs when the
>>> vfio_pci_dma_buf_move() occurs.
>>>
>>> One exception remains as a FIXME: in nvgrace-gpu, some BAR VMAs
>>> conditionally use custom vm_ops, which have not moved to be backed by
>>> DMABUFs.  If these BARs are mmap()ed, the vdev enables the existing
>>> behaviour of unmap_mapping_range() for the device fd address space.
>>
>> What's the plan here?  Is this a temporary FIXME or a place to prove
>> that dmabuf for mmap works beyond the core use case?

The larger picture is that I havne't converted the nvgrace-gpu driver to 
use DMABUFs for its custom mmap/fault handler code.  (It's not 
straightforward to test, so I don't want to hack that.)

This FIXME is added to vfio_pci_zap_revoke_bars(), saying that for this 
specific sub-driver (or any others that do custom mmap) they still need 
to flag so that this wrapper still performs the unmap_mapping_range().

>>> Signed-off-by: Matt Evans <mattev@meta.com>
>>> ---
>>>   drivers/vfio/pci/nvgrace-gpu/main.c |  5 +++
>>>   drivers/vfio/pci/vfio_pci_config.c  | 30 ++++++--------
>>>   drivers/vfio/pci/vfio_pci_core.c    | 62 +++++++++++++++++++----------
>>>   drivers/vfio/pci/vfio_pci_priv.h    |  3 +-
>>>   include/linux/vfio_pci_core.h       |  1 +
>>>   5 files changed, 62 insertions(+), 39 deletions(-)
>>>
>> ...
>>> @@ -1229,7 +1228,7 @@ static int vfio_pci_ioctl_reset(struct vfio_pci_core_device *vdev,
>>>   	if (!vdev->reset_works)
>>>   		return -EINVAL;
>>>   
>>> -	vfio_pci_zap_and_down_write_memory_lock(vdev);
>>> +	vfio_pci_lock_zap_revoke_bars(vdev);
>>>   
>>>   	/*
>>>   	 * This function can be invoked while the power state is non-D0. If
>>> @@ -1242,10 +1241,9 @@ static int vfio_pci_ioctl_reset(struct vfio_pci_core_device *vdev,
>>>   	 */
>>>   	vfio_pci_set_power_state(vdev, PCI_D0);
>>>   
>>> -	vfio_pci_dma_buf_move(vdev, true);
>>
>> This seems subtle enough to be troublesome.  I wonder if Leon didn't
>> intentionally place the dmabuf revoke after the device is in D0 to
>> allow the driver to interact with the device.
> 
> My intention was to place vfio_pci_dma_buf_move() as close as possible to
> pci_try_reset_function(), so the device is known to be fully operational
> at that point. It looks like calling it after the transition to D0 is the
> right ordering.

Thanks for that, I had missed that need to have D0 at the time of the 
revoke.

Getting the lock in the existing place (before D0 set) but doing a 
separate vfio_zap_revoke_bars() here (replacing the bare move) seems 
right, though for the sub-drivers which still need the zap (nvgace-gpu) 
then the unmap_mapping_range() would happen after the D0 now.  I believe 
this is OK, but I wanted to flag that difference.

Many thanks,


Matt

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
