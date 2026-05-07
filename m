Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHTeJrFgBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:29:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 324D553247F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:29:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C65FB402DC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:29:51 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
	by lists.linaro.org (Postfix) with ESMTPS id 1BC673F775
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 08:00:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b="sC/HxRbj";
	spf=pass (lists.linaro.org: domain of "prvs=3587027ada=mattev@meta.com" designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=3587027ada=mattev@meta.com";
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0044012.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 646ME6l92142956
	for <linaro-mm-sig@lists.linaro.org>; Thu, 7 May 2026 09:10:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=eFG1vBkuGjV5WqwCWdKJSFjXXoeKLNuaVc0SsnohSl0=; b=sC/HxRbj/khP
	lauwqZ9En1m3PiufFWhk2MVi8NnVzUAemf9bI6F5CBdj1cHPIggkaXe2/+EQOCEU
	Qfst0vpp73IxZdukxzFpSLZ/U+7vQBDU5pepEIqV/Iud44cWwJgw12gI1g58sTtM
	KksXYFPHQ8h6CUL6YKHLFFteuLAoXy3X/XAZiCtRuXtKlenAOWQS4xrDbUZ67XKR
	BAi7ALQLC2NtDOk9eMoLHqLiIEvmiSJgtKCAHe7XRwq5NbKpCcUkRb+O1q4FcLKp
	jMlfnYMVmysh10DkwwgF9TodXhraCJ5gFNKqgDPilbYYJj3L3jdHUXWSyilWfZwb
	YMz6VepcRw==
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4dwey08w32-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 07 May 2026 09:10:03 -0700 (PDT)
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-44f65835b77so607601f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 May 2026 09:10:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778170202; x=1778775002;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eFG1vBkuGjV5WqwCWdKJSFjXXoeKLNuaVc0SsnohSl0=;
        b=RbNqW0OMfXGCAAjEfZfkbQtMpmLRvlIkVLvaTjmJdtR/mOISXtZ09BUH5BhmgVLJ9V
         xpPZiNO0e3dtjKTu58YP/80XioRU/BJfqwltVxarwdW9MCftoMtiQhqYFV1/20qK9sDG
         +iKATy9Rxciy+R4FBumr7cnpFuDDdCUoim4P56Z3t9szLFx/WUhVChxRDhz0wg3slo9S
         CyqcCgnBMzbIi/XW2RlIfiwMjFjabxkW2o0/joQYnMjLpTQLJwwgWqaoEI/76PCyVkKg
         ymLkjoWPYcAXRSN0dj+BiL+VEfLn7iSriB2awqZscU3X2POPPEkP9Zi0JIYFVd9wUsIu
         39Qw==
X-Forwarded-Encrypted: i=1; AFNElJ8RLNY4XaCbygJw2H74R1DZl8yIoDTY7DtD/wgvushnHvQw+QkdX/bePpE3LOtFLFtsiDcSDSgOcB48tt4s@lists.linaro.org
X-Gm-Message-State: AOJu0YwbzLwk5YXuDlwGXcoyKF9CmbmwqSJJ9chQAhd32u9E/61Rp3EM
	Ha0FeWvQtatimxDxJUnqLtsZch8gsvG3jr/MfJqQEu7LTBDhm7qj22pWotQokfKs3IpDj3z04rg
	4b6U5FJwnEAhkf4kxC4gvdpDTu/CEMG5ZkmZ5L/3kCbDGkRkvCGQNQYJ39jCPCv1nrSo=
X-Gm-Gg: AeBDieu4uEhLoXNZm9pwNXYnVrwT3HPS7mm3oi2nHqqJDGrgXMjuFYdjHrww/TObwke
	y7RsXdVG/yLWXDTd7Hpd0qS5HKwwo3yyT/xm0u42Se5BxfS+fa5fe9ulvuWSqAw0OThfo/oTFu2
	yRUIOmFisb/zIvgy3qxy1dajDhAdNb49b2Hg4L/ZcuMJ1fWe/WQTbpmYf89t6R/X6cnGSbtO1LY
	c6A356X7cWcnD0YukP4er1HpcWLD5T7WL1tVpDwL8PAQ3A1eewySeLiW6sQZ6ZdmTPEA+WtYTmf
	ZuJIjuyyVdSro32O1LcfNCNlpl/Wqk1HklcvHQb3erKFFh6iDVUr60DacJzo4QTosENdhjQGlOq
	GFh5AOoL6h+PDOfNkWkWjEPRYzv0e993EoxIs2KEWB+RS2eCbNvm8fW/L3VyovIgWkR3jScJfXV
	KUUmn4rmd5OvBhdOiN1DyadrGL7dYIrg5BMparY6bl+V9ooTVLMcYEtF+KNntNNN8H2yc1zIw5C
	8DU1o4lGL7wida5guWfFxE=
X-Received: by 2002:a5d:5f47:0:b0:43d:613:33de with SMTP id ffacd0b85a97d-4515cf11d94mr13854413f8f.20.1778170201762;
        Thu, 07 May 2026 09:10:01 -0700 (PDT)
X-Received: by 2002:a5d:5f47:0:b0:43d:613:33de with SMTP id ffacd0b85a97d-4515cf11d94mr13854369f8f.20.1778170201226;
        Thu, 07 May 2026 09:10:01 -0700 (PDT)
Received: from ?IPV6:2001:8b0:8b6:13d4:102e:f2af:e074:5cde? (e.d.c.5.4.7.0.e.f.a.2.f.e.2.0.1.4.d.3.1.6.b.8.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:8b6:13d4:102e:f2af:e074:5cde])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45412820454sm149530f8f.6.2026.05.07.09.09.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2026 09:10:00 -0700 (PDT)
Message-ID: <2a75c858-5dfe-4b93-98fc-909a2ee5558d@meta.com>
Date: Thu, 7 May 2026 17:09:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jason Gunthorpe <jgg@nvidia.com>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-8-mattev@meta.com>
 <20260424183006.GI3444440@nvidia.com>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <20260424183006.GI3444440@nvidia.com>
