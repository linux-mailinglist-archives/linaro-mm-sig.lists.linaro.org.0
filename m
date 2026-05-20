Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMTUBcLEDWql3AUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:27:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C35158F9A5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:27:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0EC7040986
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 14:27:12 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 66FB54096B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:27:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=nH4BkxUo;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=Tp9i2XMC;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64KE6a22119115
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:27:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UVWE9cDv8dNKqJnEWb+COja9
	5369BrxIeUqGSeAbb1c=; b=nH4BkxUogTtNIAEqilLYHObEFJgMG/D/I6AWiKcL
	gT9NyuhjEGPJjace/hLozjlYcZwbwfFRV91CP0BVqIhyrSuMqAPCIZbA8DN4DmFf
	hPCU2ZDE10kkQJphfYXUm2hHwGa0fgb01ylh3m5ByFd7fO3pbFGfwg78Ei/yjEPx
	bEy7uXL7yQ4/2MmkCCp9OZCLGZw87F4k1zqBS7hN6HbS4XmsbpRN3vEAxPERoMfh
	kyFhQpagYlYoilMeAjBUkXjdv1eabc16L2No76klbeHFWzEMgpHjLZS52rLeiT3E
	83xZGGdUeH7D6rq+10rqZtA2QQj2bvO/QF2MgSdMzvgCqA==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9ee882jg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:27:00 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-575346e50c4so7009185e0c.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 07:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779287219; x=1779892019; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UVWE9cDv8dNKqJnEWb+COja95369BrxIeUqGSeAbb1c=;
        b=Tp9i2XMChWvqLCrIibQz7CpvW670J3+MNq20jQnEgj9vQEhKAr4zKFxT/AvFF2bbAI
         tcQ0tCvIMFLOFqsdKvn8xa5K8R9ErQ/5GjPh8GBGNyNXSpaTnV/UzA6wx8Vf4b1ce3WE
         tP2JbXha7EZraitJTY6l5uaWnjb6csXtBMpM81IxZhEHX7rD7ptIX2ZOaBPIEPpkYTmx
         TQjl6J6oHdsMDSB28ellCZctmApNrIwzv8JIWJQl8Kkgjuk3O3KjFObVqc7Qh1ZT41se
         BQ6s0ITrRhJciWWyfiuwX+1Rvfk3bMein5KG8a31T1vYZ/vCM8yV3cYyUEFQ901ivdpm
         AIAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779287219; x=1779892019;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UVWE9cDv8dNKqJnEWb+COja95369BrxIeUqGSeAbb1c=;
        b=hHjnZr/xuT+XbZJ0Tzu2qTrYZzrZeSqXVA3Ouf8pb2c8ve9BWhDBsXrgTed+HgFWrC
         HGiYhJDgM3+u2jAKoGs97iRbzqKKD+WNLKhU02S2eJRqkk2hbx/9FB8CsGVtz+XWhCdw
         aolWGeSi+dTprMnhxu+WDGYcWUBj3JQJUTODdAgSbukP+r16cj22+Zcu+e9NzBQB3y/m
         +dTgNeyzZEZHai+Zv3K/docDFUvHhQ4PIye7uI9oio/cDnQ0JCinvOBkIRmXAPlvLTRy
         OsDpI7wxHOZ+rlFRI8BhZ/98FvwFS+sLYLoLyx4CdtIzR6UQA1TAUDxhWxUqJ5Ka7YeU
         Owng==
X-Forwarded-Encrypted: i=1; AFNElJ9pPf14SHeMXbMiri+wWokjWKIR3d6UeAFBMVRuq7o+DgdALWODPAi3fQ+Yi92cRiZXOhGA632zCPrafdL0@lists.linaro.org
X-Gm-Message-State: AOJu0YwdLOIlOrESfs3dmIv5RvJcobZPzlYUPkikw41B2VdNFi/wE4WQ
	uDvyUxSubuQ42Q1EK+GrhDBEcO/i7RDajKwQxopL1GC4/JVS5R/srmE6Dwirqv8X2rnMfphJtY3
	jP1dBMZWSjU+SEd0CD1jjSqv81O+S9zulyorl5iwrlFYWk1OZK6fqlsKV+MUFIE4Alk2K/Q==
