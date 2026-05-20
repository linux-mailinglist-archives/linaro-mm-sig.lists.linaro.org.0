Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cC4zJALEDWql3AUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:24:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5E158F84A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:24:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E955640977
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 14:24:00 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id B1CD340971
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:23:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="LgmR/z7d";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=fGaumHKq;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64KE6djQ119201
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:23:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zZgC57Ii0BTYgfnbECyQYyWw
	TDZMq6Ouh/2/CXADmS0=; b=LgmR/z7dVuueTtWW/lppz/vir7A6gg1VwtnB751Y
	GfD0zhBwFbr1SUGpI/3RkOoQSNDjKHEQ3pfs9fLv9hJ9+iFv8/PQCxgjXhLDa7ow
	lnc/RkTazKRZcdyuyeb/WWhP3u/jY2H9j7snh6dhPT12XVJ4Rn5pMeTC7L/AjFd3
	lsj/FDUtPQtcDSqq0koLghczP3GbuwktTDPdgs0plONjD7a63QMxif7NKXB3KOKr
	eQw2ZRnKjJg0Co03zsPrJr9ol+oz+fRHK+OWA45z7y6t5Wpqog8+hqyjzZm3VeLX
	rgQpG76x9VGlTJgnpqpypUmdajaL0w4aNCEXQRmdFdOmNA==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9ee88251-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:23:48 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5752402f55aso4110520e0c.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 07:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779287027; x=1779891827; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zZgC57Ii0BTYgfnbECyQYyWwTDZMq6Ouh/2/CXADmS0=;
        b=fGaumHKqHWWgWxs4KI0l406F5uptFoYRDpcsw22CGLbK0yduxr6R9+pM9K1tVl9b9Q
         nqfwuwnec5V/3Pvxx0VHhBuoky2SbPuD2F4u0VwsmMJqkrYLIViovmJyQOt313HZTqGY
         flJDc6U26cvC7Fkn2DlrpZJCTsZjpko06LZm+hfw7pe9u4jYsRGX4wS33J7MAHh1WNmJ
         OzDsIONNSCBOdHqsaWXVwGSwmImT8l3zyVvfwLKePlbE+8JDgUCFfw79y91q460xFiEl
         v2y2BwqvJHXatyNXOb2o7w9tFGkTnqbbjdO3cAOA7EX1LUHtMvKoNQ1KBW1Y2oDGpHn6
         3ncw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779287027; x=1779891827;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zZgC57Ii0BTYgfnbECyQYyWwTDZMq6Ouh/2/CXADmS0=;
        b=ZdnRch43vyQ+gPTd0MPY/MBQQaAmZVqjdY1x06g9ANCflCx+JXQ2m5evBBanq03odj
         9tjU59H60PUMW3m5iL3vaaR57C33PTqN4tSFbt2+NvqLsSdGMd+1fqDVYeWek8MSEhhN
         M4HcZ3uuYIEMYgkNxQ5OW81EU2Re3wja3vm+16yz5W/VVnwBklsuc/Z5cPbNEI8Pld0n
         nKr15URU3/DrKmRfop5FKz+KYIbYa/e+EVXZTtLIPNBvM0n4Q4NwlpiecQznDOrc/zLJ
         oTBZkzZ0XNrwSA1DTJ7sXoFNXndEFAp1qCM/d5JazMpBCXGRxoIVoDmlMeIkhk0PhX4g
         6h5Q==
X-Forwarded-Encrypted: i=1; AFNElJ8hEXGdzX8Mt/N83xxoHpq7SOB7OK6vdWXt6q4QJtitA51YAozUhhZBnS7AvFHpgM+SpWyvVCQcoaKZoiA3@lists.linaro.org
X-Gm-Message-State: AOJu0YxR/T626LSSZJfmby5ac8c64ADUOglKyYCFGG72A8gBQXENTqyB
	6Ww49WfemJQG3gGOMmPjeDO977/2rHSdhghDrcIguR5Y7a/vkP9016ONian/bKY/xQ6IyGwKkh6
	HfetRVFT/9k0wvrlTjAP7nA2+PJSCZzsPFEpdWK6RfOvH/rcEEi9p7en3D/kpw6n9Ws9jCA==
