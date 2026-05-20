Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGNBMmzFDWql3AUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:30:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F3C58FA4D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:30:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A4B140987
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 14:30:03 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 39C5040971
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:29:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="eZmVQFG/";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=frNNU4nZ;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64K9nXYv446929
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:29:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pxOt6IK/i3ibZ79BpGFSHKfb
	P+cfEih0yG4dCpDnkIo=; b=eZmVQFG/A3xV3qUS4A0vUqI9P0C7ARkGzo0UX+4z
	ttYkvelNRt8/3mtaxRtZiGQMTYFTeZa0qD+e+bbTtQHPMtb1q4FYEuaA+E6SpUun
	Rx865+RpRmohzVR612Om1+ptNWx/pRYRS3zumRhYDpLpUS8x9iJiLkusgJmgrPR1
	9tIDn/ZN/vkOXo416xZlg4nJ6VktEK112DGJ6p3UWQ3vbesOi1ZExRo3Nsy/p4H2
	WHiuTbU8kIvFlttlPUhPEDnlSV37cheZyCntY42NL/EsMEsbGpG+KF0imZCp9Peq
	hCYYKSLFaSysZA8ODrnuxfkbMTqKpPyj8oz87joZg74c8g==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9anrh16b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:29:52 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-575242b4308so12813701e0c.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 07:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779287392; x=1779892192; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pxOt6IK/i3ibZ79BpGFSHKfbP+cfEih0yG4dCpDnkIo=;
        b=frNNU4nZ7IxCSYuDHUsLa9T5j5xV+uM+ymeT2ug92NSTgRjORqt/KapoXV8c1MGmnW
         14hkcFIJZwOnkctaxMzc5Z+sL1wGr5UFi2psWlmx36n63DZ1wb5R+/PgNW66B5SCN0Yf
         7lkTuI9u6mX2+5QFfNvh4RAVGqNWiabtCEfJSZ0rjjII5GerMRVB/797mS9LWqzwJWiH
         qCz7Aeb6jucjuds6lFj4Zf3nH8tAAGx90QAfhU3BEXFbtlbB37sFbhBp9pmBDnjIAeuM
         plqx2jG9qEbG4bQUzti/m1P9KUglqz7xyv1cMo07xOfG/MUI5Vmp+lDyFMDTRSb9rvvK
         mMdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779287392; x=1779892192;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pxOt6IK/i3ibZ79BpGFSHKfbP+cfEih0yG4dCpDnkIo=;
        b=ZRBhZ2oMmT9RISBpqcuQ/uNyVtzfGGoBqyjNYJYvqXLB8bbGOth8289abIW1BhHRE2
         SE98DIuC/w+c0eQsr44RZvQxKcR0OZg/QduvlrvXAWqJEJOxm1vLAWIAyTTDiGU6Ci9m
         MO/M0+cu59ONhAFEmG+jhWm1icPUaK0xGIQDqShxXKUzc1MKukJbxQ+U6Z+GM519Syui
         wbJ+6dwiKGxv6ORQx/GgVioZxy46AIjIdOn+4o08prvMyHGPWTGpBh3gCVyu4OrmPZ5n
         NBWIBUKfbSEUUuPbiwi35PtEEXBMbo3UtY6+w9pDGXMU8kz6TxoxBzP/XeipiQjO9GZC
         T1OQ==
X-Forwarded-Encrypted: i=1; AFNElJ+DAPeWClSsBYiU8aUt0+lAj1cYPbEmpLDTMcEVlb/MqeIbH8NKgavE3W3dCbnkpBseM99nZYeUKPLiGc2D@lists.linaro.org
X-Gm-Message-State: AOJu0YxjPk+NSHuSv35UGxm7xQ1UEIkQ23SZZrW2UiNWHJDiJN8tI/A3
	Wj0ceF2QhwUGt1DoRo9ApiQAL2EpBb0K3Vof4uwk+bsPiVpDGHk09wnC25NmJdOAZ2ymjqDtw1N
	47ii64MBzd5PbgYQ1Q4zW5Ekt08328yV+5SkEqLCLhiA9uNibrXaSKjenCBhLFMgEljwFkA==