X-Proofpoint-GUID: oL_M2o8h00yQ-xksMlsvJt2z4L60M-WK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA3MDE2MSBTYWx0ZWRfX2dlb255V9eoJ
 jbGwPLAwjhSBFJ8FZmjtt3ABeYpE0bR11KfyNcBmjZ5KHKNxqtCYw1oALej1HoJ0LEyTKn17oj3
 tV7Gwv6AAlwAFjq0Y9S/d5VPJfOnChLv9tnsnFHEn5d7phg0CE3R7uUxdfE20dxfmJtnxb3cwIh
 J/ZqSqbrcZWS3Py6Hd3yIWzxupDvRq4rkY35XFHvkxzVNEMqy3fZpbgGcTS5EHOZs+ALaEcxBTI
 6oHd6zpy5Hk4YGXIDFcRE/yh7JP8fjv1Wd/OLgperxgygks5dgVnLPcHG6WqaWDkoS3ZhxTrbjB
 jN6+WocgppCxTbBu9Zgv5SwwmkSi9MYgHyMgpJEIKHE2mVe1jPl5NTQYWqLPcZcN1QXGabbYRuV
 iAvB2HiI9MUXwifkfK94XIcX3ooYqd2AnOLjji2kD7V/HMH/7nTVy5RWXx7OMYpHuSYXhvCO0D6
 gXjPgWWGvRnHmscoZlg==
X-Proofpoint-ORIG-GUID: oL_M2o8h00yQ-xksMlsvJt2z4L60M-WK
X-Authority-Analysis: v=2.4 cv=Zcwt8MVA c=1 sm=1 tr=0 ts=69fcb95b cx=c_pps
 a=pX1sPZUoWPGeQgUnKQNIgA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22 a=7x6HtfJdh03M6CCDgxCd:22
 a=PAz_-FQ8hEVmOPYdF0yf:22 a=bfFL6uTa8VbwhnMIod8A:9 a=QEXdDO2ut3YA:10
 a=XGGHjNwGSpTZ5T66x7Ix:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_01,2026-05-06_01,2025-10-01_01
X-Spamd-Bar: ---
X-MailFrom: prvs=3587027ada=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Y3NZSNPFUALP3TE6OZGIGXGG4CLKIINT
X-Message-ID-Hash: Y3NZSNPFUALP3TE6OZGIGXGG4CLKIINT
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:48 +0000
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 7/9] vfio/pci: Support mmap() of a VFIO DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y3NZSNPFUALP3TE6OZGIGXGG4CLKIINT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 324D553247F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[139];
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
	NEURAL_SPAM(0.00)[0.428];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,meta.com:mid]
X-Rspamd-Action: no action

Hi Jason,

On 24/04/2026 19:30, Jason Gunthorpe wrote:
> 
> On Thu, Apr 16, 2026 at 06:17:50AM -0700, Matt Evans wrote:
>> +
>> +	dma_resv_lock(priv->dmabuf->resv, NULL);
>>   	vdev = READ_ONCE(priv->vdev);
>>
>> +	if (READ_ONCE(priv->revoked) || !vdev) {
> 
> Why is this read once? It is inside the resv lock so it is stable?
> 
>> +		pr_debug_ratelimited("%s VA 0x%lx, pgoff 0x%lx: DMABUF revoked/cleaned up\n",
>> +				     __func__, vmf->address, vma->vm_pgoff);
>> +		dma_resv_unlock(priv->dmabuf->resv);
>> +		return VM_FAULT_SIGBUS;
>> +	}
>> +	/* vdev is usable */
>> +
>> +	if (!vfio_device_try_get_registration(&vdev->vdev)) {
>> +		/*
>> +		 * If vdev != NULL (above), the registration should
>> +		 * already be >0 and so this try_get should never
>> +		 * fail.
>> +		 */
>> +		dev_warn(&vdev->pdev->dev, "%s: Unexpected registration failure\n",
>> +			 __func__);
>> +		dma_resv_unlock(priv->dmabuf->resv);
>> +		return VM_FAULT_SIGBUS;
>> +	}
>> +	dma_resv_unlock(priv->dmabuf->resv);
>> +
>>   	scoped_guard(rwsem_read, &vdev->memory_lock) {
>> -		if (!priv->revoked) {
>> +		if (!READ_ONCE(priv->revoked)) {
> 
> Same here, it is not read once since you hold the memory_lock it is
> stable.

I used them more as an 'eyecatcher' to complement the comment.  Although 
they're not strictly required (compiler barriers at the lock/unlocks), 
they stand out to say "something's going on here".

Revoked/status is read first holding resv, and _must be read a second 
time_ once that's released and after memory_lock is taken, so two 
READ_ONCEs seemed appropriate to show this.

But if you feel strongly, sure, I can remove it (though I'd add, say, a 
/* Re-read status value */ comment).


Matt
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
