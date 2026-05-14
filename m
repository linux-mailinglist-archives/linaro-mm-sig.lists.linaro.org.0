Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNEjH2zUBWrxbwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2026 15:55:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2A35429FF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2026 15:55:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2FE193F75A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2026 13:55:54 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id B91D63F75A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 13:55:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=LxtRhAqK;
	spf=pass (lists.linaro.org: domain of "prvs=359494ca3e=mattev@meta.com" designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=359494ca3e=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0044012.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64DLiIYc3726203
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 06:55:41 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=IkkxRlEVU+3w+Yl34MPIFikE3yFUtB8xK/F28U9hrPg=; b=LxtRhAqK961K
	Qx6NyNdgt1AOhTAfIWUL4hMXnHS0598SipoJSDn2iWyvAzTrQJAJzUw+9sZxRwsw
	AR4HU5bIdSM3bPtuqkEL4/XZroyBkRJFBb8S4iq2p6k3Q3kBLqi2SZyuut/I+7yv
	xUXa521SbV2iscLIYd/hlxRNxClEJY5FzzABKnHYbLU/H96TcElBWFWztKhlJ7aG
	ud5pmNFXYCBdVjukCE9qns8eC2TSH3FWbtOqLsrdfRLV+ZPg5rKJK7KkrwX6S2cJ
	o1yla90oO9Hn4h6L0GpgkLL95NEIbYr1lnodaxhfyrHlbKjK8GwSA0mYBX8DYX/V
	TqTnTTC9EQ==
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4e3nvqqn3r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 06:55:41 -0700 (PDT)
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-b8704795d25so636658866b.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 06:55:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778766940; x=1779371740;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IkkxRlEVU+3w+Yl34MPIFikE3yFUtB8xK/F28U9hrPg=;
        b=I4A2qU7D5PtCxhUjHcAcIK5Oh6E1Rht+feJ1N6HgQPIsL+GMSPtRLVv+dtLUWQTLz1
         LS+MldR7wttq8Q81K/ft1XRbuPNGPyuh3wG7vFNzG5GNoZHfkv6sQ9BJmglnRUoPgJC3
         ATmkazCeDvB1EN7R/NVaDugzx+JFh/MMI3CL4fwdNysyBNL7NRRPp5Mjmn4NLgORe97j
         dExLnLp9BkEVXxBIKgQsp3re8ntbLdLnWy1rV3XyhhJaxdZG9y169w0qwPUSL4AgvZDn
         iD9aOC1rZjTARWdVXnAjIfHupuy/6L828HDd2wWCLZV9bSQIDMFWfcA8cE4i9XnyTbhk
         MeBg==
X-Forwarded-Encrypted: i=1; AFNElJ8hHxXeY2XVBvRcVAeUiILK/ObM/zqyOm+8lZtZU1ZEE/O6ttThH60Bi7SVswsXMJ3ehrsDoGQdmvGUKCU8@lists.linaro.org
X-Gm-Message-State: AOJu0Yzpb03pinsKJISSK7oYDebxnTaRUjj26UWmf7qvsmPygA9l9lw1
	RTfS4yFo7AG/22Dw7+8nol6D4a9NFFOs6M3R1a0VCe1AaLm/InKU4nEmlCH15UDPW6qfDn7Z2PU
	rbBWmAFaom+kQKmgHtWyOn+MkBU68Kihoojf5kp/1M1cxcD7rgweQM7/ZuUdBFcv6m1c=
X-Gm-Gg: Acq92OGvN5n8bV+fTDavsQP+hHX1UfIBaEOHnRlzDNDilokMgBJpc5qD6WLZLFas237
	s+0XIdUipfuPVQqNYZLA8Pxa+Bhm6DQe+oXQGY+IHyy0lWgc55LwZtpOUcHdrCswqzKarbYi5tL
	Lcg8dcZ3UIPWUrUtmZKikYkxymPOFq19zbWAWN1i0ZrPC1eB6kU0bGP6Wbp+u/iPnmPF5Hkm7Vb
	N1DnCpbPRjsfwQViLQpr4qdqtJdKQN0v3tfrpJkgIS3oUaZi5ZQbnrlQVmuvylQA1xq9vu88ykB
	4lBgRl6vjhbwgjmiuQ2Z3juJirH5Co2Q1jcmmORyek9aDHNx4q3nX4PNwffpkXx02nMdjCy66i5
	YD/Z/Z0rS4JfyUSDhQEUkfpCEVUdyst2ciS1UUxo36J6bkP4x1gOEWaKYUWFU23NALG5MRGqtQg
	ijsRcWljGF4vJ3/vxb1QoizHCzIps9VvqSKUcKNlONL0n/jJVmQQq0KkQopeQDZOcnjV73ArkIu
	r0nKGudnxvIxBzc0QUAiSs=
X-Received: by 2002:a17:906:4786:b0:bd3:2b8a:2164 with SMTP id a640c23a62f3a-bd3bfb9f635mr526850266b.16.1778766939843;
        Thu, 14 May 2026 06:55:39 -0700 (PDT)
X-Received: by 2002:a17:906:4786:b0:bd3:2b8a:2164 with SMTP id a640c23a62f3a-bd3bfb9f635mr526848066b.16.1778766939261;
        Thu, 14 May 2026 06:55:39 -0700 (PDT)
Received: from ?IPV6:2001:8b0:8b6:13d4:102e:f2af:e074:5cde? (e.d.c.5.4.7.0.e.f.a.2.f.e.2.0.1.4.d.3.1.6.b.8.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:8b6:13d4:102e:f2af:e074:5cde])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bd4f4bd0a24sm94246766b.11.2026.05.14.06.55.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 May 2026 06:55:38 -0700 (PDT)
Message-ID: <5c64e13a-2d41-4e5e-addf-9a76f08ae172@meta.com>
Date: Thu, 14 May 2026 14:55:37 +0100
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
 <4af0c788-22cc-4fb1-9276-ab35439fb7c8@meta.com>
 <20260513122734.44ce8a68@shazbot.org>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260513122734.44ce8a68@shazbot.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE0MDE0MCBTYWx0ZWRfX1Emhg8oonNKg
 Crx6DKy7LAxzFvGd1i0iJYb2Xcts853DnjhKsz45YofGNQ7q7YD/wDNlgFVr4LUB60ONNSmVQtA
 A0RbkM/ILdufUDqtaFwckSa/3djkhYRLSx35I0zusQRGsXI2LVUakf8PrD5jKpcV1gna41peSdK
 AgrKvPzFAifIcBP//WoiFLjFF1CT3yPzVci03XDiaE++G6emcdUzd7sgm58pB7Gn3D0y0wD7TVd
 PMmjZIRhWCI3VZdPq7rMZ5zRH4EqLlmDKofMwZsYWy2BYrtsVyruzyfKB+9PVjJGhdsKBea2DlS
 lYLmjhXdANiQDptjSQZ3tTAsPPCsFHdBsZFqipwxDrspTxoGnvhpk41ZCwN5bfwsekQcMH3IoiA
 1t1yEk9XW1U6yttJRRRUNPzqm3m64TlEwwyvttxjJOovGqo78QUJ10uADEMDNSaLgI3iZzab1s8
 eAVb3dlOm7ziF+d05Sg==