X-Gm-Gg: Acq92OGN6l1k30valtpBcM2S8lp5DWvWdGVWDusfPH1sso5fmm0M768+U0VnZ2pbTqp
	/8P3ZUYPV2qaX++sPg5nDJdog3Ay7EaJWorVppAqeBTwM4QoMNiC0dzyqBkzBGT6N+vPXXqm0aR
	8bNlGqOEQEYLnrVBEVAgnjdVofC3GEoMfOtuo6LK/c6zC+g8+wF/JOyQhCJPmMvcdbxkQV4DPv6
	uCF685pMELvPS9PBakYuMqWtDTP8v/g4FJN1G6Q8/oW5Nykhhgn35Gs8OuNKY62JcidoON9lXgE
	foay/dItRUZPeUvHLbH0QYwXacKHn0yAz2YPejF2sczloeCYsZ8cCKkXPJnQ6+Pu9mHpvjO4PyW
	UyEiN/wfnCUHFnXqqYiJO5aD2B14aiFeYySIkfxCy1zLLZ7LA7xh2e+gMYkhbqQGLs7JQNaxpqa
	DXwsnQVS5+6owM5nBA7lkc5wULOo8AmaYaY+I=
X-Received: by 2002:a05:6122:910:b0:56e:e9cf:7134 with SMTP id 71dfb90a1353d-5760be33374mr13875392e0c.3.1779287391901;
        Wed, 20 May 2026 07:29:51 -0700 (PDT)
X-Received: by 2002:a05:6122:910:b0:56e:e9cf:7134 with SMTP id 71dfb90a1353d-5760be33374mr13875318e0c.3.1779287391196;
        Wed, 20 May 2026 07:29:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a9164cf0a5sm4942878e87.75.2026.05.20.07.29.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 07:29:50 -0700 (PDT)
Date: Wed, 20 May 2026 17:29:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: ekansh.gupta@oss.qualcomm.com
Message-ID: <m4zo2nkxtl5yeyo7riuata6r5saflmdgqf37cz2g2ezrwhk53m@mnad6bb7n3ik>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-8-b2d984c297f8@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260519-qda-series-v1-8-b2d984c297f8@oss.qualcomm.com>
X-Proofpoint-GUID: nqtIEYMGUn4csCSHkUg2z-bLxxfzbUZc
X-Proofpoint-ORIG-GUID: nqtIEYMGUn4csCSHkUg2z-bLxxfzbUZc
X-Authority-Analysis: v=2.4 cv=UuJT8ewB c=1 sm=1 tr=0 ts=6a0dc560 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=KrLRuONc4nWYnVYYFb0A:9 a=CjuIK1q_8ugA:10 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIwMDE0MSBTYWx0ZWRfX0VdmBhb+BOZC
 jCxqN+j0qGTB0/t6ZXgOclgl9f29ZZoJFzIZqlUI+AmE8n4d1rVOuVsyKK6JDiBGesRYzVHG/Vx
 E3NBqfxRlF9BY4MLhKvRmi4yYlMwpEYzaoAUK3/INZzAlb3V/uiB5muL6doe/kjpS8BbG2+57CF
 hcKZIeaWSIasjBGsgjfaZW7gFqx8mIxujulhxXzQevpuKNlsx+4Dt9ZKURkt3AcoCpHznCiqgVG
 SjsD9Mu41T2kpK5w6Fq1QQRH4ymsXyBQLnUD+2GvYm8vRhc1NqjEC2vuf6HbaJzoyY4KvowrqK6
 u1gAM5Hv1b4s497t9AUEi6P/INO6Jn57mxG63ChkZNRZcJlih1jZEwrdRFOO0oMHZTBsnuXqiPE
 W0pykn2YFzBHjPj+WwGt11HVOOit+yGXVF/JaOKtx6ZwHbEx/rwOhew9+3a4y1vcMRY+vT7mWMy
 VOw5DXBIJZACbh56ZRg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605200141
