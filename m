Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMZxKNAT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:52:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 48532412113
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:52:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1994844BB3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:52:31 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 9B5EF401B0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:16:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=jqnUO0Vn;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="Q7DYY7l/";
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NIYUZk561407
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:16:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7va14BLOKUzsh75bZFAJzVRf
	4H4OIi1hkRGWKQdCG8M=; b=jqnUO0VnxouOlpzyWXInGXYr5DzwjgLFsroPbF5L
	Y0uoJUmnyV5M2ebDEF9jFaAzcqGMmDXMi2Ohsu20iMPwfpDmIdUTMOFAAgDKtBQt
	v/ts8dQ60FWd1poWlN+DFr+gn3yGafMurNmYJIw92t7RCQH285CcZgQv5cez/sT8
	VWnJ85O2ICGQg4ZkIKgufVgnrINPgeBw3GU9yWrUuMHZ/JJlCxlQyWwen6wjJ66E
	eQ7M9Md1c7UA5Rph+FUvX7GTWrN00BKrospt32O2f2oD5UQ3RZaM+5hbAwg3nyIJ
	/j3XInLOdijzH51ateYwHoXJQmd0zI1kbwm+bRoSxuI0Gg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8ra1km-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:16:44 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-896fa0fcf27so627072126d6.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 14:16:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771885003; x=1772489803; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7va14BLOKUzsh75bZFAJzVRf4H4OIi1hkRGWKQdCG8M=;
        b=Q7DYY7l/8bBm7koRVsWYqM4/YTzc98y5R5W9AjX2FYKmR+RPfTENh0yBfXN/bkiyMc
         8qdGsELgOwwpj8+i8Nkt9+e2vOLePmBhIaDktg05RqM+vl99KeXxQLE0UAOkNkZfdGI3
         8I0+RbQkGeSTcezYgzUD6Qht1cfBzcwvJJUllILjTQEpmZuUPymbm9jQ6WpVauk/skBx
         IN9X7gmQJCx2Bo5mpF/WnQ13HmJ0VBXdou5DH7YjJUTO3NagsMRJEqKcDKOBhguC9EYw
         1JOx8uzX+3NivtpSdr2l85H9TZLgs3ZCwDJ/17VhLpeD1sDAG6Z3/P5QMUeQvgXiI/mu
         utkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771885003; x=1772489803;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7va14BLOKUzsh75bZFAJzVRf4H4OIi1hkRGWKQdCG8M=;
        b=B9zJYawctMuREdBuusUV/cHi8EZL2u7hUui1Nfvfr6tepPCW4cC0M7rDfkALbCYP2D
         fUsbFcC37EhHZx6S8ETDaLlxSccI/cwQWIftUYyxSBQGIw5NS6f1j8S3ZKx6vx+wbgp4
         42AC9X+MV5kk26O0/G1AkxMzeYf7grbucY3v3OTuh5/PTVrNGYvAEr9sEOFWdTqNOnSw
         +JtmHJVnEd8I0KTfpLL5nzHYlv1BcA4pvwBJ0oZj8MHgG6BIFTjCSwnlUMeOKmGtTg4u
         ux2/PO1Zll4tkJZSTI6j3KhI44L8kIzW//WEIntA6UYD/0EEjhZ3Ui1ZSOgbPiQoGSM/
         Z9IQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqhf1sWQdhX/DtZjobtKuT7XD/Wn9U2+Xrwzj/ZsfqM4Grn1mULJuAogasV0s2dMIsT83YDObyWzZ8MLb3@lists.linaro.org
X-Gm-Message-State: AOJu0Yxi04y8+GeqlU8VhnyWilmlIZl/lt01eVN/wuBIZcAv2Rx1zRab
	SOOhkbQd4C7ULk2da207M+bqFZCyi41mN0PLzWj2kqOmhQVbd0po06QSf6S3lGcWKQ4aBo9SL2j
	dyjIGtL8HCdIoePOsDHIn+NSJuAJ0KAFl6ABfp6dccQa9Ri1AnhQRLlYzCZhL/QkJ4Gd6bg==
