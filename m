Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOZiGYtgBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:29:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF4B532437
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:29:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 17B56401C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:29:14 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id 12E523F75F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 15:55:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=V5KJ2Qsv;
	dmarc=pass (policy=reject) header.from=meta.com;
	spf=pass (lists.linaro.org: domain of "prvs=358647ce9a=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=358647ce9a=mattev@meta.com"
Received: from pps.filterd (m0528004.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6465xDl41782252
	for <linaro-mm-sig@lists.linaro.org>; Wed, 6 May 2026 08:55:31 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=Utn027AUC8UDDUJXMpqeQ33wB0VHRXSGiBE+zdS1lww=; b=V5KJ2QsvDqXI
	jsaAHALFGR6sjzWQOy2R8fDT1m2z8Vp+BEzdkIo2E0PzKZT3MoRqQ2oxFN/cf+RI
	zNdxXgZ/yC9TXtV3oASmSQ58occoBlUXUmIfLY3rEyKedGP+G26q9XfNbpy/cyyL
	ATxSfUlKU+0cbiv5isn7bvGMH98bzLSc6Cor0iZ7DZsrSsJL5Y4HlAHYbDQh47an
	JgHWaoOdPrg/9kinsjy7I1FZDdWBQ1dYEjz8FgwQ2xDR3PrtkNygxgXG3PaHOc5k
	UAwldnK7l+6FDmkB2j0Yjq5S7uSzqNd6Utnc2cINNmewbNDHUuno2cDWgkWZsFdm
	9itz8d4OIQ==
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4dx2wdwm1e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 06 May 2026 08:55:31 -0700 (PDT)
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-441243ba35fso6478236f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 06 May 2026 08:55:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778082930; x=1778687730;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Utn027AUC8UDDUJXMpqeQ33wB0VHRXSGiBE+zdS1lww=;
        b=MROph5sT3CIRS5v3skxosq2kSRfU2t3i014dj0VkCAI1zRnezr/my9cIrUWafyuOu0
         PQzOWOJr8WO6Dy4G46xgC3Oan34iHUac9XNCrJYsLZCQCH40icLaLSg9WGtYu/IKcHzR
         UIosko1DzREKnswarxlygMnXAE07dDu6YIHe4Cjgs8v0icsuQuXq33fCgyaCGSIh2ipl
         gpfWxcUJXaqGcAHCglJiNr2uggnz5+XOba7ZLENwU1BlwTsM4Ge7n4yTiMnIAwsFtVNp
         doVKFpD874GfTeJFqJTIMYGKznjns3Uzua7PrPFzzCrx7lTc90O0ihjn98SK3oyvjBV4
         MU8Q==
X-Forwarded-Encrypted: i=1; AFNElJ+s1lApHM5qwpqLFKfB6PgNlP4QNagqZ1nrF+0zdri289mYPmXbt7qPW79OUbzWSKMHe7yQFrkypz8o2Yqu@lists.linaro.org
X-Gm-Message-State: AOJu0YxE7JOQLe4BluAIVOZlewzpBvRRsAnAJpUK/Rot7FvszFQuSnsd
	BpmL6d46DywfFV/ZWa88WyUj0Jrb+1W+wICWDreeHY1xKngrgs0G+Fd7wAhh3dmjS9VEn3S0Nqp
	gyT6AKC16782oCLES+swFFmnDg2zDv5dc+po8zHoDYdYIyBo6SZOUPq5p6V8Ae7VQr1E=
X-Gm-Gg: AeBDiesUuwu9IRU+Wpvzn+CO5LjbFhqFY9xyfIrpoWc8Om2H0338Qxj6LWk3pokuHvI
	wgLf9nzEJCu3HA7heisrasLjSf/FHKfSGX51E4e4yf94XsKcN6Em+s62Tu+xhD3bF1HJ/69gNv6
	yzk6sxiPufxj8IZq7D7LfzxJmNMU4xPpIW+HNShFxuza7LO0wmbogxGM2/asN+Om4fMLR7sYoW8
	RpKn8Vxg4OWoyojyEEuj6gIT2aIXrduKciEZ5bBh87gTinWuKKG+HeWEdpI1MaBZdZ0uFuCARpP
	yC8esaezio1YkA6Cw7kbPVfInE/0hE6CM4AmR9TmC/5HeZiddNO9J1GAtJEccsImaPvyuaC+Ef4
	6RmapOPrJcOxLMdgWE8O2GekB0DBrnd6lX39ytwtPH0vATnnZ5pzJc1kALslu1B6wsIrfXGIVvK
	DW22x/oBObwFfxTfebNgE3RcBU+PVf6rUVeQNxKODzyDXgfLvFXkeqp502yqHSiLbZuyRM93Otg
	b1ov3yw6FuHEcot3JMEiplUYW8/u6v6zw==
X-Received: by 2002:a05:6000:2082:b0:441:1c18:f779 with SMTP id ffacd0b85a97d-4515da967c3mr6651383f8f.37.1778082929970;
        Wed, 06 May 2026 08:55:29 -0700 (PDT)
X-Received: by 2002:a05:6000:2082:b0:441:1c18:f779 with SMTP id ffacd0b85a97d-4515da967c3mr6651329f8f.37.1778082929442;
        Wed, 06 May 2026 08:55:29 -0700 (PDT)
Received: from ?IPV6:2001:8b0:8b6:13d4:102e:f2af:e074:5cde? (e.d.c.5.4.7.0.e.f.a.2.f.e.2.0.1.4.d.3.1.6.b.8.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:8b6:13d4:102e:f2af:e074:5cde])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45052483166sm13251331f8f.7.2026.05.06.08.55.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 08:55:28 -0700 (PDT)
Message-ID: <c0bd0e23-712c-483e-a809-47126ab6e9e9@meta.com>
Date: Wed, 6 May 2026 16:55:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Leon Romanovsky <leon@kernel.org>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-2-mattev@meta.com>
 <20260501131236.278ac431@shazbot.org>
 <9304aada-ee84-4cf2-a1d7-82313eda07aa@meta.com>
 <20260506152937.GJ11063@unreal>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260506152937.GJ11063@unreal>
X-Authority-Analysis: v=2.4 cv=fLsJG5ae c=1 sm=1 tr=0 ts=69fb6473 cx=c_pps
 a=I6ewnrIBtnKHmb6SxpX7Vg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=GbPsI2Ihf5RTnMjR_gZv:22 a=VwQbUJbxAAAA:8 a=UqCG9HQmAAAA:8 a=Ikd4Dj_1AAAA:8
 a=VabnemYjAAAA:8 a=bm6tUXqWTanbjDFH1akA:9 a=QEXdDO2ut3YA:10
 a=MqNruPmfsT8GavliLQMe:22 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-GUID: s_JNhht3wvfHYRAsiDFFgSHDZRMIwHCl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA2MDE1NiBTYWx0ZWRfXwHlJT0p9AuyF
 6f13r4vEdXmLUtPB3+eS9v2OxHFSTiUblOD8voOIh715O8XZjzLnRADANP/5NLgNwNVhMrW4rOw
 7tEmr+AnjMEXJj4i4p10apKf+SfOfUM1BuahK8AymNIl9YlxMlhftELQOBRpvhSTht0Bl4TxmCw
 mRolcqH06yBWFKR5T7+veF7AccO2UoWfed1pmtxGtKMusLGEMsBKey712SDJWJ91ytrxOuP+/p1
 jqykHg4HMqcrwFxowiXJxzB85lmQdA6388qt6KlJzWXcL8yFDdZW06ZejBKxbX9hWnBd8ucj206
 vkl4VNwK8uItiSdxZntfAmpYMrp5JjKaI1FVcM1JbuhVzGLQ2nvki6rmXwi4ik/fCNx51bzIuxg
 kP1FM4RlKvbZg6JeYun/xVDenUxVgLARVVeL0UfPQP5k5jzo9OJsTW57FaK1l0GD84NayRHu+nN
 fMZBUsRKuHjPoqlNhTg==
X-Proofpoint-ORIG-GUID: s_JNhht3wvfHYRAsiDFFgSHDZRMIwHCl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-06_01,2026-05-06_01,2025-10-01_01
X-Spamd-Bar: ----
X-MailFrom: prvs=358647ce9a=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZEW33SV42LOZNRA34IER63BCY7AKOU3B
X-Message-ID-Hash: ZEW33SV42LOZNRA34IER63BCY7AKOU3B
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:47 +0000
CC: Alex Williamson <alex@shazbot.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, =?UTF-8?Q?Carlos_L=C3=B3pez?= <clopez@suse.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] vfio/pci: Fix vfio_pci_dma_buf_cleanup() double-put
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZEW33SV42LOZNRA34IER63BCY7AKOU3B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: EEF4B532437
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[163];
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
	NEURAL_SPAM(0.00)[0.292];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