X-Spamd-Bar: ---
Message-ID-Hash: UM7X6RACVLMEAWA2MOMGCBZR26375NXJ
X-Message-ID-Hash: UM7X6RACVLMEAWA2MOMGCBZR26375NXJ
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 08/15] accel/qda: Add QUERY IOCTL and QDA UAPI header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UM7X6RACVLMEAWA2MOMGCBZR26375NXJ/>
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
	NEURAL_HAM(-0.00)[-0.054];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,qualcomm.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 41F3C58FA4D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 11:45:58AM +0530, Ekansh Gupta via B4 Relay wrote:
> From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> 
> Introduce the DRM_IOCTL_QDA_QUERY IOCTL, which allows user-space to
> identify which DSP domain a given /dev/accel/accel* node represents
> (e.g. "cdsp", "adsp").
> 
> include/uapi/drm/qda_accel.h
>   Defines the QDA IOCTL command numbers and the associated data
>   structures. The header follows the standard DRM UAPI conventions:
>   __u8/__u32 types, a C++ extern "C" guard, and GPL-2.0-only WITH
>   Linux-syscall-note licensing.
> 
> drivers/accel/qda/qda_ioctl.c / qda_ioctl.h
>   Implements qda_ioctl_query(), which copies the DSP domain name
>   stored in qda_dev.dsp_name into the user-supplied drm_qda_query
>   buffer using strscpy().
> 
> drivers/accel/qda/qda_drv.c
>   Registers the qda_ioctls[] table with the drm_driver so that the
>   DRM core dispatches DRM_IOCTL_QDA_QUERY to qda_ioctl_query().
> 
> Assisted-by: Claude:claude-4-6-sonnet
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  drivers/accel/qda/Makefile    |  1 +
>  drivers/accel/qda/qda_drv.c   |  8 +++++++
>  drivers/accel/qda/qda_ioctl.c | 26 +++++++++++++++++++++++
>  drivers/accel/qda/qda_ioctl.h | 13 ++++++++++++
>  include/uapi/drm/qda_accel.h  | 49 +++++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 97 insertions(+)
> 
> diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
> index 701fad5ffb50..b658dad35fee 100644
> --- a/drivers/accel/qda/Makefile
> +++ b/drivers/accel/qda/Makefile
> @@ -8,6 +8,7 @@ obj-$(CONFIG_DRM_ACCEL_QDA)	:= qda.o
>  qda-y := \
>  	qda_cb.o \
>  	qda_drv.o \
> +	qda_ioctl.o \
>  	qda_memory_manager.o \
>  	qda_rpmsg.o
>  
> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
> index 0ad5d9873d7e..becd831d10be 100644
> --- a/drivers/accel/qda/qda_drv.c
> +++ b/drivers/accel/qda/qda_drv.c
> @@ -8,8 +8,10 @@
>  #include <drm/drm_gem.h>
>  #include <drm/drm_ioctl.h>
>  #include <drm/drm_print.h>
> +#include <drm/qda_accel.h>
>  
>  #include "qda_drv.h"
> +#include "qda_ioctl.h"
>  #include "qda_rpmsg.h"
>  
>  static int qda_open(struct drm_device *dev, struct drm_file *file)
> @@ -36,11 +38,17 @@ static void qda_postclose(struct drm_device *dev, struct drm_file *file)
>  
>  DEFINE_DRM_ACCEL_FOPS(qda_accel_fops);
>  
> +static const struct drm_ioctl_desc qda_ioctls[] = {
> +	DRM_IOCTL_DEF_DRV(QDA_QUERY, qda_ioctl_query, 0),
> +};
> +
>  static const struct drm_driver qda_drm_driver = {
>  	.driver_features = DRIVER_COMPUTE_ACCEL,
>  	.fops = &qda_accel_fops,
>  	.open = qda_open,
>  	.postclose = qda_postclose,
> +	.ioctls = qda_ioctls,
> +	.num_ioctls = ARRAY_SIZE(qda_ioctls),
>  	.name = QDA_DRIVER_NAME,
>  	.desc = "Qualcomm DSP Accelerator Driver",
>  };
> diff --git a/drivers/accel/qda/qda_ioctl.c b/drivers/accel/qda/qda_ioctl.c
> new file mode 100644
> index 000000000000..761d3567c33f
> --- /dev/null
> +++ b/drivers/accel/qda/qda_ioctl.c
> @@ -0,0 +1,26 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> +#include <drm/drm_ioctl.h>
> +#include <drm/qda_accel.h>
> +#include "qda_drv.h"
> +#include "qda_ioctl.h"
> +
> +/**
> + * qda_ioctl_query() - Query DSP device information
> + * @dev: DRM device structure
> + * @data: User-space data (struct drm_qda_query)
> + * @file_priv: DRM file private data
> + *
> + * Return: 0 on success, negative error code on failure
> + */
> +int qda_ioctl_query(struct drm_device *dev, void *data, struct drm_file *file_priv)
> +{
> +	struct drm_qda_query *args = data;
> +	struct qda_dev *qdev;
> +
> +	qdev = qda_dev_from_drm(dev);
> +
> +	strscpy(args->dsp_name, qdev->dsp_name, sizeof(args->dsp_name));
> +
> +	return 0;
> +}
> diff --git a/drivers/accel/qda/qda_ioctl.h b/drivers/accel/qda/qda_ioctl.h
> new file mode 100644
> index 000000000000..b8fd536a111f
> --- /dev/null
> +++ b/drivers/accel/qda/qda_ioctl.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef __QDA_IOCTL_H__
> +#define __QDA_IOCTL_H__
> +
> +#include "qda_drv.h"
> +
> +int qda_ioctl_query(struct drm_device *dev, void *data, struct drm_file *file_priv);
> +
> +#endif /* __QDA_IOCTL_H__ */
> diff --git a/include/uapi/drm/qda_accel.h b/include/uapi/drm/qda_accel.h
> new file mode 100644
> index 000000000000..1971a4263065
> --- /dev/null
> +++ b/include/uapi/drm/qda_accel.h
> @@ -0,0 +1,49 @@
> +/* SPDX-License-Identifier: GPL-2.0-only WITH Linux-syscall-note */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef __QDA_ACCEL_H__
> +#define __QDA_ACCEL_H__
> +
> +#include "drm.h"
> +
> +#if defined(__cplusplus)
> +extern "C" {
> +#endif
> +
> +/*
> + * QDA IOCTL command numbers
> + *
> + * These define the command numbers for QDA-specific IOCTLs.
> + * They are used with DRM_COMMAND_BASE to create the full IOCTL numbers.
> + */
> +#define DRM_QDA_QUERY		0x00
> +
> +/*
> + * QDA IOCTL definitions
> + *
> + * These macros define the actual IOCTL numbers used by userspace applications.
> + * They combine the command numbers with DRM_COMMAND_BASE and specify the
> + * data structure and direction (read/write) for each IOCTL.
> + */
> +#define DRM_IOCTL_QDA_QUERY		DRM_IOR(DRM_COMMAND_BASE + DRM_QDA_QUERY, \
> +					 struct drm_qda_query)
> +
> +/**
> + * struct drm_qda_query - Device information query structure
> + * @dsp_name: Name of DSP (e.g., "adsp", "cdsp", "cdsp1", "gdsp0", "gdsp1")
> + *
> + * This structure is used with DRM_IOCTL_QDA_QUERY to query device type,
> + * allowing userspace to identify which DSP a device node represents. The
> + * kernel provides the DSP name directly as a null-terminated string.
> + */
> +struct drm_qda_query {
> +	__u8 dsp_name[16];

Are you sure that you want to query only the name? No extra options, no
attributes, no hardware capabilities?

> +};
> +
> +#if defined(__cplusplus)
> +}
> +#endif
> +
> +#endif /* __QDA_ACCEL_H__ */
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