X-Gm-Gg: AZuq6aLcvr8MTk+Bgf0IIJbgrFMU/Sy/5Wi1xpHPd8oVUk8u/SM/XQs/hr4kgVLlJhB
	igb4OaYmoUhwkQhuxh5WZGNQUYBW3Ir1Zy8pX6kl5subnHHiyMcoyjC+yngsLtH6llOchvJSNru
	PYwQ2HpN3X4YzDZqteU+Gf154lNxzAKusTSbwGEXJnQ1OJV6HiA3SmyigATeX3ZIEYnzgN+UW+s
	oILpr+dzM2m/Ez42Kc3zTJ/8iRIf1rpsWLvxmLyRSknsD2NfIoOoGfyfDi6tjvD2+rQauhJnvtv
	LJKoVjj/D0LyiUe95RdiBDFo6bIvXcZXErBgTHlzOwIuKeUR6WpvwzLf5w7u68LyTL5Z6UFTOA6
	1t7c/qrM1RR04S8VjAvqNGzzH9n0Ea1IDjref6rM+BGfkPDXk0FUjg2YFzW9egKQGzFCKLRyjfN
	qoOmzuoXHgxWQO2+MVs1mWlrIoUBcU095FZmU=
X-Received: by 2002:a05:620a:4482:b0:8c6:f414:3ba8 with SMTP id af79cd13be357-8cb8ca65b37mr1186745985a.49.1771885003314;
        Mon, 23 Feb 2026 14:16:43 -0800 (PST)
X-Received: by 2002:a05:620a:4482:b0:8c6:f414:3ba8 with SMTP id af79cd13be357-8cb8ca65b37mr1186742585a.49.1771885002701;
        Mon, 23 Feb 2026 14:16:42 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb3eaa4sm1837408e87.46.2026.02.23.14.16.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 14:16:41 -0800 (PST)
Date: Tue, 24 Feb 2026 00:16:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <jjj5b2says6y2sk4lokcxslzcwlsg3gj7rme34lqmhufqc7eam@x256mqlsuvet>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-7-fe46a9c1a046@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224-qda-firstpost-v1-7-fe46a9c1a046@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: eEuz1tNLqbkvFiwalQtnghbTlleFlaYv
X-Authority-Analysis: v=2.4 cv=V7twEOni c=1 sm=1 tr=0 ts=699cd1cc cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=2N0wBCc5_LywspELBZUA:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE5NCBTYWx0ZWRfX9/PEjVQMRc4L
 psqaWmIcn0lm3agwukCQ0udZ5QymgPJryHCRngVON8t6i/KHC7qyHAnlVIeT1yI9dMyaLML0zs+
 Vb4noIT0V6bSWVYUcWlDZKV8NdhcVK9kvN0p0a+nchhIG+O6M75Z4/uHtwW4MzJL5xe3rJJig2u
 I4ytiTjqIzksf6ffHkd8wMRXwKp1kkKSiCK7c8GLP8IeT96zA3TqZ26cZby2tFkv2i3EXqjlxp+
 D4xC2RQMyeXVlr3hv4xOOIPnuq3vdRzlYDiNuDEQ8Y2SPIse2EmGP4XQXB2RJ1AvmoaLTyTdLCw
 ctnU/hvN08J0pZtG/IR01Q7igsfibY92Kbx9ifXlismf3jFrHnglky/3v/MBdsKvSPg+v1G7npc
 kF5f4uVEMJakHIp6WdtjNVXwNInggnnfLiTOBohXfp/4Qf9NLSCu738aYp04/jiqsGjNTbaWtkZ
 C50cDfxxNfxPW+pvyiw==
