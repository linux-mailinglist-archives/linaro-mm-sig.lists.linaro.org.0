Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KVvMwEU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9443241214D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E80C44E6B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:20 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 981353F803
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:45:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=RxwZI8N7;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=AHd627oS;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NIeLCJ3698130
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:45:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4uwG+VSOUPiQWFQC4n/buq2e
	c1Jxta6TBA66E35NxDU=; b=RxwZI8N7h8IyqIggGJxquVH3UCDbV1q5LiSJ+ilt
	DdciWWZZ87rygoZLFTX7IFnxwhjw3a2NekubPTReBbZdvT5/4SSjyEZb+WDNYh8A
	WQ8gdZL650EWkFAtysqxYKeuW8qApHFcT2N74xuR4TKihkr/XGpCrAqdNYDAxs/1
	NT49p75lSokhEFFtzG1AVZFQmoeq3548hEiK7Iw7IhrArm4kDLXTLXWIURFHHJWi
	f4G+rooV2wwz+HpS0+nJec8gygbF88Xa8UpYvzXt/UceJ+BeoiwcqyxKG4b6W0ho
	FxvSAPylmmsj5J5FZAGJVokXdrAbR8YEUY10TUTO78Pghg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn81a4sh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:45:03 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70ab7f67fso3468723085a.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 14:45:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771886702; x=1772491502; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4uwG+VSOUPiQWFQC4n/buq2ec1Jxta6TBA66E35NxDU=;
        b=AHd627oS8N2PZWCCag7Wb31JDxObJmFv87BWxi4A6vGGC+g4kmyUdein2bkJPuN+Jv
         6P/vkFvnPCLs7qk261S+foT38u6uSK2C4681S7ugrVKHo7YSrm7evYBchLQHnYvH9/rL
         D+hB1Svz6EDoVmokhzQHqK+bwWLaeFdl3HMwGpAdGsc8QGCn4JBfQqOIRXXpeasLJLgd
         eTu5Avkh3jBxtOoZ4RerLN7AgaqLtoTzN8rdSbltqlGKAYs1XHBK3EyMsaN1KKUJxCft
         K8SVHFBaVtcgm/I0HLGucAhcnxEwRCz3xOA2N9Rho8+H0Ny/FB+hhXmshU6DgcLiSGPn
         ODHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771886702; x=1772491502;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4uwG+VSOUPiQWFQC4n/buq2ec1Jxta6TBA66E35NxDU=;
        b=ZfuwtCfMSFvmird16PJuIsesK7WQGscCh+Wu03rRQjTilsCOzmM5e0krpo+vxeSIwn
         sQUbbOZWPxFdHASouKZi04VKg4jQ0zsAnu/FLkG0NLSjj998oyN/ilYQzlM76OMh7ShJ
         UxNMWAnssn67deoGU47qsfEF1M3FLlhTHWpYVfENnliIzg0zNa7kERaQOks7uSnPKfHy
         hV9XJbwoc0bs2OOg8yYnENwd7cKNbNZAGdB4G7LJ5QAnPvQS3hljksIFZLXrGg3MmNGF
         YPETIIqkT8woEj4SQdE9wX2/BQ6Ph9zOXefiTWABIwz+fj1cioM/bH+zGpZ2dYPHGrIA
         si6A==
X-Forwarded-Encrypted: i=1; AJvYcCUmN817NX6XRbdgnEh2LsZKkLJDotVxysopdeCdicpWlEcXetFiuhSvzgJuPokD36DtYx0n47KlSSiEjNyR@lists.linaro.org
X-Gm-Message-State: AOJu0YzuVARRks38+r6qutA2C4HfB4pc+sb77u+cmH1vc7EQ2nbiPr2f
	9vDexkNII+ai255/8Q57G+xh2k7kd4hsX2EI9rhYcP8IDiMJ10IOuYHErYBH0EGX4sypntkoUlQ
	ARpug7Ner1+6sbLOLrmHMgppX1CNP5I78AYj5qbihHT7KTpoOlZIjnYKTofuzX6dbSxnkZg==
X-Gm-Gg: AZuq6aIuDs2OVHRE6D9pRzUinZ8/MWly1mlB83/LV0msMasAbkDCuPpWOpbSM/n2CVI
	azGO46t22dnCcV4C0Wr/OYJca3w7QpSBTVY9dtKCZEv96TLkj44r4j0PYhMeUyDTEirO3/cpWtv
	vZlDcVImZ5ROqdrZ9qtRAoMTCddnWwZ3e+ePUne9uKl2q7wPzqij72cp7KtojRo3ytQXDtOEG/8
	xikKEEzZai+AqIOCg/zMXWi8+wJ0CS2CNvK+S26ZzS2ZpGh7A8dVj8i7cQgaZRontnhtB+aNGy7
	XsRvvCtBQcURSzJ6Gqnrcq/GelJEGXnBFCx3zKoezH3D7YgHDOG7cAm95onnk+z7Ol3c8S7JkwT
	I7fdXcqpM6HOb2BmbUKARz/Z3/uk4uKw6+97T/+svNX37HHYVKAAzT7Evg27c9TxvBuaeYf/h4A
	nUVMRNj0PzN2yCo2G5hTy0vblaM63wH+HzImo=