X-Gm-Gg: Acq92OHbT5rSyJwSd6hJYlyVz/BESrAhhu3L3CgPXxsc2CVaQbpUyXAlighHnoJ3Ibn
	+5JrDqbzcZZIi4QIscDp/Rmfxb+VwdPuG15UM1vJI9XAmx/VR2FJJWpQNReb5hqft3G7hBOdpO0
	8yoQM1rPv/5mpGCAfdfgxvZMSH9YsxRFyE5qPkR+JZl1M6e9ggpFRxgNLw0IYYMBmIs78n3wxhx
	cG5bf+dvtD+wc3ARt/LeutK2KfuLh/jLAAUA/KIc5IjNDZbdXpLMGQpXX8Idq1jxZnN+FqK3RXF
	9kN5zFhh5N/KgtR43JZLiUv7oFxn84DL6ojhnVwB90BeASC8AnalksIDAIpaAVVveaPhBZUDkGV
	feKZRETk7Hw3RIByfX05DH9S/vGPPcFv6tJHZ/GGghTd5ElOfJsahtcQma+UcRyoKTgJRbg5H9K
	jaJCePx6BylTtxecs+LvQD/tKMAH6294JwXuvQrsnDhzS0Ig==
X-Received: by 2002:a05:6122:920:b0:56e:f071:d4ef with SMTP id 71dfb90a1353d-5760c0347e0mr11445804e0c.8.1779287026857;
        Wed, 20 May 2026 07:23:46 -0700 (PDT)
X-Received: by 2002:a05:6122:920:b0:56e:f071:d4ef with SMTP id 71dfb90a1353d-5760c0347e0mr11445742e0c.8.1779287026305;
        Wed, 20 May 2026 07:23:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a9164cf080sm4955924e87.74.2026.05.20.07.23.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 07:23:45 -0700 (PDT)
Date: Wed, 20 May 2026 17:23:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: ekansh.gupta@oss.qualcomm.com
Message-ID: <f527lflctqyqjrotd2qerlx4oikg6st6u2seqsjw6u5krkqrab@uhw33gnkp5c7>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-6-b2d984c297f8@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260519-qda-series-v1-6-b2d984c297f8@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Rm2wtx3vZXEgDkSXQCv7Mzp6lFGsCotw
X-Authority-Analysis: v=2.4 cv=e5k2j6p/ c=1 sm=1 tr=0 ts=6a0dc3f4 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=R2qd4bXIq2Q-l4e3V4sA:9 a=CjuIK1q_8ugA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIwMDE0MCBTYWx0ZWRfX0AUeiurd80cJ
 IH6/6G0W9EfZXQZKe+ckZq9qjDgnkUdhKauS7qNoLTBB/JH/sTsD4fPm+yh17PS9LRCGIm0jR1i
 MJazAWmZEUp/WrmWm8dRJI1ujnhEydAiBVIxudLrIgu1CNsGAXpbEYLj92nAhPE+RKRPdzz4Jmn
 nzOk2qBOiDeEcXPgxRsQSmiReqjsojM/+ZRshZbqQ/so1UmIcFx0Dm6bF59bQ/QtzDpv78TS5j5
 vCL1LThDE8Yn++3Viku1bwVIMDORm7Aj7838kpQ7yPgVmiHTJ9NMr1L6cI4foKh88zUUk/cwkK+
 FYDjM3ip2IuEW2NiUh5NkTEUrgnwjzU4kZDfangHHVxpOh4EtUwZghQhKpgzDoz/RHil5ZsXr0o
 FTrtI3qc4/vC8zhPfY/hpis6EvTqcNlI05B0Pcw9A+IpF2o/iT/VFnmC9pa0dIOfbUX0acLatjs
 ISkw+MxpEOtT5SozGIw==
