Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OGNGvhgBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:31:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7145324E1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:31:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27DE63F7F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:31:03 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id 56FFD3F75A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 15:30:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=l5CJ9j8P;
	spf=pass (lists.linaro.org: domain of "prvs=359131895c=mattev@meta.com" designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=359131895c=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0528007.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64BEwAJJ1282537
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 08:30:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=bO0OT5HbP3xMB9H1AybFAyJkqZoplUb3t4HsCcdmo+w=; b=l5CJ9j8Pt4jd
	oo2WjP8zAaxDoOQtii5Xv4O/D6fdD0hd4ART8sIyryLJf8dOqBTz/yQ+uerxGOHZ
	KqdDkk5BUPra4La+lrsGoib67wFEHFUXUYKoT5+8hWBy9OIx+D9V8sE2QmHW+yMT
	h35Kt8l9MYRDqqlmJv0WkUYcqwdMG9jVc7x0RKu6oILOR1twr/YLgUwLpnf350vz
	+GJ1mWfeupTHI+JMhKWxRZCtBSmD+//ybC+8KUEpo8p5QU7ZNmMMdXXRB4OqZre1
	WwVJheJnIclwhharvAmggbk7AX/pj+QZFuYaS5iSYZGy3zEuDg1zR03BUoikGeZS
	XDLlFw4U2A==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4e2rxve8js-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 08:30:46 -0700 (PDT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-12c8ccc7593so9482688c88.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 08:30:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778513445; x=1779118245;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bO0OT5HbP3xMB9H1AybFAyJkqZoplUb3t4HsCcdmo+w=;
        b=M7u097SiijH9NtNWzjvN6cgl0QUja2u6lRLefZAPt6XMHYx0NR8kJGHssns/lEn+Gk
         FBrOCtLsvbdh9D0anHoP15udF/H0m+ohr08RQgTFp+3uYII/P/+pK4VQr/4YOcIsGNOk
         nYWFfVMmzdmmlc4EEAs1BGJfWNOxaUkgRZl9KIWRdO8s7yH3GPtkzBfWIOYVej2VXtCI
         +/eytHSS4ON0BiIrLQJ5YPSqG3F3pr6L4bpCakbEbMaS3u7XfKGyWPdhPVsSn0/VEVXP
         hWok65y87ahyAFPi/HdVfllgeTxQKNCJahk3JZ4XSfigi5Tj6E25NrLwVFi9BRunEabp
         W53g==
X-Forwarded-Encrypted: i=1; AFNElJ9QF79KWLI62FeW4pNlp5BG4kVSEimEymtMZc2G4tzhREiek8diIUcTPS69iOD75Tkoj7IE3aGLipbAm8lM@lists.linaro.org
X-Gm-Message-State: AOJu0YyhNjwA1agWHZ51F5cTYM9rodMaJU1CuvTVcG5ZX9QgocaTDG8L
	M50AgCtUGuBOsrS0xtSjzCsNwwOmOtD+9MB1tVDy6p0E5Th4T18niUVF4I4SP/83KhrKpDLQ/td
	hVWpRBc/Aqgpn9gcUF/C3WAxfbTXm4MJJ76bn/9L2CbNQtUz9aUoLaFUaC1nvrAyc2ws=
X-Gm-Gg: Acq92OHPJyQ5+84i0u6gjnYWgvQ21U2X7/LYhv2z6flodWCFf+FQo/KWuX3b6ia8PB1
	J0rzGgjSO09QWEU8ubJaasz9WyybI6fR8y4EvAYsu7eD7nxLQPMqBitiCweAkiTMPQTv/2HhK4C
	6KPbNrywMLQh2lt+589YtCHHIuOigFrSO1tIQIrCn1zypxV1EAkAVjCt+9yfBLh38Upu1/UcS4r
	vGelHqR8D4sa1hq2gj483LFOdx9kIrbgs2jMLneU8ke9qIbMHi/BE7rDVlaau5jCxstoo5PeYmI
	vXMaC9w5BMeBHQVOY3kFm4dGqlOPdqMNfZWhbuiuXepY+iKX7QyB1wytuoV7HCbTK/Jq/i+N3tU
	ipS9yDhdtz/aRG/v6I0gLFHWG
X-Received: by 2002:a05:7022:2399:b0:12d:d27f:d817 with SMTP id a92af1059eb24-1318550ae20mr12188191c88.19.1778513445373;
        Mon, 11 May 2026 08:30:45 -0700 (PDT)
X-Received: by 2002:a05:7022:2399:b0:12d:d27f:d817 with SMTP id a92af1059eb24-1318550ae20mr12188121c88.19.1778513444549;
        Mon, 11 May 2026 08:30:44 -0700 (PDT)
Received: from [10.0.40.30] ([51.52.155.79])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1327810ff4dsm14644541c88.3.2026.05.11.08.30.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2026 08:30:44 -0700 (PDT)
Message-ID: <25a4fc45-1b4d-426b-954a-60bf21e9040f@meta.com>
Date: Mon, 11 May 2026 16:30:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-10-mattev@meta.com>
 <20260424183153.GJ3444440@nvidia.com> <20260426105215.GA440345@unreal>
 <20260427083644.4ee174cd@shazbot.org>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260427083644.4ee174cd@shazbot.org>
X-Proofpoint-ORIG-GUID: Wk2uhGqsQjrLjpfrCAYw_Epdlduahmay
X-Authority-Analysis: v=2.4 cv=Sv6gLvO0 c=1 sm=1 tr=0 ts=6a01f626 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=2UbFsIa4v//lIgRL4kGwwA==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7x6HtfJdh03M6CCDgxCd:22 a=4h92JMTCafKA-fb_NiOh:22 a=VwQbUJbxAAAA:8
 a=r1p2_3pzAAAA:8 a=VabnemYjAAAA:8 a=Ikd4Dj_1AAAA:8 a=02ciemoj1X7HeLU9vPcA:9
 a=QEXdDO2ut3YA:10 a=vBUdepa8ALXHeOFLBtFW:22 a=r_pkcD-q9-ctt7trBg_g:22
 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-GUID: Wk2uhGqsQjrLjpfrCAYw_Epdlduahmay
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTExMDE2OCBTYWx0ZWRfX5cs70F9UqtNI
 fYEZCuP1GDwm+umMBbLl4o2oQWuvxZYM1RZipTbDJ8jRuxp5WGv9XykHsrWuS7QSgb73xZSprtY
 F3Tv6P/Fjm+kaD9GWxf3X+fUhe0ZcWMeA99PjrCVMi351gT1eWnk1jnRvoEEo0Y3Ht6LBjgaJXs
 nzWAlTWeYRCnQDupeeeEI004nxlPJ4Nnmbg3Z5ASduyVEZw5Fx12cdpGFn0zr08pm1bhgEctU+N
 zw8brlAIVvK54Z4cjLhRcbNw1zuElAl7UJU939N0mbGIV4M4x+W/zi0J19E0jH6xFN/STEzBJQx
 mquboP643hRMqxJWLbe8IfvgFdjbyAbeqP2rz+effcHDiOptY5CAfbNMu1VYzw6A8fgo5+dy+vw
 iOkWmhO3aG0R3ZSA9BUfgUKG3KN/PBiYgKO5FEzioUWUDGYLZil7AFnjdzyF/B2bF5rU76z9jfP
 tI/6pFCrGjFfWxwDvpw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_04,2026-05-08_02,2025-10-01_01
X-Spamd-Bar: ----
X-MailFrom: prvs=359131895c=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: F5G5U2DDJS3KTOT5HHK3QMMR3YSWRMDD
X-Message-ID-Hash: F5G5U2DDJS3KTOT5HHK3QMMR3YSWRMDD
X-Mailman-Approved-At: Wed, 13 May 2026 11:25:10 +0000
CC: Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 9/9] vfio/pci: Add mmap() attributes to DMABUF feature
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F5G5U2DDJS3KTOT5HHK3QMMR3YSWRMDD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 0C7145324E1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[44];
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
	NEURAL_SPAM(0.00)[0.155];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:email,meta.com:mid,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

Hi Alex, Leon,

On 27/04/2026 15:36, Alex Williamson wrote:
> 
> On Sun, 26 Apr 2026 13:52:15 +0300
> Leon Romanovsky <leon@kernel.org> wrote:
> 
>> On Fri, Apr 24, 2026 at 03:31:53PM -0300, Jason Gunthorpe wrote:
>>> On Thu, Apr 16, 2026 at 06:17:52AM -0700, Matt Evans wrote:
>>>> A new field is reserved in vfio_device_feature_dma_buf.flags to
>>>> request CPU-facing memory type attributes for mmap()s of the buffer.
>>>> Add a flag VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_WC, which results in WC
>>>> PTEs for the DMABUF's BAR region.
>>>>
>>>> Signed-off-by: Matt Evans <mattev@meta.com>
>>>> ---
>>>>   drivers/vfio/pci/vfio_pci_dmabuf.c | 15 +++++++++++++--
>>>>   drivers/vfio/pci/vfio_pci_priv.h   |  1 +
>>>>   include/uapi/linux/vfio.h          | 12 +++++++++---
>>>>   3 files changed, 23 insertions(+), 5 deletions(-)
>>>
>>> Nice and simple
>>>
>>> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
>>>    
>>>> @@ -1549,8 +1551,12 @@ struct vfio_region_dma_range {
>>>>   struct vfio_device_feature_dma_buf {
>>>>   	__u32	region_index;
>>>>   	__u32	open_flags;
>>>> -	__u32   flags;
>>>> -	__u32   nr_ranges;
>>>> +	__u32	flags;
>>>> +	/* Flags sub-field reserved for attribute enum */
>>>> +#define VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_MASK		(0xfU << 28)
>>>> +#define VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_UC		(0 << 28)
>>>> +#define VFIO_DEVICE_FEATURE_DMA_BUF_ATTR_WC		(1 << 28)
>>>> +	__u32	nr_ranges;
>>
>> Alex,
>>
>> The TPH proposal extends the flags field in a similar way, but I suggested
>> a different approach to conserve bits. At the moment, we spend three bits
>> on a single feature, which feels wasteful.
>>
>> What do you think?
>> https://lore.kernel.org/all/20260409120415.GF86584@unreal/
> 
> I already proposed a very different interface for TPH that decouples
> the dma-buf creation from setting the TPH values:
> 
> https://lore.kernel.org/all/20260423132016.4a25e074@shazbot.org/
> 
> This is overall less intrusive than the TPH change proposed, but it
> could still make sense to align this as an operation on the dma-buf,
> that can be probed as a separate feature.  Thanks,

I'll add a VFIO_DEVICE_FEATURE_DMA_BUF_ATTRS in a v2 instead to get in 
line with the TPH work, no worries.

For the benefit of future hackers, how would you describe the criteria 
for adding flags to this existing field?  What hypothetical feature 
characteristics would be appropriate?  (Maybe it's that these attrs & 
TPH add scalar fields in several bits rather than a simple boolean.) 
Two of us have independently added something that's turned out to be 
inapproriate so some guidance would be good.

Thanks!


Matt
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