X-Received: by 2002:a05:620a:4727:b0:8ca:2bab:a0f9 with SMTP id af79cd13be357-8cb8c9dfd2bmr1406786285a.1.1771886702341;
        Mon, 23 Feb 2026 14:45:02 -0800 (PST)
X-Received: by 2002:a05:620a:4727:b0:8ca:2bab:a0f9 with SMTP id af79cd13be357-8cb8c9dfd2bmr1406783685a.1.1771886701837;
        Mon, 23 Feb 2026 14:45:01 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb3e9a2sm1832057e87.55.2026.02.23.14.44.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 14:45:01 -0800 (PST)
Date: Tue, 24 Feb 2026 00:44:58 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <ox7jnqkjo3frhbgpp63sse7ram72obihe4qlbbn4z22wbw4szr@7pzoeecdvsyg>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-4-fe46a9c1a046@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224-qda-firstpost-v1-4-fe46a9c1a046@oss.qualcomm.com>
X-Proofpoint-GUID: xWyUMs11Hx4OQIakdOCM2NixhS_SgcEa
X-Proofpoint-ORIG-GUID: xWyUMs11Hx4OQIakdOCM2NixhS_SgcEa
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=699cd86f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=m81VUDHjpZwfiQc3ckkA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE5NyBTYWx0ZWRfXxAJJVtbyo23I
 bFxf4Nlya1tpLaowpjd48wmManIP0SVN0SMmS8C3GT8Pi18KunZ5HMq1DYTZSVBS3d9J7WGAvat
 18KPumjRtNHiujcMpbK34sWa1x9bc0+mujhaLIcLIoEqyEo3DiBDYzYdVzBUHbX7e7u5LmF4Z96
 +YwcqXuR2hp19RCUdb33sAkdH7sN9SKhhNtmqawDiLb15o9mA87Dfu8HunxydBc6WEbd/XT3Me1
 d/PGpJKOk//Wo5lKgsEf6SXMte1h3YC11Ue1KwoKlNHI4/x+53IgjnQJwh2ZEfDylrueVbNxB7R
 gLohlG14EzAgIMdAK5/Yhi8KJS8RyczlQTrfRCdOz3CiMA366iIclbMYv92qYm3CRN2+BjZIv9z
 mXgLoxKt2Pmd1lwHriTuBYfiybjp4VO8SeXV8PN3GZ+h+mEVxg3pzqdFm/ENmiQfN11W5A6/1eu
 O7MI9guIwEjiXRzjuJw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_05,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230197
X-Spamd-Bar: ---
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SERHRCHBEYLXGKLUOPNRDH3JOXGKRKTI
X-Message-ID-Hash: SERHRCHBEYLXGKLUOPNRDH3JOXGKRKTI
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:55 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 04/18] accel/qda: Add built-in compute CB bus for QDA and integrate with IOMMU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SERHRCHBEYLXGKLUOPNRDH3JOXGKRKTI/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,qualcomm.com:email]
X-Rspamd-Queue-Id: 9443241214D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Feb 24, 2026 at 12:38:58AM +0530, Ekansh Gupta wrote:
> Introduce a built-in compute context-bank (CB) bus used by the Qualcomm
> DSP accelerator (QDA) driver to represent DSP CB devices that require
> IOMMU configuration. This separates the CB bus from the QDA driver and
> allows QDA to remain a loadable module while the bus is always built-in.

Why? What is the actual problem that you are trying to solve?

> 
> A new bool Kconfig symbol DRM_ACCEL_QDA_COMPUTE_BUS is added and is

Don't describe the patch contents. Please.

> selected by the main DRM_ACCEL_QDA driver. The parent accel Makefile is
> updated to descend into the QDA directory for both built-in and module
> builds so that the CB bus is compiled into vmlinux while the driver
> remains modular.
> 
> The CB bus is registered at postcore_initcall() time and is exposed to
> the IOMMU core through iommu_buses[] in the same way as the Tegra
> host1x context-bus. This enables later patches to create CB devices on
> this bus and obtain IOMMU domains for them.

Note, there is nothing QDA-specific in this patch. Please explain, why
the bus is QDA-specific? Can we generalize it?