Hi Leon,

On 06/05/2026 16:29, Leon Romanovsky wrote:
> 
> On Wed, May 06, 2026 at 02:53:31PM +0100, Matt Evans wrote:
>> Hi Alex,
>>
>> On 01/05/2026 20:12, Alex Williamson wrote:
>>>
>>> On Thu, 16 Apr 2026 06:17:44 -0700
>>> Matt Evans <mattev@meta.com> wrote:
>>>
>>>> vfio_pci_dma_buf_cleanup() assumed all VFIO device DMABUFs need to be
>>>> revoked.  However, if vfio_pci_dma_buf_move() revokes DMABUFs before
>>>> the fd/device closes, then vfio_pci_dma_buf_cleanup() would do a
>>>> second/underflowing kref_put() then wait_for_completion() on a
>>>> completion that never fires.  Fixed by predicating on revocation
>>>> status.
>>>>
>>>> This could happen if PCI_COMMAND_MEMORY is cleared before closing the
>>>> device fd (but the scenario is more likely to hit when future commits
>>>> add more methods to revoke DMABUFs).
>>>>
>>>> Fixes: 1a8a5227f2299 ("vfio: Wait for dma-buf invalidation to complete")
>>>> Signed-off-by: Matt Evans <mattev@meta.com>
>>>> ---
>>>>
>>>> (Just a fix, but later "vfio/pci: Convert BAR mmap() to use a DMABUF"
>>>> and "vfio/pci: Permanently revoke a DMABUF on request" depend on this
>>>> context, so including in this series.)
>>>
>>> We really need a fix for this split out from this series, It's already
>>> been shown[1] that this is trivially reachable.  Carlos proposed[2] a
>>> similar solution to the one below.  I was concurrently working on the
>>> issued and suggested an alternative[3].  Let's pick a solution for
>>> 7.1-rc.  Thanks,
>>
>> It looks like [3] is progressing, so I'll drop this one when I can rebase
>> onto it.
>>
>> I noticed [3] removes the dma_resv_lock(priv->dmabuf->resv) around the
>> priv->vdev = NULL, and this series' vfio_pci_mmap_huge_fault() relies on
>> vdev only changing whilst resv is held to resolve a race between a fault and
>> cleanup (see patch 7 of this series).  The handler takes resv so that it can
>> stably test vdev in order to take memory_lock.
> 
> I think that you should rely on priv->revoked and not on priv->vdev.

