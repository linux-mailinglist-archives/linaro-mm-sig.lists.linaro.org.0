Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NfdBvMT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AE997412137
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9F1A44DC0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:05 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 789CF3F80C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:40:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=CIL0pWDy;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=koEUqAO8;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NILQPp3732694
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:40:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=u/ELNB5NNSNmVG1lAxOxXYaU
	P/G6z2rnLtuVVe2l8Dc=; b=CIL0pWDyAHnR5vXk18SDZA7lb6nyCoTjULcjQfez
	Fd8EZfTPq5EtM25/5Al218WuFiIs1Mds6C/q0/EfPi6fYF11Kjzwx6jCUAbIgDF3
	A1rfdspmIF8aTktTYjxCTIWXiOVT49AQe6OgVD/d7sqgV9sm429j8EW2IRKZz4jR
	fB5J9wnQcdSkjZaVqOSd5qSOwTco8FKnmcALeH23N4obi36U1A7KduH1zlGlZF0v
	fzA8y6OA1hpylxOWNBU4cB3CfpjfygvgTMTuSKgbyOZQlcaUIs+2f9R6JhJfZLxW
	zAHG0AR/GsaSlxM7FdpK2WFea2c5ABblEUPd36w12xuwXA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn7ta45x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:40:31 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb390a0c4eso1905452385a.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 14:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771886431; x=1772491231; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=u/ELNB5NNSNmVG1lAxOxXYaUP/G6z2rnLtuVVe2l8Dc=;
        b=koEUqAO8jXGywVN6khITRrPjYAC13R/kV5C3Ecf+GtyDtCPiJ4aNgcyHCa9JsnjCiA
         Vv9eX75qjRJJ4k8884LkbRsEm6BgaeKifPG1HtpFFuvhZ5mCTnNIuAkd5+Y3rH03L/en
         XO8vzQzMdi+iRcG5TOjNqytwntK8K1JsrMnwb7dQ+ngQnKc9hm5ZcW4tjMwepNcMgh4d
         jzV/E8YCTi+ZcWVDXywHGFJcUXzfrSXn3EBwzaOSnfxf2Lph0KXZne3mgr00LWNTyN5S
         cFPBwDt3+n2zM1dLFTwmUvasG6PLfIjmIj8eJP5tyG8isqc+BQvIZEpIYC2kDPolbR9w
         SuQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771886431; x=1772491231;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u/ELNB5NNSNmVG1lAxOxXYaUP/G6z2rnLtuVVe2l8Dc=;
        b=UdFDxXT4WI9GkFxuxRR9SXj1bresUz7WsDHIJRl1QedTNqWF5PNhngHVvdutqzmfYC
         k4MLz64k7ZVoG0R51Nu2W1gZ99Tf+FS/N26Xm4MslDbcUYLbOysskr8uBly+UTSZreaM
         ljEyovnGX3abTvuc04GVykOY92CvKrkOISjuw23G7P6vlpTkMOmYnHGoSGnGyHMH1hqV
         OqWJLko6kNlhoeplbn7fmpLkTKm2jl0/N5Np9TYqytJSKUgRGgGVeylz0aeD/+Rc/h4x
         V71NpLHtRUG8ID6m8tL0bZuVfG3gLCRKq44n26tsoI8g0LB21eRIwgM6+74kC95UNbcf
         D0hQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLSh3isl4bHUcjoruS0LPuueQq/+cMmFyM3DnbDqIveGNpMW/wK27T0povqLDcSh3dpfqX4vJyvA5DyYPP@lists.linaro.org
X-Gm-Message-State: AOJu0YxnLLSMHufhAVfE4+Tw/yx5+uXZIA2OGzLHGJbDCL29C4tQQ6Lv
	PHFVzPxmUbxWGiix/AzhAq/THlPP0trjLbx0Q9shNSc03/JHYFRhJdKduIOH3jnrP71LX6k//fC
	UCXHFTDkrAedoHaCa6JuSqrH6SDQP/5vYawyn7k+94Q4GOqaXF0Mf+dVX+qB73g6e98J4kg==
X-Gm-Gg: AZuq6aKNNKLEZ0RxFllOCDdkcbMTkeiEC89KnSxTpoqVRwaAkRJ4WoEwmo1kIFM1ACu
	sVr3E+9VqWc7hRK1sA2oq6/zJ/K+8mkCRIHW39Thyw+fh26OPTvqfSNKv0nyy/6sR3b3OFcq6GV
	I4VutouAeC71VRewNrz2a/005w6Bx+/G/4/biNFuMm4Fl9F12E+hhS0Tg0yXzGLDkN5M/gi7o6C
	2qFStdgzefIUdV9Wd3C2vAbYmajITurVKNgcPrjbC1PdcpzZM+IVMQFYp7EoQ2RHlYmZa0ZzuB9
	MmzMxOysY8Us0vSs87zy7aItQJPKVFNhi7aft+zGR2aw/8O4lC8K7u/qrwa6JUGu1mBFC9jouvR
	KOTLm2BxeEmGigojHjMjZxg7+m7OdIEpntls8E7OO8QkFhwPSPFZMCz9oLitplltObNy01fe3nd
	iHUN0ypyt1wurm99OxlUufpHmREQSALljdEGc=