> 
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  drivers/accel/Makefile              |  1 +
>  drivers/accel/qda/Kconfig           |  5 +++++
>  drivers/accel/qda/Makefile          |  2 ++
>  drivers/accel/qda/qda_compute_bus.c | 23 +++++++++++++++++++++++
>  drivers/iommu/iommu.c               |  4 ++++
>  include/linux/qda_compute_bus.h     | 22 ++++++++++++++++++++++
>  6 files changed, 57 insertions(+)
> 
> diff --git a/drivers/accel/Makefile b/drivers/accel/Makefile
> index 58c08dd5f389..9ed843cd293f 100644
> --- a/drivers/accel/Makefile
> +++ b/drivers/accel/Makefile
> @@ -6,4 +6,5 @@ obj-$(CONFIG_DRM_ACCEL_HABANALABS)	+= habanalabs/
>  obj-$(CONFIG_DRM_ACCEL_IVPU)		+= ivpu/
>  obj-$(CONFIG_DRM_ACCEL_QAIC)		+= qaic/
>  obj-$(CONFIG_DRM_ACCEL_QDA)		+= qda/
> +obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda/
>  obj-$(CONFIG_DRM_ACCEL_ROCKET)		+= rocket/
> \ No newline at end of file
> diff --git a/drivers/accel/qda/Kconfig b/drivers/accel/qda/Kconfig
> index 484d21ff1b55..ef1fa384efbe 100644
> --- a/drivers/accel/qda/Kconfig
> +++ b/drivers/accel/qda/Kconfig
> @@ -3,11 +3,16 @@
>  # Qualcomm DSP accelerator driver
>  #
>  
> +
> +config DRM_ACCEL_QDA_COMPUTE_BUS
> +	bool
> +
>  config DRM_ACCEL_QDA
>  	tristate "Qualcomm DSP accelerator"
>  	depends on DRM_ACCEL
>  	depends on ARCH_QCOM || COMPILE_TEST
>  	depends on RPMSG
> +	select DRM_ACCEL_QDA_COMPUTE_BUS
>  	help
>  	  Enables the DRM-based accelerator driver for Qualcomm's Hexagon DSPs.
>  	  This driver provides a standardized interface for offloading computational
> diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
> index e7f23182589b..242684ef1af7 100644
> --- a/drivers/accel/qda/Makefile
> +++ b/drivers/accel/qda/Makefile
> @@ -8,3 +8,5 @@ obj-$(CONFIG_DRM_ACCEL_QDA)	:= qda.o
>  qda-y := \
>  	qda_drv.o \
>  	qda_rpmsg.o \
> +
> +obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda_compute_bus.o
> diff --git a/drivers/accel/qda/qda_compute_bus.c b/drivers/accel/qda/qda_compute_bus.c
> new file mode 100644
> index 000000000000..1d9c39948fb5
> --- /dev/null
> +++ b/drivers/accel/qda/qda_compute_bus.c
> @@ -0,0 +1,23 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> +#include <linux/device.h>
> +#include <linux/init.h>
> +
> +struct bus_type qda_cb_bus_type = {
> +	.name = "qda-compute-cb",
> +};
> +EXPORT_SYMBOL_GPL(qda_cb_bus_type);
> +
> +static int __init qda_cb_bus_init(void)
> +{
> +	int err;
> +
> +	err = bus_register(&qda_cb_bus_type);
> +	if (err < 0) {
> +		pr_err("qda-compute-cb bus registration failed: %d\n", err);
> +		return err;
> +	}
> +	return 0;
> +}
> +
> +postcore_initcall(qda_cb_bus_init);
> diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
> index 4926a43118e6..5dee912686ee 100644
> --- a/drivers/iommu/iommu.c
> +++ b/drivers/iommu/iommu.c
> @@ -33,6 +33,7 @@
>  #include <trace/events/iommu.h>
>  #include <linux/sched/mm.h>
>  #include <linux/msi.h>
> +#include <linux/qda_compute_bus.h>
>  #include <uapi/linux/iommufd.h>
>  
>  #include "dma-iommu.h"
> @@ -178,6 +179,9 @@ static const struct bus_type * const iommu_buses[] = {
>  #ifdef CONFIG_CDX_BUS
>  	&cdx_bus_type,
>  #endif
> +#ifdef CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS
> +	&qda_cb_bus_type,
> +#endif
>  };
>  
>  /*
> diff --git a/include/linux/qda_compute_bus.h b/include/linux/qda_compute_bus.h
> new file mode 100644
> index 000000000000..807122d84e3f
> --- /dev/null
> +++ b/include/linux/qda_compute_bus.h
> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef __QDA_COMPUTE_BUS_H__
> +#define __QDA_COMPUTE_BUS_H__
> +
> +#include <linux/device.h>
> +
> +/*
> + * Custom bus type for QDA compute context bank (CB) devices
> + *
> + * This bus type is used for manually created CB devices that represent
> + * IOMMU context banks. The custom bus allows proper IOMMU configuration
> + * and device management for these virtual devices.
> + */
> +#ifdef CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS
> +extern struct bus_type qda_cb_bus_type;
> +#endif
> +
> +#endif /* __QDA_COMPUTE_BUS_H__ */
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
