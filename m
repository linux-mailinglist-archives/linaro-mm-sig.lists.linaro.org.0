Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFk7Asn44GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EAC40FFDF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 815C5404B2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:57:11 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id B70163F82B
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Nov 2025 07:58:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=fb.com header.s=s2048-2025-q2 header.b=0AZehmGW;
	dmarc=pass (policy=reject) header.from=fb.com;
	spf=pass (lists.linaro.org: domain of "prvs=74042375f0=amastro@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=74042375f0=amastro@meta.com"
Received: from pps.filterd (m0109332.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A55L2GY465486;
	Tue, 4 Nov 2025 23:58:30 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=s2048-2025-q2; bh=QP8yWRbPuUYOOh9yRKCF
	fuc9UFzcFCHQzQMKDZyG7Lk=; b=0AZehmGWd32aDJd6DXaUMtefNtrVrBqOS89e
	F10YjCxOKKdSXY9x0eqTh/G0Gx5vopS3oO00b7XFUjwqK8zeeXDXc5alExdMphMd
	z6LpRPPOPppaBWry80zPz5pFv9neCY21BAGHfgYlWecpm1KRmYW6fbdbBedb5XhZ
	IhXNoyFEFJsb9pTYSCX1Fp9UCjeHIUw618CUlKCZqDuqhvzeqw6SZV+849QsUf1w
	fXNLnMdV0Hp7QNKg/oJHCDCcTPMfGFjylNJupPNGfrFXgFaJwXncpWmN//T9hKGf
	MtkhFGvNZ5F6UtmCp/3UA4SULhJK2ueCbVGK+ADKuWhKnAr6zA==
Received: from mail.thefacebook.com ([163.114.134.16])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4a80by0n04-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 04 Nov 2025 23:58:30 -0800 (PST)
Received: from devgpu015.cco6.facebook.com (2620:10d:c085:108::150d) by
 mail.thefacebook.com (2620:10d:c08b:78::c78f) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.20; Wed, 5 Nov 2025 07:58:28 +0000
Date: Tue, 4 Nov 2025 23:58:24 -0800
From: Alex Mastro <amastro@fb.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <aQsDoHM+eGN0uLhk@devgpu015.cco6.facebook.com>
References: <0-v1-64bed2430cdb+31b-iommufd_dmabuf_jgg@nvidia.com>
 <3-v1-64bed2430cdb+31b-iommufd_dmabuf_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3-v1-64bed2430cdb+31b-iommufd_dmabuf_jgg@nvidia.com>
X-Originating-IP: [2620:10d:c085:108::150d]
X-Proofpoint-GUID: qZJProPDOAPs2uyJdjZB9QHuvfQJCGRs
X-Proofpoint-ORIG-GUID: qZJProPDOAPs2uyJdjZB9QHuvfQJCGRs
X-Authority-Analysis: v=2.4 cv=Y9X1cxeN c=1 sm=1 tr=0 ts=690b03a6 cx=c_pps
 a=CB4LiSf2rd0gKozIdrpkBw==:117 a=CB4LiSf2rd0gKozIdrpkBw==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=x0DUne6oTFOVQpvc-HAA:9 a=CjuIK1q_8ugA:10 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA1OCBTYWx0ZWRfX2Qkc85mMaTMS
 oxLfWawui3IoOYFhh3mRL4dGLEZ4TjPEvzvRlQ4RHYbQpqwxFiqFD+gAb+DaEuGCTjbQZzWLKo6
 fSK2287FfM4K6mzbY5PY20qKAH/XCFKBpJqMgh7LE1nAzPgxBBGv5U66r0e8ODUSxMkbWmUGtqR
 VK84opxtnPF8WiiETdTLdr97FbNeBDuSMrWUIiVt6Ago/eFd8Vu0LDa4IjZaPmaOsnc83nBjTS2
 XK0Lv+kBvo4fbIoxvPhF0SYIOWYwxX20dhlA7Fn7o2V8sGXbBF6Br5PDn00+d4W1OiTqujqfVUV
 4NMYzgq8IxX67+S3VZGfSdoKjLGktqKsxpfmfsXOK8nRv9t7lvDURkqI8H2NdBPnGd6O6Buzxmj
 Tj1mxbkA0aSXWzLiIVpioH52IUEOBA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_03,2025-11-03_03,2025-10-01_01
X-Spamd-Bar: ---
X-MailFrom: prvs=74042375f0=amastro@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3DGKTBKYUZWX2ECQQECGDI65WZDUDBIY
X-Message-ID-Hash: 3DGKTBKYUZWX2ECQQECGDI65WZDUDBIY
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:52:42 +0000
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Joerg Roedel <joro@8bytes.org>, Kevin Tian <kevin.tian@intel.com>, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>, Leon Romanovsky <leon@kernel.org>, Nicolin Chen <nicolinc@nvidia.com>, patches@lists.linux.dev, Simona Vetter <simona.vetter@ffwll.ch>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/8] iommufd: Allow a DMABUF to be revoked
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3DGKTBKYUZWX2ECQQECGDI65WZDUDBIY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[fb.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[3894];
	R_DKIM_REJECT(1.00)[fb.com:s=s2048-2025-q2];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[fb.com:-];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[amastro@fb.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_XOIP(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_HAM(-0.00)[-0.785];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,devgpu015.cco6.facebook.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: C0EAC40FFDF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Oct 27, 2025 at 02:31:02PM -0300, Jason Gunthorpe wrote:
> @@ -1024,8 +1027,15 @@ static int iopt_fill_domain(struct io_pagetable *iopt,
>  			continue;
>  
>  		mutex_lock(&pages->mutex);
> +		if (iopt_is_dmabuf(pages)) {
> +			rc = iopt_dmabuf_track_domain(pages, area, domain);
> +			if (rc)
> +				goto out_unfill;

I think this error path results in locking pages->mutex recursively. Needs a
mutex_unlock(&pages->mutex)?

> +		}
>  		rc = iopt_area_fill_domain(area, domain);
>  		if (rc) {
> +			if (iopt_is_dmabuf(pages))
> +				iopt_dmabuf_untrack_domain(pages, area, domain);
>  			mutex_unlock(&pages->mutex);
>  			goto out_unfill;
>  		}
 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