X-Gm-Gg: Acq92OFlzzQt8svUW8TahtMD8JuaqoHnZlq/4yKB1dOE6UZlWrGLaBW1SrHGkvWum5l
	IkGoDcwAbnrs3cAUzzyAGSbGNBsAIc49EXD86KFR3j0sShtviVLmuRtyesixutPTo8cKnmmQw/t
	Km0UU1SfaKSUr6KQnB1n2LPTBilzeI2QxhnnVZwhA0mV2aFGo/8q4qRMNSBHdjagThIQ5QKTUDp
	xffr4tmGHbdZ16Fx/SfMWfg4BxnxKSe2QWdK38yKX96KEu8iXDpeK0a3uLDZA1WY+KhK7xFrwva
	+00d3toThpOjegqjy42kdqWrfJLfCforQF+XSEyaRugFH91tOXm+HOYuAtIs4sPhjuhi8eWsF3m
	+5qVRvCgPQ/+i3918NSpH9NTtZR6fivXAQOjHbo6u4CrUekyenK3xXCA9q1BYB2m+1NW5L+R3nr
	l8Ul004IvqjQ6wERbGHDg++HyyZlb+o6TjbMs=
X-Received: by 2002:a05:6122:4d0d:b0:56e:e80c:bb25 with SMTP id 71dfb90a1353d-5760c0a673cmr14617896e0c.13.1779287219068;
        Wed, 20 May 2026 07:26:59 -0700 (PDT)
X-Received: by 2002:a05:6122:4d0d:b0:56e:e80c:bb25 with SMTP id 71dfb90a1353d-5760c0a673cmr14617821e0c.13.1779287218313;
        Wed, 20 May 2026 07:26:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a9164c5a28sm4950743e87.61.2026.05.20.07.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 07:26:57 -0700 (PDT)
Date: Wed, 20 May 2026 17:26:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: ekansh.gupta@oss.qualcomm.com
Message-ID: <sbktzorprxvo5625zkqwjgsaj723xtbsgzyypbnbgdbbxdgnnh@do5rprsx4oxr>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-7-b2d984c297f8@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260519-qda-series-v1-7-b2d984c297f8@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: WbPMKhgOdAUdEhT4iA0Vkbu45DVfh5UL
X-Authority-Analysis: v=2.4 cv=e5k2j6p/ c=1 sm=1 tr=0 ts=6a0dc4b4 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=U7MGAyCTa2LO6tN26UQA:9 a=CjuIK1q_8ugA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIwMDE0MSBTYWx0ZWRfX1dc+zuoePAyL
 d0oCeS5D8/OVb6dyYp0ikfWMK0zk3q8MYdSRU4Px8KhLId5Cy4vXkbp4B0qhq0ofcMSuU7fE03o
 1HPR6tWNWkrzz94dtjKre2H67h+BUGpdn7y9Iye5L1t/nWLtq6oHqahzrmEhg16E5azvWQmi2Fv
 +33u8VMGFDvhR6wKZgl6LsX3P0H3yAhfwu4UvsrlsTYzEAi8akV/za/zal643F8szOejGDNlA+/
 30Pp+r9j0sIZajLI5BpaS3C7sFMvS/CUfrzS2xq/TlYFPqPMQFvj/owFzCtvkkOYqZ9En7edfJn
 vzKHCxLlI3oSggmIsCdqJrVDbv4xq2LYN5OcMXPuUAtr7xfmXbolG4WxoKlGVDK6hUNyIH0Bcs/
 r1JbAkG1zWRY/inTxfqt12nNVqzHEVtYrMcIbtMQTEnyvp5DAELrgU5zcivdI6gpD8e6dgacRjn
 N8KNoNFSKI61M+nwn/w==
X-Proofpoint-GUID: WbPMKhgOdAUdEhT4iA0Vkbu45DVfh5UL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605200141
X-Spamd-Bar: ---
Message-ID-Hash: PXS6ACNQ2NXLJPJNB3ZURUE3R2RYWF3U
X-Message-ID-Hash: PXS6ACNQ2NXLJPJNB3ZURUE3R2RYWF3U
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 07/15] accel/qda: Add memory manager for CB devices
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PXS6ACNQ2NXLJPJNB3ZURUE3R2RYWF3U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.138];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 8C35158F9A5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 11:45:57AM +0530, Ekansh Gupta via B4 Relay wrote:
> From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> 
> Introduce the QDA memory manager (qda_memory_manager) to track and
> manage the IOMMU devices that back each compute context bank (CB).
> 
> Each CB device registered on the qda-compute-cb bus is assigned a
> unique ID via an XArray and wrapped in a qda_iommu_device descriptor

Why do you need an XArray? The number of devices is (more or less)
fixed. You can use a normal array, allocated in the probe function after
counting OF children nodes.

