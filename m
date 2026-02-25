Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEqNIqgU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:56:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 68855412252
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:56:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E95F45150
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:07 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 51EE53F69B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:10:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=deEDZpuC;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=P9HfhYfh;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PH4gM42561036
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:09:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pZEpDcrfMrqqrHue5nZhulZF
	qXVRR9YBcn3GTIB6GfE=; b=deEDZpuCFaGh0XyjzUZOyK0hDDEqcK6/Q8xviVo8
	f4DzXIpDz6jIg0dOrqEWjiyZRnsRXjZahXaUHgSjcY4hE+0TuOxFb3cIpjlhiWXO
	EMqG//Dmp5K8OiZY04WhLhOxkBHvE5subNv+ebJkQ1fm1PFylogeaaJpjQ/IUbwg
	bmDwBPPzBsfJPH+EXvISMBJQv+U2mQTGNNREV6xK5QiIvITBGx5ahrnC2lj4Ggvf
	kAUHDy6kIjJGD4ae1n9TSz7sNZ16SM27+PDkJmbSnmvPa49Gfc/WVHke683i7+A9
	ULivLKJqK5NlQTiFt9Gbj2lWTyCDeteu1eDJedoBVLLxFA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj55srcnx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:09:58 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3a129cd2so554365385a.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 11:09:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772046597; x=1772651397; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pZEpDcrfMrqqrHue5nZhulZFqXVRR9YBcn3GTIB6GfE=;
        b=P9HfhYfhZqkRGHE8T18p9PI+pXgOQok5hS3pAnqMvMfkU8O7mabk431/l0RciA/eaO
         u1Sa58pruvNHD/SCJGI4CCuWg85EvpIWLK2RzRgCVamKQqOnkZNDtPUVpI3h/KDTdBWm
         sxgLjavFUIhJg0SVxxip03JoJgIxjszQGKguOVgNlALWjEOdRgPpJHpNYx+z3GhOi+8V
         Zfhtl602O10Kd6sWBpnRJNUbDQf9/3c/ynI5pDhCQoqw8ecjRhUnzOvNN85rqb8xhLSZ
         qx7UnhgSaahNnf/q8l1+aPquocBcv2X6UskJFtk8PaGXaJioaPRm7kqsbpiS9110Ht/F
         ZPnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772046597; x=1772651397;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pZEpDcrfMrqqrHue5nZhulZFqXVRR9YBcn3GTIB6GfE=;
        b=ew48CeCVWyrriJuBM2nA8y7Xr+GFLl7Fj7F+epRSLdMeqjTNsFNqIfndeXa2cZLKwV
         GEwUO35Y2wvZKfrgY1AaDMt9bN5X5b4RIKGl4doeG5lzjXGYT2vr7TUKydgNiV4MocYg
         WUQd2IeGLHgvNQcKueRFkKAJviCxrKp6jGJg2V+A0CzweTAEWSLAtiilXi8NROed22a5
         +HX3EOhU3yOArLlVxxIdSaY1N23tWBFaC60jZkw6ONCi9pB2hwa4fbRHeS9zlaIPbGHO
         Elg6VJt8IKnYdklM0NzXQxlwioTAffQkeyo+yXawiYEYKbe1d1cKBjhG1mlYb3EqEDiW
         tPZA==
X-Forwarded-Encrypted: i=1; AJvYcCUkV1TSSb9I/P/+ZPSIw8aUTeeJNksx+Q7kuV2zeRikQsaTEx7PmOi1FOTCnG8lqDLLQZ6s29oIyXngnXOB@lists.linaro.org
X-Gm-Message-State: AOJu0YzDakkA43OePazuG6Qifv1RYAK7wfDkHL7uPlhOQLaUxirVOMm/
	IspSIF7df715NNtvHhPxS5+K5PpsvHVX+29u/zYlL0JLrvUhJamMF6PdyezbKetwJ2M/6uHLj+G
	B6zgCISZNIEcYY/JBNTSHIuS48IHx+bIVMt7H0dcp1IaB8G0VKNDcxy0LOk/5x2Q6ad4ljQ==
X-Gm-Gg: ATEYQzz5gjqJlFoX9kpn4kF8xg3fVyAPx5QsIlN7q/dHW7qDSb3mIABMd6gT1Hb7lOn
	6K6IfiL+qdF70lB+METVl+q48iaB+5WIjXarZBQxgJBKt+add+8sjp9BagDQ8J34w9+VvUxEW7y
	WZkWpviyorJ8zJNANej5GCMnlgP0dOtNeAfyn7uK2AChBrwZJChKTkqEDDFM7kspT3QHTZI32wb
	HGcc9ex3gBpavrF97GPII5wa5+6sClI7DARTQCg8O2duZSWbyQ0TmkCjDqP5K0JJgnlfGS5vIwT
	qhtS8x374TLxd9ifr6TrlsV/aCi/BqQrT8KKTJQTIMoX2ZWfkM3WnEV0jfdKyzxHswv5qhBfzWY
	08Zoq41vLOd9tsLc494E8vIAnV7x+9Cy2yFT4TuTgfOH7JWKhPAjYrivLKVzDGof7HV9RnZk2ms
	C7L+pDUFTjt8xhAlOyEtBgemsqU0lyrwC4Un8=