X-Proofpoint-GUID: QAOY0IIhv8Zmvvg8WKrTJXAR66zVXO6T
X-Proofpoint-ORIG-GUID: QAOY0IIhv8Zmvvg8WKrTJXAR66zVXO6T
X-Authority-Analysis: v=2.4 cv=TfKmcxQh c=1 sm=1 tr=0 ts=6a05d45d cx=c_pps
 a=jJvPsHQLKLf2UdvVr97r4g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=PAz_-FQ8hEVmOPYdF0yf:22 a=VabnemYjAAAA:8 a=QlOCKlcsugFDnh0twowA:9
 a=QEXdDO2ut3YA:10 a=q7aydO1c4wibL4nb3gNS:22 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-14_03,2026-05-13_01,2025-10-01_01
X-Spamd-Bar: ----
Message-ID-Hash: TB7BFZTV5L4RGLMZUCDVJM5S6M3YQ6VT
X-Message-ID-Hash: TB7BFZTV5L4RGLMZUCDVJM5S6M3YQ6VT
X-MailFrom: prvs=359494ca3e=mattev@meta.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 9/9] vfio/pci: Add mmap() attributes to DMABUF feature
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TB7BFZTV5L4RGLMZUCDVJM5S6M3YQ6VT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: DA2A35429FF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[meta.com:s=s2048-2025-q2];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[meta.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.486];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,meta.com:email,meta.com:mid]
X-Rspamd-Action: no action

Hi Alex,

