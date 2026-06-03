Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PjqqHLA4IGoJywAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 03 Jun 2026 16:22:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E0263883F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 03 Jun 2026 16:22:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=meta.com header.s=s2048-2025-q2 header.b=srLuqfx+;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=meta.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E3705409BD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jun 2026 14:22:38 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id CF99440981
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 14:22:29 +0000 (UTC)
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6532VdR03918552
	for <linaro-mm-sig@lists.linaro.org>; Wed, 3 Jun 2026 07:22:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=YNScBoT6fWRdM9NkrxjASUlxGuUaN5ox/szwoVCoD/M=; b=srLuqfx+FXuC
	bzE9LkokrAimE5iY6tNN+9tUNfEUn2ef7Lf+87pai3WStxYfRanSdrRxchFrsRaa
	hVp4NgdWnzJDmE0szjBwoM0UI8p/Oe1nmi8cfpFlZ72sJ6MKjrvWVKWCW7EgqGZU
	WY5n4wx/L7mDEsXGDKTFRggrDyDhnviCYwZR1mFhx23XQN1Hossmfj02lNA97hnq
	tldmWLaYSlQaubMvRXFHZmLKUM4/IZrzYGEXU+A7/okfjXt0q6FEFIPesfkDIXRX
	kiDV5EiNC27PctqlfT0z16mTfJF9Zn8GQkNgtJFwMsBAzv/dJKpmMRbazdFqdpR2
	coUlXhATAA==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4ej14myedm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 07:22:29 -0700 (PDT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-304e4636205so16045870eec.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 07:22:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780496548; x=1781101348;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YNScBoT6fWRdM9NkrxjASUlxGuUaN5ox/szwoVCoD/M=;
        b=X7fr1oAy11XtTG42rkzgMeB/NfGcBWZX7uNoQZOkDKiub9ESnSKHCuX/VbckfycDoi
         m8DxiIoFpO7sP7JsEopyucVAMYfqXzvV+vLuU7nhXLSEYCLVDPtk/0tlvrhEYCQJX2c4
         w53POxrAFH3FS1cYncv6g8LZraQd3/mBBvLtVf4wNZv8QivgdnXVP1R3AtKyaaEbJJEa
         VQ0bDKX71I2aotLgTgdJ0pr6yeiW9eNnR0O0XVbOLKtd7bkWwsiw8BM94zXn1aPWMVBD
         KVujWcu2xieZRr8J5JkusL9FggH+MqqERhl6ZLcyZmBSxynXV8j8R9LRLabFgRCjGpLH
         94rw==
X-Forwarded-Encrypted: i=1; AFNElJ95EZycJqPck3d370IpBkmV9a8Kpx4bKRulMx/WEHP+Vbz5kFWdVHe8UBfFmKuPwDvk7CPnxIOmMjidqx5b@lists.linaro.org
X-Gm-Message-State: AOJu0YwbDYnpqtQQhnnMmMiT9c9VxFUWbPakCT0900N12+H8nGmN/MKS
	/1OPEZq/txw9O8zEUO5Tx17iS+zSxODGS/dI2PsPniZmZ6pzHstmx2iZck3d0XHsTmIr5nSJEOn
	6JZE+lALTJY1MyOwh6qVwNHJBjJ/T95LSecb6LDz/N7GkAMJ9jAmGQyq/dqc+Jgj463Q=
X-Gm-Gg: Acq92OF1s8wrnbMyGeEM3ElwvhdYayo/nSBQRYDKIKpieptlQYVF2G9S1y4hXT8glGj
	Q1lkdDrZwBREQrVYgRXiQjiP7h78J6I/LF55Ct+EAYFVDvGX+WYu2Za/oGEH03anDok2Lb0R44X
	ixDCaXZFHw+JH2mTHk9014xhyuwLCen1cftgQnvmQfLzxXAZw/2l395HDVw8iSlCZ34896oaUDG
	R3zQgf15QtzIcpFU6ljVZyVffc8kUH2zuJyjDPPtlG0wKzP2ybmZUdPRMsSPXMpzLhnEUFzNpKE
	FlcNjsCHBDFhEAX9CJhT6F69/EjLBOOXwQUn0ocmfNKATe4QwqySNDbCNBM+ZmqHGTldcoCSFbr
	bKFAcPjXbpgdChIwUTcyrkVNTW3GxqXHZRfplbXUz
X-Received: by 2002:a05:7300:2142:b0:304:630d:e4c4 with SMTP id 5a478bee46e88-3074fab7663mr1925017eec.10.1780496548241;
        Wed, 03 Jun 2026 07:22:28 -0700 (PDT)
X-Received: by 2002:a05:7300:2142:b0:304:630d:e4c4 with SMTP id 5a478bee46e88-3074fab7663mr1924977eec.10.1780496547695;
        Wed, 03 Jun 2026 07:22:27 -0700 (PDT)
Received: from [10.0.40.30] ([51.52.155.79])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3074dea8e8csm2504082eec.16.2026.06.03.07.22.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2026 07:22:27 -0700 (PDT)
Message-ID: <b7635ebb-c746-48e6-bce3-a10bd288e0c7@meta.com>
Date: Wed, 3 Jun 2026 15:22:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Alex Williamson <alex@shazbot.org>
References: <20260527102319.100128-1-mattev@meta.com>
 <20260527102319.100128-10-mattev@meta.com>
 <20260528171432.771a1a30@shazbot.org>
 <8854824e-06c2-43b3-86c2-8c2c28f9ad63@meta.com>
 <20260602131417.41366391@shazbot.org>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260602131417.41366391@shazbot.org>
X-Proofpoint-GUID: 6oSRUifTOxpIJJDTgw0CYTsUqE8RZI_c
X-Proofpoint-ORIG-GUID: 6oSRUifTOxpIJJDTgw0CYTsUqE8RZI_c
X-Authority-Analysis: v=2.4 cv=d9XFDxjE c=1 sm=1 tr=0 ts=6a2038a5 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=2UbFsIa4v//lIgRL4kGwwA==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7x6HtfJdh03M6CCDgxCd:22 a=wpfVPzegXHpEFt3DAXn9:22 a=VabnemYjAAAA:8
 a=AWNa1KPf0UDjnrnzYgsA:9 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22
 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDEzOCBTYWx0ZWRfX2nWt2OJm+kWc
 C/2/y7syjHHRllk3gsSqi032stb6iuhZO6O7NwP+6x+2aNWLwIRtqTLszZ9Ev/hGng2ihK1uolV
 0iskafGKYK5wc0IphaXhNDsjMkWGD+ScW9+PhCKqPjMrZPaRyhYSdhyazmVZ0pwHTWNt4DpLpzq
 Oenl83Nlyh+YUNpgYiJPLzcliU5uqHnTZudIRIL8YXqjaCCW5qWp98MBYR7Y6xuoMbDVY7u7k9a
 5usikLWOFT5F1znDvE/w10IyUEjRqbjKdnznxXAjXVLXZss+FVWzZ4JBniadXo8Dd5YyILeb4Rg
 o2O/4no4JwtC7QqVhTaI4X1hWj7Fb9YjOIEbbuuwrSHvTZSv8Ok+ib91a5WjjyFXOGHsk1/NTED
 lKgzCKZFyLNWm/D0YdycF6Xlv00/Bh/eJDLvL46X87fA2XNzY0YfkoKDb23CGERGQqO/5/TgMf2
 nOPr0AGTw+aVRKWyyBQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_05,2026-05-28_03,2025-10-01_01
X-Spamd-Bar: ----
Message-ID-Hash: XP72DKMGQIIBO7UYLLAW5XIYITIEV5QK
X-Message-ID-Hash: XP72DKMGQIIBO7UYLLAW5XIYITIEV5QK
X-MailFrom: prvs=461492bc32=mattev@meta.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 9/9] vfio/pci: Add mmap() attributes to DMABUF feature
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XP72DKMGQIIBO7UYLLAW5XIYITIEV5QK/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,meta.com:mid,meta.com:from_mime,meta.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D7E0263883F