X-Received: by 2002:a05:620a:4451:b0:8cb:4d46:7a6e with SMTP id af79cd13be357-8cbbf3658dfmr20929585a.10.1772046596980;
        Wed, 25 Feb 2026 11:09:56 -0800 (PST)
X-Received: by 2002:a05:620a:4451:b0:8cb:4d46:7a6e with SMTP id af79cd13be357-8cbbf3658dfmr20924285a.10.1772046596434;
        Wed, 25 Feb 2026 11:09:56 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a7a1fcb1sm30525601fa.27.2026.02.25.11.09.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 11:09:55 -0800 (PST)
Date: Wed, 25 Feb 2026 21:09:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <x6zseuf7g3ngtdlszf3vxj3nqexlkbtrp5kifo4tg4muzdef4n@5rngfg4gu47m>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-4-fe46a9c1a046@oss.qualcomm.com>
 <ox7jnqkjo3frhbgpp63sse7ram72obihe4qlbbn4z22wbw4szr@7pzoeecdvsyg>
 <e82443ff-f6c1-4b8e-b573-f4620dd0f17c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e82443ff-f6c1-4b8e-b573-f4620dd0f17c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDE4MCBTYWx0ZWRfX2YM199akd/EZ
 bThOEfMedhPG26xpHbQ8gcuok+PL8s2T80jBrbRxAQBy/iKsKx2tSGIR4NdbNrjxWSUmqi8Y4VA
 eG2TUZdtu9PzLhM5k2jxgMZ0xQYrjKPnafaZjQPVjaqR+IdVE0az6CMIJnvsPv4l3CBfH61LhEa
 gj6n9yutX0fWwP5xadnuwLVoDP9Bk8ZIkASkursIVnNLtCeOMubFd+Eh/cRMZp+mX9VwHvHFl36
 O9ztgLlchaG5/K6tUdksvQmRScc7hVElvnVeviwhE+wH9mjK8pT0PgsK1i0a+YIcwMug0PNYscg
 cePgt04/mwxrA/XT/YxuBNdz4zRvOyRtRZn9g+WJ3h1pBuUCZkUolAGZ7544DobszbpTgaJjr9i
 lwIwkL1CR95Y+ab4MftR0rfRHR4TkOmR2TVqBoz9eObHpgs0YPb3xJjfU2roKPh0eqkYZBhAK3F
 GDN/YqTbE0BwadES2pQ==
X-Proofpoint-GUID: XoqalQtE1AhleOPNTJn_ciH8FSK3YrEG
X-Authority-Analysis: v=2.4 cv=JfGxbEKV c=1 sm=1 tr=0 ts=699f4906 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=yBEyVpS31OZj4jLVKcoA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: XoqalQtE1AhleOPNTJn_ciH8FSK3YrEG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_02,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 bulkscore=0 suspectscore=0 spamscore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602250180
X-Spamd-Bar: -----
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3MOXFBHW4XI6RQ7D4LXTNMZBXZ3K5VCM
X-Message-ID-Hash: 3MOXFBHW4XI6RQ7D4LXTNMZBXZ3K5VCM
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:41:08 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 04/18] accel/qda: Add built-in compute CB bus for QDA and integrate with IOMMU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3MOXFBHW4XI6RQ7D4LXTNMZBXZ3K5VCM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[1197];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,oss.qualcomm.com,quicinc.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 68855412252
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Feb 25, 2026 at 11:26:52PM +0530, Ekansh Gupta wrote:
> 
> 
> On 2/24/2026 4:14 AM, Dmitry Baryshkov wrote:
> > On Tue, Feb 24, 2026 at 12:38:58AM +0530, Ekansh Gupta wrote:
> >> Introduce a built-in compute context-bank (CB) bus used by the Qualcomm
> >> DSP accelerator (QDA) driver to represent DSP CB devices that require
> >> IOMMU configuration. This separates the CB bus from the QDA driver and
> >> allows QDA to remain a loadable module while the bus is always built-in.
> > Why? What is the actual problem that you are trying to solve?
> Bus needs to be built-in as it is being used by iommu driver. I'll add more details here.

It's an implementation detail. Start your commit message with the
description of the issue or a problem that you are solving.

> >
> >> A new bool Kconfig symbol DRM_ACCEL_QDA_COMPUTE_BUS is added and is
> > Don't describe the patch contents. Please.
> Ack.
> >
> >> selected by the main DRM_ACCEL_QDA driver. The parent accel Makefile is
> >> updated to descend into the QDA directory for both built-in and module
> >> builds so that the CB bus is compiled into vmlinux while the driver
> >> remains modular.
> >>
> >> The CB bus is registered at postcore_initcall() time and is exposed to
> >> the IOMMU core through iommu_buses[] in the same way as the Tegra
> >> host1x context-bus. This enables later patches to create CB devices on
> >> this bus and obtain IOMMU domains for them.
> > Note, there is nothing QDA-specific in this patch. Please explain, why
> > the bus is QDA-specific? Can we generalize it?
> I needed a custom bus here to use for the compute cb devices for iommu
> configurations, I don't see any reason to keep it QDA-specific. The only requirement
> is that this should be enabled built in whenever QDA is enabled.

Why? FastRPC uses platform_bus. You need to explain, why it's not
correct.

> 
> But if I keep it generic, where should this be placed? Should it be accel(or drm?) specific?

drivers/base? Or drivers/iommu? That would totally depend on the issue
description. E.g. can we use the same code for host1x?


-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
