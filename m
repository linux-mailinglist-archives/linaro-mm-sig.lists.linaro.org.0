Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIa7NUcmF2qu6wcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 May 2026 19:13:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7CA5E83AA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 May 2026 19:13:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E297C3F8ED
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 May 2026 17:13:41 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id EA8FF3F732
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 May 2026 17:13:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=kbPRowui;
	spf=pass (lists.linaro.org: domain of "prvs=3607b585cf=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=3607b585cf=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64R6biJP2158649
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 May 2026 10:13:32 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=mF5ddP6Uato8c/uzw9iXykGIYPHqrtpIex8OCXzcenM=; b=kbPRowui4ML0
	YT114Vj1aVyNdnJJnjW848sZsqDgsQYxXf2af4lfe3yF9FH23tSklBFjrFv+o1wO
	ucJMCKwm9TylaOZQY0BhdJmQkngp6DAyA55R8lVRUQsexRgIwmUgj+H/mCR04y4k
	/GAEdHJqvYT6gQSouuHInLdwLedo/MVWAuYOky/jMujuavyWL/YFHal9G71FuvZm
	tUxMcxI1AwosqBr40clgGXAGZXRDcjjOD1Jq/WacVJpLsQehhEaY4Ed2cuHf56jB
	IOS9EOaVolYK/24AqeQ1zfm7jhCYBImKoLNKwH7NA+wFXFoDOJcUcF7lf4ehsFGn
	OeD1ICtoLg==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4edugs37uk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 May 2026 10:13:32 -0700 (PDT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-1353a6f29deso12826548c88.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 27 May 2026 10:13:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779902011; x=1780506811;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mF5ddP6Uato8c/uzw9iXykGIYPHqrtpIex8OCXzcenM=;
        b=LY2Muy/ma1UcAvrYN8X1CQDQl7dYGpExnbHyAXX3m0g+rzT2DesjvyHAAQMU9COws7
         5FwKJZ25sa+8TWgei0NhbRL9FQus7FXiYV0vHhdUbR+1q1EbSqsBu2oxAJHKhxF8dknX
         ww/Ns7o+FX5H4WZ/QsGSCqHWKdL3dW5dC/2FU8lRp95Wpx9SKzcFHNsbnpm4LNRalB+w
         jnz79t6h9CoBqsleCVJ1mVrXeka/3Px3C0WDHVETs1oWmi3oOiJvbnsEKfNpHKiJ1YEk
         Gx0EAhPLXvp+W8P27Hw3gipr66SUljqwuzkK+JrVZsNwRneyloVuzMJk63bM2G5I2yaE
         plfA==
X-Forwarded-Encrypted: i=1; AFNElJ8jBcyATa52V8MOSw9ntyjUSNLml1aC/0dWLVKRC2/Ry1MxAR2ritIuKWHbziZq6SAaGkKVvmdtQWnyAqZr@lists.linaro.org
X-Gm-Message-State: AOJu0YyxBXcQN0vC0DxFQh/LuQf26kW6i0+DQEJQ8svxS5Oe8/zRTnXu
	mysRhaZvRkguLaSr3GqPcq4KhIJvlapno/le6gHKsHnWtuZ+OVbaLorV9EHQhFef+xZcvv76dN0
	ofYXfY7mrMGP7rkouvlU2KxN8eecQQFTySpQtGdoW10S7snqM+5WYbsI0fGT8wlosHRk=
X-Gm-Gg: Acq92OGrlZ4VHdsBJ7tZSLRNlxLHQ46a4b7upq5FMdo1V0Y8EV/V5bpIxnXL3ZMMFc0
	A1NosAv/ye5A0rMFDRYe5l2FqUH3QP6rnx7qbXu8iaUw3hanHHmCoAxwbhTrB5d5WxqQoGYul+4
	EIK4p7XnyvItk4LjKg9CgiHXiV+fOfS1BfqFIbgSq+mJzrb1DmpnU0zuY9Q27WXaZUJMQpSDz2Z
	2GDbN+Papl6m8vmxjw9y+I5bkj1k4EikhcKBDi/JcByFCRraKvX+7+wVAEWBweAF9ilbts1/WI1
	yHPjIQ2NTy2rnvP/O19tAdHgKiviXsV7xF+iw+FMTst6JwFxonI0orBT7nSfgStxWMDRxfWhYh4
	GrkKMn4EFas1PymNmG7P2258KNt/ZjCW5nuQ=
X-Received: by 2002:a05:7022:913:b0:135:e814:d03f with SMTP id a92af1059eb24-1365fc7d7e9mr8777501c88.36.1779902011291;
        Wed, 27 May 2026 10:13:31 -0700 (PDT)
X-Received: by 2002:a05:7022:913:b0:135:e814:d03f with SMTP id a92af1059eb24-1365fc7d7e9mr8777489c88.36.1779902010729;
        Wed, 27 May 2026 10:13:30 -0700 (PDT)
Received: from [10.0.40.30] ([51.52.155.79])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-136b3706ad6sm9223289c88.13.2026.05.27.10.13.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2026 10:13:30 -0700 (PDT)
Message-ID: <1f1b9967-7182-401c-ac30-373b73216e81@meta.com>
Date: Wed, 27 May 2026 18:13:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Logan Gunthorpe <logang@deltatee.com>, Alex Williamson
 <alex@shazbot.org>,
        Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>,
        Alex Mastro <amastro@fb.com>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Bjorn Helgaas <bhelgaas@google.com>
References: <20260527102319.100128-1-mattev@meta.com>
 <20260527102319.100128-2-mattev@meta.com>
 <843e8525-5927-45b5-a3e2-a5ec16234398@deltatee.com>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <843e8525-5927-45b5-a3e2-a5ec16234398@deltatee.com>
X-Authority-Analysis: v=2.4 cv=D4537PRj c=1 sm=1 tr=0 ts=6a17263c cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=2UbFsIa4v//lIgRL4kGwwA==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7x6HtfJdh03M6CCDgxCd:22 a=wpfVPzegXHpEFt3DAXn9:22 a=VabnemYjAAAA:8
 a=gXLdhW2jAAAA:8 a=1nsJja_hzN5yKYYIz30A:9 a=QEXdDO2ut3YA:10
 a=Fk4IpSoW4aLDllm1B1p-:22 a=gKebqoRLp9LExxC7YDUY:22 a=Dn9eIPSr_RzuO0KTJioD:22
X-Proofpoint-ORIG-GUID: PjF0WLpwGKR8A_nS45We2kLTmAUwJaOe
X-Proofpoint-GUID: PjF0WLpwGKR8A_nS45We2kLTmAUwJaOe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI3MDE3MiBTYWx0ZWRfXzgiq6APcMQmB
 YaU5svGoUCiAW5UfYtOX9Sf+R9XPMjAN3rO6GlYJ0qcUyEOubSigHSl7AXhknWX7yecQC4guco9
 ahXDxRzErenUFsU1Rke20fflQQcw3ZyotFh0b8ZG890CVj4Sf/sqtIE6Lkr61vu7dF7E2ILn1ZV
 3FtLRxqUAlYwvL0onRE7bs2Afm/jX/H2h/duDC9xNb+L/Q/uetaCNjiOyN2GOW6IrFlzIe5S4ma
 rlGOL5lhUB05rSKnC6oT++VoE6xhimIKZF345yq19pMB1qk0101C5HwqJPK6NzxFTT9qVsakSv1
 hNM/v3lv3djXzyDuir9ugoGoYNG0O6ICPMTs11aisnMl/up/O+wgiecPJrc7FnIzgOzrc8K5GO9
 N9Fyd5gwq2vKJwFkwowlyLwZrehoRngAy6wH1Oz4bvnwudfoLOU4eih0VzD+G7NNN4qdarma3C0
 DCp/YzMYbNeI0MuUDqQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-27_03,2026-05-26_03,2025-10-01_01
X-Spamd-Bar: ----
Message-ID-Hash: BS5LHQFIWMQ4DTOCV7UQ7KMWSCTYOFMB
X-Message-ID-Hash: BS5LHQFIWMQ4DTOCV7UQ7KMWSCTYOFMB
X-MailFrom: prvs=3607b585cf=mattev@meta.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/9] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BS5LHQFIWMQ4DTOCV7UQ7KMWSCTYOFMB/>
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[meta.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,deltatee.com:email,meta.com:mid,meta.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 5C7CA5E83AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Logan,

On 27/05/2026 17:07, Logan Gunthorpe wrote:
> 
> On 2026-05-27 04:23, Matt Evans wrote:
>> The P2PDMA code currently provides two features under the same
>> CONFIG_PCI_P2PDMA option:
>>
>>   1.  Locate providers via pcim_p2pdma_provider()
>>   2.  Manage actual P2P DMA
>>
>> Other code (such as vfio-pci) depends on 1, without having a hard
>> dependency on 2.
>>
>> A future commit expands the use of DMABUF in vfio-pci for non-P2P
>> scenarios, relying on pcim_p2pdma_provider() always being present.  If
>> that depended on CONFIG_PCI_P2PDMA, it would make vfio-pci only
>> available if CONFIG_ZONE_DEVICE is present (e.g. 64-bit systems), even
>> when P2P is not needed.
>>
>> To resolve this, introduce CONFIG_PCI_P2PDMA_CORE which contains the
>> basic provider functionality to make it available even if the
>> CONFIG_PCI_P2PDMA feature is disabled or unavailable due to
>> !CONFIG_ZONE_DEVICE.  Users such as vfio-pci can enable their own P2P
>> features based off the original CONFIG_PCI_P2PDMA (available when
>> CONFIG_ZONE_DEVICE is set).
>>
>> Signed-off-by: Matt Evans <mattev@meta.com>
> 
> Largely this looks good to me. I have one minor nit below that you can
> apply or not. Either way, feel free to add:
> 
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> 
> 
>>   static void pci_p2pdma_release(void *data)
>>   {
>>   	struct pci_dev *pdev = data;
>> @@ -241,11 +251,13 @@ static void pci_p2pdma_release(void *data)
>>   		synchronize_rcu();
>>   	xa_destroy(&p2pdma->map_types);
>>   
>> +#ifdef CONFIG_PCI_P2PDMA
>>   	if (!p2pdma->pool)
>>   		return;
>>   
>>   	gen_pool_destroy(p2pdma->pool);
>>   	sysfs_remove_group(&pdev->dev.kobj, &p2pmem_group);
>> +#endif
>>   }
> 
> I'm personally not a fan of adding #ifdefs inside functions like this.
> This instance is small and easy to understand, but it can quickly become
> a bit of a mess if we start adding more features. I probably would have
> created a pci_p2pdma_release_pool() helper which does the inverse of
> pci_p2pdma_setup_pool(), it would be called in pci_p2pdma_release() and
> an empty implementation would be provided in the case where
> CONFIG_PCI_P2PDMA is not set.

That's cleaner, I'll do that.  Thanks for the review.


Matt

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