> that records the device pointer and its stream ID. This registry
> allows the driver to look up the correct IOMMU domain for a given
> session when mapping DSP buffers.
> 
> The memory manager is initialised in qda_init_device() before CB
> devices are populated and torn down in qda_deinit_device() after they
> are destroyed, ensuring no dangling references remain in the XArray.
> 
> qda_cb.c is extended with qda_cb_setup_device(), which is called
> immediately after a CB device is registered on the bus. It allocates
> a qda_iommu_device, registers it with the memory manager, and stores
> it as the CB device's driver data so that qda_destroy_cb_device() can
> retrieve and unregister it during teardown.
> 
> Assisted-by: Claude:claude-4-6-sonnet
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  drivers/accel/qda/Makefile             |   1 +
>  drivers/accel/qda/qda_cb.c             |  47 ++++++++++++++
>  drivers/accel/qda/qda_drv.c            |  34 ++++++++++
>  drivers/accel/qda/qda_drv.h            |   5 ++
>  drivers/accel/qda/qda_memory_manager.c | 111 +++++++++++++++++++++++++++++++++
>  drivers/accel/qda/qda_memory_manager.h |  49 +++++++++++++++
>  drivers/accel/qda/qda_rpmsg.c          |   7 +++
>  7 files changed, 254 insertions(+)
> 
> diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
> index 143c9e4e789e..701fad5ffb50 100644
> --- a/drivers/accel/qda/Makefile
> +++ b/drivers/accel/qda/Makefile
> @@ -8,6 +8,7 @@ obj-$(CONFIG_DRM_ACCEL_QDA)	:= qda.o
>  qda-y := \
>  	qda_cb.o \
>  	qda_drv.o \
> +	qda_memory_manager.o \
>  	qda_rpmsg.o
>  
>  obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda_compute_bus.o
> diff --git a/drivers/accel/qda/qda_cb.c b/drivers/accel/qda/qda_cb.c
> index 77caf8438c67..6d540bb0ec7b 100644
> --- a/drivers/accel/qda/qda_cb.c
> +++ b/drivers/accel/qda/qda_cb.c
> @@ -8,11 +8,42 @@
>  #include <linux/slab.h>
>  #include <drm/drm_print.h>
>  #include "qda_drv.h"
> +#include "qda_memory_manager.h"
>  #include "qda_cb.h"
>  
> +static int qda_cb_setup_device(struct qda_dev *qdev, struct device *cb_dev, u32 sid)
> +{
> +	struct qda_iommu_device *iommu_dev;
> +	int rc;
> +
> +	drm_dbg_driver(&qdev->drm_dev, "Setting up CB device %s\n", dev_name(cb_dev));
> +
> +	iommu_dev = kzalloc_obj(*iommu_dev);
> +	if (!iommu_dev)
> +		return -ENOMEM;
> +
> +	iommu_dev->dev = cb_dev;
> +	iommu_dev->qdev = qdev;
> +	iommu_dev->sid = sid;
> +
> +	rc = qda_memory_manager_register_device(qdev->iommu_mgr, iommu_dev);
> +	if (rc) {
> +		drm_err(&qdev->drm_dev, "Failed to register IOMMU device: %d\n", rc);
> +		kfree(iommu_dev);
> +		return rc;
> +	}
> +
> +	dev_set_drvdata(cb_dev, iommu_dev);
> +
> +	drm_dbg_driver(&qdev->drm_dev, "CB device setup complete - SID: %u\n", sid);
> +
> +	return 0;
> +}
> +
>  int qda_create_cb_device(struct qda_dev *qdev, struct device_node *cb_node)
>  {
>  	struct device *cb_dev;
> +	int ret;
>  	u32 sid = 0;
>  	char name[64];
>  	struct qda_cb_dev *entry;
> @@ -30,6 +61,13 @@ int qda_create_cb_device(struct qda_dev *qdev, struct device_node *cb_node)
>  		return PTR_ERR(cb_dev);
>  	}
>  
> +	ret = qda_cb_setup_device(qdev, cb_dev, sid);
> +	if (ret) {
> +		drm_err(&qdev->drm_dev, "CB device setup failed: %d\n", ret);
> +		device_unregister(cb_dev);
> +		return ret;
> +	}
> +
>  	entry = kzalloc_obj(*entry);
>  	if (!entry) {
>  		device_unregister(cb_dev);
> @@ -80,6 +118,7 @@ int qda_cb_populate(struct qda_dev *qdev, struct device_node *parent_node)
>  void qda_destroy_cb_device(struct device *cb_dev)
>  {
>  	struct iommu_group *group;
> +	struct qda_iommu_device *iommu_dev;
>  
>  	if (!cb_dev) {
>  		pr_debug("qda: NULL CB device passed to destroy\n");
> @@ -88,6 +127,14 @@ void qda_destroy_cb_device(struct device *cb_dev)
>  
>  	dev_dbg(cb_dev, "Destroying CB device %s\n", dev_name(cb_dev));
>  
> +	iommu_dev = dev_get_drvdata(cb_dev);
> +	if (iommu_dev && iommu_dev->qdev && iommu_dev->qdev->iommu_mgr) {
> +		dev_dbg(cb_dev, "Unregistering IOMMU device for %s\n",
> +			dev_name(cb_dev));
> +		qda_memory_manager_unregister_device(iommu_dev->qdev->iommu_mgr,
> +						     iommu_dev);
> +	}
> +
>  	group = iommu_group_get(cb_dev);
>  	if (group) {
>  		dev_dbg(cb_dev, "Removing %s from IOMMU group\n", dev_name(cb_dev));
> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
> index 6c20d6a2fc47..0ad5d9873d7e 100644
> --- a/drivers/accel/qda/qda_drv.c
> +++ b/drivers/accel/qda/qda_drv.c
> @@ -57,6 +57,40 @@ struct qda_dev *qda_alloc_device(struct device *dev)
>  	return qdev;
>  }
>  
> +static void cleanup_memory_manager(struct qda_dev *qdev)

Prefixes...

> +{
> +	if (qdev->iommu_mgr) {
> +		qda_memory_manager_exit(qdev->iommu_mgr);
> +		kfree(qdev->iommu_mgr);
> +		qdev->iommu_mgr = NULL;
> +	}
> +}
> +
> +static int init_memory_manager(struct qda_dev *qdev)
> +{
> +	qdev->iommu_mgr = kzalloc_obj(*qdev->iommu_mgr);
> +	if (!qdev->iommu_mgr)
> +		return -ENOMEM;
> +
> +	return qda_memory_manager_init(qdev->iommu_mgr);
> +}
> +
> +void qda_deinit_device(struct qda_dev *qdev)
> +{
> +	cleanup_memory_manager(qdev);

Ugh, inline all your one-line wrappers.

> +}
> +
> +int qda_init_device(struct qda_dev *qdev)
> +{
> +	int ret;
> +
> +	ret = init_memory_manager(qdev);
> +	if (ret)
> +		drm_err(&qdev->drm_dev, "Failed to initialize memory manager: %d\n", ret);
> +
> +	return ret;
> +}
> +
>  void qda_unregister_device(struct qda_dev *qdev)
>  {
>  	drm_dev_unregister(&qdev->drm_dev);
> diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
> index 2715f378775d..eb089e586b17 100644
> --- a/drivers/accel/qda/qda_drv.h
> +++ b/drivers/accel/qda/qda_drv.h
> @@ -13,6 +13,7 @@
>  #include <drm/drm_device.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_file.h>
> +#include "qda_memory_manager.h"
>  
>  /* Driver identification */
>  #define QDA_DRIVER_NAME "qda"
> @@ -40,6 +41,8 @@ struct qda_dev {
>  	struct device *dev;
>  	/** @cb_devs: Compute context-bank (CB) child devices */
>  	struct list_head cb_devs;
> +	/** @iommu_mgr: IOMMU/memory manager instance */
> +	struct qda_memory_manager *iommu_mgr;
>  	/** @dsp_name: Name of the DSP domain (e.g. "cdsp", "adsp") */
>  	const char *dsp_name;
>  };
> @@ -59,6 +62,8 @@ static inline struct qda_dev *qda_dev_from_drm(struct drm_device *dev)
>  struct qda_dev *qda_alloc_device(struct device *dev);
>  
>  /* Core device lifecycle */
> +int qda_init_device(struct qda_dev *qdev);
> +void qda_deinit_device(struct qda_dev *qdev);
>  int qda_register_device(struct qda_dev *qdev);
>  void qda_unregister_device(struct qda_dev *qdev);
>  
> diff --git a/drivers/accel/qda/qda_memory_manager.c b/drivers/accel/qda/qda_memory_manager.c
> new file mode 100644
> index 000000000000..00a9c0ae4224
> --- /dev/null
> +++ b/drivers/accel/qda/qda_memory_manager.c
> @@ -0,0 +1,111 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> +
> +#include <linux/refcount.h>
> +#include <linux/slab.h>
> +#include <linux/spinlock.h>
> +#include <linux/xarray.h>
> +#include <drm/drm_file.h>
> +#include "qda_drv.h"
> +#include "qda_memory_manager.h"
> +
> +static void cleanup_all_memory_devices(struct qda_memory_manager *mem_mgr)
> +{
> +	unsigned long index;
> +	void *entry;
> +
> +	pr_debug("qda: Starting cleanup of all memory devices\n");

pr_debug is a third way to debug. Stop it, please.

> +
> +	xa_for_each(&mem_mgr->device_xa, index, entry) {
> +		struct qda_iommu_device *iommu_dev = entry;
> +
> +		pr_debug("qda: Cleaning up device id=%lu\n", index);
> +
> +		xa_erase(&mem_mgr->device_xa, index);
> +		kfree(iommu_dev);
> +	}
> +
> +	pr_debug("qda: Completed cleanup of all memory devices\n");
> +}
> +

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