X-Proofpoint-GUID: Rm2wtx3vZXEgDkSXQCv7Mzp6lFGsCotw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605200140
X-Spamd-Bar: ---
Message-ID-Hash: BFHML226GNFTB4JHLMUOPKDCA3RYGLKJ
X-Message-ID-Hash: BFHML226GNFTB4JHLMUOPKDCA3RYGLKJ
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 06/15] accel/qda: Create compute context bank devices on QDA compute bus
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BFHML226GNFTB4JHLMUOPKDCA3RYGLKJ/>
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	NEURAL_HAM(-0.00)[-0.104];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,qualcomm.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 0B5E158F84A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 11:45:56AM +0530, Ekansh Gupta via B4 Relay wrote:
> From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> 
> Introduce the CB (compute context bank) device management layer for the
> QDA driver. Each DSP domain node in the device tree may contain child
> nodes with compatible "qcom,fastrpc-compute-cb", each representing one
> IOMMU context bank. The driver enumerates those child nodes during
> RPMsg probe and creates a corresponding device on the qda-compute-cb
> bus for each one.
> 
> The CB devices are created via create_qda_cb_device(), which registers
> them on the qda-compute-cb bus so that the IOMMU subsystem assigns each
> device its own IOMMU domain, enabling per-session address space
> isolation for DSP buffer mapping.
> 
> The new qda_cb.c file provides two functions:
> 
>   qda_create_cb_device()
>     Reads the "reg" property from the DT child node to obtain the
>     stream ID, constructs a unique device name of the form
>     "qda-cb-<dsp>-<sid>", and registers the device on the compute bus.
>     A qda_cb_dev entry is allocated and appended to qdev->cb_devs so
>     that the list can be walked during teardown.
> 
>   qda_destroy_cb_device()
>     Removes the device from its IOMMU group before calling
>     device_unregister(), ensuring the IOMMU domain is released cleanly.
> 
> CB devices are populated before the DRM device is registered and
> destroyed before it is unplugged, so no DRM operation can race with
> CB teardown. On probe failure after population, qda_cb_unpopulate()
> is called to clean up any CBs that were successfully created before
> the error.
> 
> Assisted-by: Claude:claude-4-6-sonnet
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  drivers/accel/qda/Makefile    |  1 +
>  drivers/accel/qda/qda_cb.c    | 99 +++++++++++++++++++++++++++++++++++++++++++
>  drivers/accel/qda/qda_cb.h    | 32 ++++++++++++++
>  drivers/accel/qda/qda_drv.c   |  1 +
>  drivers/accel/qda/qda_drv.h   |  3 ++
>  drivers/accel/qda/qda_rpmsg.c | 12 +++++-
>  6 files changed, 147 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
> index 424176f652a5..143c9e4e789e 100644
> --- a/drivers/accel/qda/Makefile
> +++ b/drivers/accel/qda/Makefile
> @@ -6,6 +6,7 @@
>  obj-$(CONFIG_DRM_ACCEL_QDA)	:= qda.o
>  
>  qda-y := \
> +	qda_cb.o \
>  	qda_drv.o \
>  	qda_rpmsg.o
>  
> diff --git a/drivers/accel/qda/qda_cb.c b/drivers/accel/qda/qda_cb.c
> new file mode 100644
> index 000000000000..77caf8438c67
> --- /dev/null
> +++ b/drivers/accel/qda/qda_cb.c
> @@ -0,0 +1,99 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> +#include <linux/dma-mapping.h>
> +#include <linux/device.h>
> +#include <linux/of.h>
> +#include <linux/iommu.h>
> +#include <linux/qda_compute_bus.h>
> +#include <linux/slab.h>
> +#include <drm/drm_print.h>
> +#include "qda_drv.h"
> +#include "qda_cb.h"
> +
> +int qda_create_cb_device(struct qda_dev *qdev, struct device_node *cb_node)
> +{
> +	struct device *cb_dev;
> +	u32 sid = 0;
> +	char name[64];
> +	struct qda_cb_dev *entry;
> +
> +	drm_dbg_driver(&qdev->drm_dev, "Creating CB device for node: %s\n", cb_node->name);
> +
> +	of_property_read_u32(cb_node, "reg", &sid);
> +
> +	snprintf(name, sizeof(name), "qda-cb-%s-%u", qdev->dsp_name, sid);
> +
> +	cb_dev = create_qda_cb_device(qdev->dev, name, DMA_BIT_MASK(32), cb_node);

Wrong prefix. Pass the name format and the params to this function. Use
kasprintf in it.

> +	if (IS_ERR(cb_dev)) {
> +		drm_err(&qdev->drm_dev, "Failed to create CB device for SID %u: %ld\n",
> +			sid, PTR_ERR(cb_dev));
> +		return PTR_ERR(cb_dev);
> +	}
> +
> +	entry = kzalloc_obj(*entry);
> +	if (!entry) {
> +		device_unregister(cb_dev);
> +		return -ENOMEM;
> +	}
> +
> +	entry->dev = cb_dev;
> +	list_add_tail(&entry->node, &qdev->cb_devs);
> +
> +	drm_dbg_driver(&qdev->drm_dev, "Successfully created CB device for SID %u\n", sid);
> +	return 0;
> +}
> +
> +void qda_cb_unpopulate(struct qda_dev *qdev)
> +{
> +	struct qda_cb_dev *entry, *tmp;
> +
> +	list_for_each_entry_safe(entry, tmp, &qdev->cb_devs, node) {
> +		list_del(&entry->node);
> +		qda_destroy_cb_device(entry->dev);
> +		kfree(entry);
> +	}
> +}
> +
> +int qda_cb_populate(struct qda_dev *qdev, struct device_node *parent_node)
> +{
> +	struct device_node *child;
> +	int count = 0, success = 0;
> +
> +	for_each_child_of_node(parent_node, child) {
> +		if (of_device_is_compatible(child, "qcom,fastrpc-compute-cb")) {
> +			count++;
> +			if (qda_create_cb_device(qdev, child) == 0) {
> +				success++;
> +				dev_dbg(qdev->dev, "Created CB device for node: %s\n",
> +					child->name);

Stop counting successes.

> +			} else {
> +				dev_err(qdev->dev, "Failed to create CB device for: %s\n",
> +					child->name);

Unwind, return error.

> +			}
> +		}
> +	}
> +	if (count == 0)
> +		return 0;
> +	return success > 0 ? 0 : -ENODEV;
> +}
> +
> +void qda_destroy_cb_device(struct device *cb_dev)
> +{
> +	struct iommu_group *group;
> +
> +	if (!cb_dev) {

How can it be?

> +		pr_debug("qda: NULL CB device passed to destroy\n");
> +		return;
> +	}
> +
> +	dev_dbg(cb_dev, "Destroying CB device %s\n", dev_name(cb_dev));
> +
> +	group = iommu_group_get(cb_dev);
> +	if (group) {
> +		dev_dbg(cb_dev, "Removing %s from IOMMU group\n", dev_name(cb_dev));

Be uniform. It's either drm_dbg_foo() or dev_dbg() all over the place.
Don't mix them.

> +		iommu_group_remove_device(cb_dev);
> +		iommu_group_put(group);
> +	}
> +
> +	device_unregister(cb_dev);
> +}
> @@ -59,9 +61,17 @@ static int qda_rpmsg_probe(struct rpmsg_device *rpdev)
>  	}
>  	qdev->dsp_name = label;
>  
> +	ret = qda_cb_populate(qdev, rpdev->dev.of_node);
> +	if (ret) {
> +		dev_err(qdev->dev, "Failed to populate child devices: %d\n", ret);
> +		return ret;
> +	}
> +
>  	ret = qda_register_device(qdev);
> -	if (ret)
> +	if (ret) {
> +		qda_cb_unpopulate(qdev);
>  		return ret;

Unwinding registration?

> +	}
>  
>  	drm_info(&qdev->drm_dev, "QDA RPMsg probe complete for %s\n", qdev->dsp_name);
>  	return 0;
> 
> -- 
> 2.34.1
> 
> 

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