Needs both unfortunately, as the fault handler ultimately needs to take
vdev->memory_lock.


Matt

> 
> Thanks
> 
>>
>> Must your fix change vdev outside of holding resv?  I'm still sketching
>> alternatives; at first glance perhaps the fault handler could rely on vdev
>> being valid if !revoked, which can be tested holding [only] resv.
>>
>>
>> Thanks,
>>
>> Matt
>>
>>>
>>> Alex
>>>
>>> [1]https://lore.kernel.org/all/GVXPR02MB12019AA6014F27EF5D773E89BFB372@GVXPR02MB12019.eurprd02.prod.outlook.com/
>>> [2]https://lore.kernel.org/all/20260429182736.409323-2-clopez@suse.de/
>>> [3]https://lore.kernel.org/all/20260429142242.70f746b4@nvidia.com/
>>>
>>>> drivers/vfio/pci/vfio_pci_dmabuf.c | 9 +++++++--
>>>>    1 file changed, 7 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
>>>> index 281ba7d69567..04478b7415a0 100644
>>>> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
>>>> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
>>>> @@ -395,20 +395,25 @@ void vfio_pci_dma_buf_cleanup(struct vfio_pci_core_device *vdev)
>>>>    	down_write(&vdev->memory_lock);
>>>>    	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
>>>> +		bool was_revoked;
>>>> +
>>>>    		if (!get_file_active(&priv->dmabuf->file))
>>>>    			continue;
>>>>    		dma_resv_lock(priv->dmabuf->resv, NULL);
>>>>    		list_del_init(&priv->dmabufs_elm);
>>>>    		priv->vdev = NULL;
>>>> +		was_revoked = priv->revoked;
>>>>    		priv->revoked = true;
>>>>    		dma_buf_invalidate_mappings(priv->dmabuf);
>>>>    		dma_resv_wait_timeout(priv->dmabuf->resv,
>>>>    				      DMA_RESV_USAGE_BOOKKEEP, false,
>>>>    				      MAX_SCHEDULE_TIMEOUT);
>>>>    		dma_resv_unlock(priv->dmabuf->resv);
>>>> -		kref_put(&priv->kref, vfio_pci_dma_buf_done);
>>>> -		wait_for_completion(&priv->comp);
>>>> +		if (!was_revoked) {
>>>> +			kref_put(&priv->kref, vfio_pci_dma_buf_done);
>>>> +			wait_for_completion(&priv->comp);
>>>> +		}
>>>>    		vfio_device_put_registration(&vdev->vdev);
>>>>    		fput(priv->dmabuf->file);
>>>>    	}
>>>
>>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