X-Received: by 2002:a05:620a:f15:b0:8c5:2d4c:4f0e with SMTP id af79cd13be357-8cb8c9fd576mr1266005085a.25.1771886431266;
        Mon, 23 Feb 2026 14:40:31 -0800 (PST)
X-Received: by 2002:a05:620a:f15:b0:8c5:2d4c:4f0e with SMTP id af79cd13be357-8cb8c9fd576mr1266002285a.25.1771886430804;
        Mon, 23 Feb 2026 14:40:30 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a78b4a45sm18140691fa.13.2026.02.23.14.40.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 14:40:28 -0800 (PST)
Date: Tue, 24 Feb 2026 00:40:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <zideovhb7djvsbydqmdyxbgh6cte7xc5ouhm6gsreww6klqqae@o6w6wd4tic4r>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-18-fe46a9c1a046@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224-qda-firstpost-v1-18-fe46a9c1a046@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=c5OmgB9l c=1 sm=1 tr=0 ts=699cd75f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=e5mUnYsNAAAA:8 a=gmMn6fPPSMme9wD3190A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: cbY0mKeSEhgp4XRdRYcex2kvZZMOUhnr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE5NyBTYWx0ZWRfX5QtVFAkLfQic
 eqPzFtvMTwzT1S8Wcsy0BTCJwOJNzu2ydHAbjDe2gKmn/0HicVCSHKQm81uNh42JUElN1ADOi+w
 jwiek43HIoBMsi/86uqGRpmPqy7JsysnOz/1jkxh8orrUzONmdrzlnlTuNE9O+m3IiYzg4q2BWG
 xKLtxPomVhC1LCIlOMZPeao9Is19CV62wfqLt3kLm4Z+CJ2lCHBMh49Bs9GlOFMSpyRu4/fXiHe
 SRhV3n4L8QHF2n6CT5jyJF3w/jmDA8jU6r8x9ZMU6ft+3gZ9ieWBNc0E8zxuQdhAyks9iuSiqeB
 U7VmPKFAV23bgegFnrsV5YIqwW1IbVTIdo6KvsGT2xRtTJn77Y6zifc26tRmUMV5vkfV1+/ChSC
 h7zU8qgi7YIlFMFBHRh46F+NVOVqJO1d5fkecF7Xoir1m48prIhXJQTe2IsUBjOEZGFGJyTFUw+
 zomwghCFjQMHdrRxTZg==
X-Proofpoint-ORIG-GUID: cbY0mKeSEhgp4XRdRYcex2kvZZMOUhnr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_05,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 bulkscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230197
X-Spamd-Bar: -----
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: V5WUJZSY74LN5FN47NHMQZM2VTLNRATH
X-Message-ID-Hash: V5WUJZSY74LN5FN47NHMQZM2VTLNRATH
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:54 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 18/18] MAINTAINERS: Add MAINTAINERS entry for QDA driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V5WUJZSY74LN5FN47NHMQZM2VTLNRATH/>
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
	DATE_IN_PAST(1.00)[1242];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.freedesktop.org:email,qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: AE997412137
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Feb 24, 2026 at 12:39:12AM +0530, Ekansh Gupta wrote:
> Add a new MAINTAINERS entry for the Qualcomm DSP Accelerator (QDA)
> driver. The entry lists the primary maintainer, the linux-arm-msm and
> dri-devel mailing lists, and covers all source files under
> drivers/accel/qda, Documentation/accel/qda and the UAPI header
> include/uapi/drm/qda_accel.h.
> 
> This ensures that patches to the QDA driver and its public API are
> tracked and routed to the appropriate reviewers as the driver is
> integrated into the DRM accel subsystem.

Please add it in the first patch.

> 
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  MAINTAINERS | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 71f76fddebbf..78b8b82a6370 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -21691,6 +21691,15 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/crypto/qcom-qce.yaml
>  F:	drivers/crypto/qce/
>  
> +QUALCOMM DSP ACCELERATOR (QDA) DRIVER
> +M:	Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> +L:	linux-arm-msm@vger.kernel.org
> +L:	dri-devel@lists.freedesktop.org
> +S:	Supported
> +F:	Documentation/accel/qda/
> +F:	drivers/accel/qda/
> +F:	include/uapi/drm/qda_accel.h
> +
>  QUALCOMM EMAC GIGABIT ETHERNET DRIVER
>  M:	Timur Tabi <timur@kernel.org>
>  L:	netdev@vger.kernel.org
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