Hi Alex,

On 02/06/2026 20:14, Alex Williamson wrote:
> 
> On Tue, 2 Jun 2026 17:50:04 +0100
> Matt Evans <mattev@meta.com> wrote:
>> On 29/05/2026 00:14, Alex Williamson wrote:
>>> On Wed, 27 May 2026 03:23:12 -0700
>>> Matt Evans <mattev@meta.com> wrote:
>>>> +		uint32_t old_attr = priv->memattr;
>>>> +
>>>> +		if (flags & VFIO_DEVICE_FEATURE_SET) {
>>>> +			switch(db_attr.memattr) {
>>>> +			case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC:
>>>> +			case VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC:
>>>> +				priv->memattr = db_attr.memattr;
>>>> +				break;
>>>> +
>>>> +			default:
>>>> +				ret = -ENOTSUPP;
>>>
>>> -EINVAL
>>
>> I'd like to push back on this one; ENOTSUPP distinguishes trying to use
>> a wild attribute value from all manner of other screwups such as
>> trying to GET (with it no longer supported), passing an fd that isn't a
>> DMABUF, etc.
>>
>> I'm not wed to the value ENOTSUPP, just something distinctive versus the
>> other errors userspace might see, and that value seems appropriate.
> 
> It needs to be a uAPI errno though, aiui ENOTSUPP is an internal NFS
> errno.  How about EOPNOTSUPP?  Thanks,

Ew, right!  TIL, and it's caught by checkpatch too (which I fastidiously 
run but still missed this somehow...) :(  "ENOTSUPP is not a standard 
error code and should be avoided in new patches.  EOPNOTSUPP should be 
used instead."

Fixed.

Thanks,


Matt

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