X-Proofpoint-GUID: eEuz1tNLqbkvFiwalQtnghbTlleFlaYv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_05,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230194
X-Spamd-Bar: ---
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RANFZFH2LIA36GJSZ2IHJTJM7FEPSS45
X-Message-ID-Hash: RANFZFH2LIA36GJSZ2IHJTJM7FEPSS45
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:51 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 07/18] accel/qda: Add DRM accel device registration for QDA driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RANFZFH2LIA36GJSZ2IHJTJM7FEPSS45/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 48532412113
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Feb 24, 2026 at 12:39:01AM +0530, Ekansh Gupta wrote:
> Add DRM accel integration for the QDA DSP accelerator driver. A new
> qda_drm_priv structure is introduced to hold per-device DRM state,
> including a pointer to the memory manager and the parent qda_dev
> instance. The driver now allocates a drm_device, initializes
> driver-private state, and registers the device via the DRM accel
> infrastructure.
> 
> qda_register_device() performs allocation and registration of the DRM
> device, while qda_unregister_device() handles device teardown and
> releases references using drm_dev_unregister() and drm_dev_put().
> Initialization and teardown paths are updated so DRM resources are
> allocated after IOMMU/memory-manager setup and cleaned during RPMsg
> remove.
> 
> This patch lays the foundation for adding GEM buffer support and IOCTL
> handling in later patches as part of the compute accelerator interface.
> 
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  drivers/accel/qda/qda_drv.c   | 103 ++++++++++++++++++++++++++++++++++++++++++
>  drivers/accel/qda/qda_drv.h   |  33 +++++++++++++-
>  drivers/accel/qda/qda_rpmsg.c |   8 ++++
>  3 files changed, 142 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
> index 69132737f964..a9113ec78fa2 100644
> --- a/drivers/accel/qda/qda_drv.c
> +++ b/drivers/accel/qda/qda_drv.c
> @@ -4,9 +4,31 @@
>  #include <linux/kernel.h>
>  #include <linux/atomic.h>
>  #include <linux/slab.h>
> +#include <drm/drm_accel.h>
> +#include <drm/drm_drv.h>
> +#include <drm/drm_file.h>
> +#include <drm/drm_gem.h>
> +#include <drm/drm_ioctl.h>
>  #include "qda_drv.h"
>  #include "qda_rpmsg.h"
>  
> +DEFINE_DRM_ACCEL_FOPS(qda_accel_fops);
> +
> +static struct drm_driver qda_drm_driver = {
> +	.driver_features = DRIVER_COMPUTE_ACCEL,
> +	.fops			= &qda_accel_fops,

Strange indentation in the middle. Please drop it.

> +	.name = DRIVER_NAME,
> +	.desc = "Qualcomm DSP Accelerator Driver",
> +};
> +
> +static void cleanup_drm_private(struct qda_dev *qdev)
> +{
> +	if (qdev->drm_priv) {
> +		qda_dbg(qdev, "Cleaning up DRM private data\n");
> +		kfree(qdev->drm_priv);
> +	}
> +}
> +
>  static void cleanup_iommu_manager(struct qda_dev *qdev)
>  {
>  	if (qdev->iommu_mgr) {
> @@ -24,6 +46,7 @@ static void cleanup_device_resources(struct qda_dev *qdev)
>  
>  void qda_deinit_device(struct qda_dev *qdev)
>  {
> +	cleanup_drm_private(qdev);
>  	cleanup_iommu_manager(qdev);
>  	cleanup_device_resources(qdev);
>  }
> @@ -59,6 +82,18 @@ static int init_memory_manager(struct qda_dev *qdev)
>  	return 0;
>  }
>  
> +static int init_drm_private(struct qda_dev *qdev)
> +{
> +	qda_dbg(qdev, "Initializing DRM private data\n");
> +
> +	qdev->drm_priv = kzalloc_obj(*qdev->drm_priv, GFP_KERNEL);
> +	if (!qdev->drm_priv)
> +		return -ENOMEM;
> +
> +	qda_dbg(qdev, "DRM private data initialized successfully\n");
> +	return 0;
> +}
> +
>  int qda_init_device(struct qda_dev *qdev)
>  {
>  	int ret;
> @@ -71,14 +106,82 @@ int qda_init_device(struct qda_dev *qdev)
>  		goto err_cleanup_resources;
>  	}
>  
> +	ret = init_drm_private(qdev);
> +	if (ret) {
> +		qda_err(qdev, "DRM private data initialization failed: %d\n", ret);
> +		goto err_cleanup_iommu;
> +	}
> +
>  	qda_dbg(qdev, "QDA device initialized successfully\n");
>  	return 0;
>  
> +err_cleanup_iommu:
> +	cleanup_iommu_manager(qdev);
>  err_cleanup_resources:
>  	cleanup_device_resources(qdev);
>  	return ret;
>  }
>  
> +static int setup_and_register_drm_device(struct qda_dev *qdev)
> +{
> +	struct drm_device *ddev;
> +	int ret;
> +
> +	qda_dbg(qdev, "Setting up and registering DRM device\n");
> +
> +	ddev = drm_dev_alloc(&qda_drm_driver, qdev->dev);

devm_drm_dev_alloc() please. Move this patch to the front of the series,
making everything else depend on the allocated data structure.

> +	if (IS_ERR(ddev)) {
> +		ret = PTR_ERR(ddev);
> +		qda_err(qdev, "Failed to allocate DRM device: %d\n", ret);
> +		return ret;
> +	}
> +
> +	qdev->drm_priv->drm_dev = ddev;
> +	qdev->drm_priv->iommu_mgr = qdev->iommu_mgr;
> +	qdev->drm_priv->qdev = qdev;
> +
> +	ddev->dev_private = qdev->drm_priv;
> +	qdev->drm_dev = ddev;
> +
> +	ret = drm_dev_register(ddev, 0);
> +	if (ret) {
> +		qda_err(qdev, "Failed to register DRM device: %d\n", ret);
> +		drm_dev_put(ddev);
> +		return ret;
> +	}
> +
> +	qda_dbg(qdev, "DRM device registered successfully\n");
> +	return 0;
> +}
> +
> +int qda_register_device(struct qda_dev *qdev)
> +{
> +	int ret;
> +
> +	ret = setup_and_register_drm_device(qdev);
> +	if (ret) {
> +		qda_err(qdev, "DRM device setup failed: %d\n", ret);
> +		return ret;
> +	}
> +
> +	qda_dbg(qdev, "QDA device registered successfully\n");
> +	return 0;
> +}
> +
> +void qda_unregister_device(struct qda_dev *qdev)
> +{
> +	qda_info(qdev, "Unregistering QDA device\n");
> +
> +	if (qdev->drm_dev) {
> +		qda_dbg(qdev, "Unregistering DRM device\n");
> +		drm_dev_unregister(qdev->drm_dev);
> +		drm_dev_put(qdev->drm_dev);
> +		qdev->drm_dev = NULL;
> +	}
> +
> +	qda_dbg(qdev, "QDA device unregistered successfully\n");
> +}
> +
>  static int __init qda_core_init(void)
>  {
>  	int ret;
> diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
> index 2cb97e4eafbf..2b80401a3741 100644
> --- a/drivers/accel/qda/qda_drv.h
> +++ b/drivers/accel/qda/qda_drv.h
> @@ -11,13 +11,35 @@
>  #include <linux/mutex.h>
>  #include <linux/rpmsg.h>
>  #include <linux/xarray.h>
> +#include <drm/drm_drv.h>
> +#include <drm/drm_file.h>
> +#include <drm/drm_device.h>
> +#include <drm/drm_accel.h>
>  #include "qda_memory_manager.h"
>  
>  /* Driver identification */
>  #define DRIVER_NAME "qda"
>  
> +/**
> + * struct qda_drm_priv - DRM device private data for QDA device
> + *
> + * This structure serves as the DRM device private data (stored in dev_private),
> + * bridging the DRM device context with the QDA device and providing access to
> + * shared resources like the memory manager during buffer operations.
> + */
> +struct qda_drm_priv {

Shared between what and what? Why do you need a separate structure
instead of using qda_dev?

> +	/* DRM device structure */
> +	struct drm_device *drm_dev;
> +	/* Global memory/IOMMU manager */
> +	struct qda_memory_manager *iommu_mgr;
> +	/* Back-pointer to qda_dev */
> +	struct qda_dev *qdev;
> +};
> +
>  /* struct qda_dev - Main device structure for QDA driver */
>  struct qda_dev {
> +	/* DRM device for accelerator interface */
> +	struct drm_device *drm_dev;

Drop the pointer here.

>  	/* RPMsg device for communication with remote processor */
>  	struct rpmsg_device *rpdev;
>  	/* Underlying device structure */
> @@ -26,6 +48,8 @@ struct qda_dev {
>  	struct mutex lock;
>  	/* IOMMU/memory manager */
>  	struct qda_memory_manager *iommu_mgr;
> +	/* DRM device private data */
> +	struct qda_drm_priv *drm_priv;
>  	/* Flag indicating device removal in progress */
>  	atomic_t removing;
>  	/* Name of the DSP (e.g., "cdsp", "adsp") */
> @@ -39,8 +63,8 @@ struct qda_dev {
>   * @qdev: QDA device structure
>   *
>   * Returns the most appropriate device structure for logging messages.
> - * Prefers qdev->dev, or returns NULL if the device is being removed
> - * or invalid.
> + * Prefers qdev->dev, falls back to qdev->drm_dev->dev, or returns NULL
> + * if the device is being removed or invalid.
>   */
>  static inline struct device *qda_get_log_device(struct qda_dev *qdev)
>  {
> @@ -50,6 +74,9 @@ static inline struct device *qda_get_log_device(struct qda_dev *qdev)
>  	if (qdev->dev)
>  		return qdev->dev;
>  
> +	if (qdev->drm_dev)
> +		return qdev->drm_dev->dev;
> +
>  	return NULL;
>  }
>  
> @@ -93,5 +120,7 @@ static inline struct device *qda_get_log_device(struct qda_dev *qdev)
>   */
>  int qda_init_device(struct qda_dev *qdev);
>  void qda_deinit_device(struct qda_dev *qdev);
> +int qda_register_device(struct qda_dev *qdev);
> +void qda_unregister_device(struct qda_dev *qdev);
>  
>  #endif /* __QDA_DRV_H__ */
> diff --git a/drivers/accel/qda/qda_rpmsg.c b/drivers/accel/qda/qda_rpmsg.c
> index 5a57384de6a2..b2b44b4d3ca8 100644
> --- a/drivers/accel/qda/qda_rpmsg.c
> +++ b/drivers/accel/qda/qda_rpmsg.c
> @@ -80,6 +80,7 @@ static void qda_rpmsg_remove(struct rpmsg_device *rpdev)
>  	qdev->rpdev = NULL;
>  	mutex_unlock(&qdev->lock);
>  
> +	qda_unregister_device(qdev);
>  	qda_unpopulate_child_devices(qdev);
>  	qda_deinit_device(qdev);
>  
> @@ -123,6 +124,13 @@ static int qda_rpmsg_probe(struct rpmsg_device *rpdev)
>  		return ret;
>  	}
>  
> +	ret = qda_register_device(qdev);
> +	if (ret) {
> +		qda_deinit_device(qdev);
> +		qda_unpopulate_child_devices(qdev);
> +		return ret;
> +	}
> +
>  	qda_info(qdev, "QDA RPMsg probe completed successfully for %s\n", qdev->dsp_name);
>  	return 0;
>  }
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