On 13/05/2026 19:27, Alex Williamson wrote:
> 
> On Tue, 12 May 2026 18:51:40 +0100
> Matt Evans <mattev@meta.com> wrote:
>> On 11/05/2026 21:09, Alex Williamson wrote:
>>> I think the question of how we actually expand an arbitrary grab bag of
>>> "ATTRS" is the central question in whether we should implement the
>>> interface.
>>
>>> If we follow the direction I suggested for TPH, maybe this
>>> is just a VFIO_DEVICE_FEATURE_DMA_BUF_WC, where it supports only PROBE
>>> and SET, with SET taking only the dma-buf fd to implement the one-way
>>> promotion from UC -> WC.
>>>
>>> If we support a generic SET ATTRS feature, we really need to map out how
>>> flag bits are indicated as supported and how a user untangles failures
>>> from trying to set various attributes.  If we end up with a feature
>>> indicating each ATTR is available, we might as well have just
>>> implemented a feature for each attribute.  Thanks,
>>
>> Agreed, that's key.  Alhough, the aim of this patch is for attrs to be a
>> memory type enum rather than a bag of possibly-concurrent and
>> possibly-conflicting boolean flags.  Maybe 'memory attributes' would be
>> a better feature name.
>>
>> I'm not sure about the feature-per-attribute.  Say we do a
>> VFIO_DEVICE_FEATURE_DMA_BUF_WC and then later support a second,
>> VFIO_DEVICE_FEATURE_DMA_BUF_UC_WEAK (like, say, Arm Device-nGRE).  Then
>> we have to specify that these two VFIO feature types actually
>> interact/override somehow.  I doubt we'll end up with a dozen but it's a
>> bit tiresome having a few features that interact.
>>
>> At least if it's a single DMA_BUF_MEMATTR feature taking an enum, we
>> just encode the N different (mutually-exclusive!) valid states and done.
>>    I don't feel having a new feature for each keeps things simpler.
>>
>> Discovery of support for a specific future attribute is OK with a single
>> ATTR too; we can take an enum attribute argument to a GET and -ENOTSUPP
>> for any we don't like.
>>
>> (We could also add orthogonal DMABUF flags (can't think of a good
>> example...) but I'd suggest _those_ as semantically-grouped different
>> features, with the same issues of specifying conflicting cases versus
>> existing features.)
> 
> I think the GET behavior you're proposing is a bit counter-intuitive, if
> not abusive of the interface, but I do agree that if the feature is
> SET'ing a single value and not a group of independent flags, that we
> can probably rely more on a try-and-fail model rather than advertising
> each supported value as a separate feature.
>
> For example, the user has some list of compatible attributes ordered
> from most to least desirable, they try each in order until one works,
> or none work and they decide whether that's ok.
> 
> For GET, if we implement it, I think it should report the current
> attribute, mirroring SET.  We could almost get away without implementing
> it, but I do worry about the case of nvgrace-gpu, where it might be
> interesting for the user to see that the default attribute could be WB
> rather than UC.

I'd come to the same conclusion yesterday when implementing it. :)

GET just returns the current value, SET gives ENOTSUPP if the provided 
value isn't supported.

I haven't done much thinking on mechanisms for overriding the default 
value, but a sub-driver could add that via some hook from 
vfio_pci_core_feature_dma_buf().

> Where does the user derive the enum value?  Are we defining our own or
> is it a system header defined enum?  I'm curious if/how we're going to
> handle architecture specific attributes.  Thanks,

Good question.  There doesn't seem to be a suitable existing enum so I 
defined a new set (mirroring existing pgprot_*() semantics), in the same 
vfio.h/UAPI place as this patch.

The set could be extended in future to add some kind of "base vs 
arch-specific" grouping if we want to support arch-specific types like 
that hypothetical example arm64 'UC_WEAK' above.  (The feature param's a 
u32, so steal top byte for extension group_id?)

For the base set of types, they should at most follow the set of 
IO-related pgprot_*() types (whose names are a bit of an awkward fit 
across architectures but they're used consistently).  I've revisited the 
names to make them consistent with pgprot_*().  For sake of keeping the 
huge enum names smaller, abbreviated slightly:

pgprot_noncached()    -> VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC (*)
pgprot_writecombine() -> VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC
pgprot_device()       -> VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_DEV

  *: Was UC in the v1 patch, which makes more sense as a memory type
     name, but consistency with pgprot_* is better.

But, I was thinking to support just the NC default and WC option in this 
series.  Does anyone feel strongly about needing pgprot_device() right 
now?  For external PCIe functions it'll behave the same as the NC type 
(even on arm64) so I don't think it's critical to add yet.

At this stage feels like we should get more field experience before 
adding more values/a scheme for arch-specific values so I'm keen on NC + 
WC for now, WDYT?


Matt



_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
