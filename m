Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICMxO8IT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:52:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2AF4120F6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:52:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB12144ABE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:52:17 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id EF48340144
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 21:23:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=IqNI42IP;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=O0rLXVeL;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NIG9Gj3732749
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 21:23:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rHCvAT6pGLEz/0NL/hsRib41
	8oQJ6Hopoh+QwMfIbuI=; b=IqNI42IPWY0pM0iOT424kudTyoGHsyZ7C26NGHCV
	RivUhI4dX3hB18HHwU1AvqMEhF/76svauhbQmubh2mMeJhiDoSrqD1qrT2NX1CN/
	LF8h0+sMpdx97KzqjpDmfa+9JQ3+E9LIdB0y51tASGPK7iWGQfdBaXmfGW3dPyUI
	tkSSzuPKC3CKqKOtP/ffQIU4TpR6xmGlHRQcRmGWTzATNOFjW8w5fKp40PXLCh8n
	pLKj3CZqqgdLcyUDd41xPwnRS/MA56dTGiU/4chJcMpgPiXHKs0yMr9f6KO3mHhT
	gNWzie+xpGCcD2Oou8T4CkjqUnPS4r3dB49qd6C1I+m/gg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn7t9xp7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 21:23:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c71500f274so541037685a.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 13:23:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771881797; x=1772486597; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rHCvAT6pGLEz/0NL/hsRib418oQJ6Hopoh+QwMfIbuI=;
        b=O0rLXVeLI2ZBZL56Ly1BBqrqpiBnagWQdvMHsi/brC7fPdxQFp20LwiqlFYxQpzpb6
         xQOgLE1gqisNWiBAaUABFNjad6JPP84C1pah1jD/HgruHGcnzu6I82as5USEPufOyXgg
         a7/xXl+nbRQog7CZPBsWSnOwAkymQR0Vo65Ia3e66+hlP2alMkrlbC+aNVIYRlAupTjS
         /YvRZl8QQ5fs3R+1KtCx/sx2YXzPMnf3GbC+/Uu3n56Yk0Piwq1VGJ4MgQ6a6U3ZJV7h
         hCVITfBaN31aQz2O3aYegj6hs02L/cUYO/qpunYwgWjiu1n7fyi+KfAfhnYJMzhLCRcH
         NY5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771881797; x=1772486597;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rHCvAT6pGLEz/0NL/hsRib418oQJ6Hopoh+QwMfIbuI=;
        b=HFZ7rLAMAx51dImYjAox8oBEu3npB8n8CFR6Z81vm2Xz7iRL8HDNJWB2gaUEYDPPTo
         ggZFVV/algAQFfGS/xVU1nZ26YN1slf+1JvXSk/e4JkzF50gaExMQ6Cvfxuod/yWExsa
         1o+hZebPeXVGUWxo8u+YtZS1A6qkYNz23yrHn3hCJW6WOqJjk3f0SZJpq3ksr1rS8/vS
         BrQKRuFib6UR9hCB6cjRaJZrcLeWEilnlgljHaxVsmRAUBl1cpryrMOq0hsLD4KOxICa
         p7lmOO+xGTAYXE14FwAnh/W4MVncEhnq141JwaONS6SPbdLJK0F5DhMm7XpGAvlzDvRO
         PSsA==
X-Forwarded-Encrypted: i=1; AJvYcCXVpmH5mbwlLT8abuZcujXMk1WwamE4a5atjFuRfIv61Km10k6flzh/O83Z+j8Z6jaWo1ViX588voCgPAOo@lists.linaro.org
X-Gm-Message-State: AOJu0YwM5fYhtEFVs8NefFii2JsD8s+mRcaXm6vzsVNCNoWfBtgrCwSQ
	Fyu3qg5wgNEXcihfMA2WWtEZMwkxMkZ5BQGLq7g5KytoCX7Xv86bdfJDYaK04kOEuLicx851tBd
	dFRNQPMjMAzUdqgdxg9YEnNGfASgDjK+WT7EKr2k0JmiWqOLRODK5WF0rkQzXq19cizU44g==
X-Gm-Gg: AZuq6aIplrZYQwWm9Rsk4UH6y1WlAUGLxHCCUf4vdSTH2fo06QgayKgqwS79Q4e7ReD
	kCvYyjL10EmPruf0iH8D3NO6HfV5UnV9lBhhEiDyMxK8U4h7/6MeXU9QS8/70vrkoen76Hz2Xyq
	9Nq1FSzUpZn4xxpkc8UibzDawo+1IZmuSaAqbwFYgHax3IlnQBzvVbBfNU/BhN4iFk9VbjmS9Vl
	WOa5iDn7oYxw0RgjWp/Ltx6L+ERulC7B8n5mQZFwgypqb6gl+hWvPBNCRY0Hg3cUNkaruOWx5au
	cq2eH4OgyH7NnR5Kic4DS7sDoQ1mB9kLgRNjMZ9L9IZ0wfcIMLmhD+PNcMLaZ8xY4yp7HVvy9PZ
	XXPOq9gzTWCxtds866xsBTtCrutKrwu836jXxOXSyXUljLfsifJmrCv82gQA+Snce9/iQZaOdBZ
	zCmIPL0X7JlelrebUjJzJi7AHqyvShBjYtFGw=
X-Received: by 2002:a05:620a:29d1:b0:8c6:a809:862a with SMTP id af79cd13be357-8cb8ca656f6mr1196018585a.45.1771881797403;
        Mon, 23 Feb 2026 13:23:17 -0800 (PST)
X-Received: by 2002:a05:620a:29d1:b0:8c6:a809:862a with SMTP id af79cd13be357-8cb8ca656f6mr1196013485a.45.1771881796495;
        Mon, 23 Feb 2026 13:23:16 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb4cba3sm1754560e87.90.2026.02.23.13.23.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 13:23:15 -0800 (PST)
Date: Mon, 23 Feb 2026 23:23:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <tqsdbijgjomrn7fq3sdz7v2axwxqvbccpjh4fmvod4kbrq7pod@af3igw5dx66p>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-3-fe46a9c1a046@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224-qda-firstpost-v1-3-fe46a9c1a046@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=c5OmgB9l c=1 sm=1 tr=0 ts=699cc546 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=UyRWXFl-5J4keBKrG3IA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: kX_gvuKd8uaVinQefeDZm6IlA7lfd60g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE4NSBTYWx0ZWRfXzXVvlto6/ek/
 f4OS676VeN9vGLI4ZDyV3AR/7T/lkFf1hBwxOu2r55O7v8qLcnFUP9NfAzHnCuRac/S1csNbqcm
 0P6jDbT80/yWeTcw72G8CH1+IvelU3h0g1Bo7HzPFV+pREg2WIKLFRDq0R8gaqTU5xLtsscuvv1
 mbZ75DOJ4xfQfz443zDMgzuCcn8WmOfU6i9hb0mWSNrid+MpZB1bB97vU0r091yHpW6hJo0eG7x
 5oOrZv9PN3/yY4uLWt9CtZQRK8bPMcSzqK4HelAgarpRAqpg4y9FTfZGzPFrIBzVjhqNX4F3huV
 kh7CI4WqJ6J2IbCstFvh9qmCCC4luwZS0D+WxlUF2Gpe4omxNyANaDyJobtM9uPFxF4RYaGgqtP
 uNi+8MgEne/6I/2yU+PzhdPygo5FG4tDE+lSGRrvL89ZldIvxTpw3mcIVirLDSJtDUIumJws4E3
 UXvahcchZgiWkVhwglA==
X-Proofpoint-ORIG-GUID: kX_gvuKd8uaVinQefeDZm6IlA7lfd60g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_05,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 bulkscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230185
X-Spamd-Bar: ---
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TJP44QISKPO2GMJNTZDUTR5URKHBMXBW
X-Message-ID-Hash: TJP44QISKPO2GMJNTZDUTR5URKHBMXBW
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:50 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 03/18] accel/qda: Add RPMsg transport for Qualcomm DSP accelerator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TJP44QISKPO2GMJNTZDUTR5URKHBMXBW/>
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
	DATE_IN_PAST(1.00)[1243];
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
X-Rspamd-Queue-Id: 9D2AF4120F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Feb 24, 2026 at 12:38:57AM +0530, Ekansh Gupta wrote:
> Extend the Qualcomm DSP accelerator (QDA) driver with an RPMsg-based
> transport used to discover and manage DSP instances.
> 
> This patch introduces:
> 
> - A core qda_dev structure with basic device state (rpmsg device,
>   device pointer, lock, removal flag, DSP name).
> - Logging helpers that integrate with dev_* when a device is available
>   and fall back to pr_* otherwise.
> - An RPMsg client driver that binds to the Qualcomm FastRPC service and
>   allocates a qda_dev instance using devm_kzalloc().
> - Basic device initialization and teardown paths wired into the module
>   init/exit.
> 
> The RPMsg driver currently sets the DSP name from a "label" property in
> the device tree, which will be used by subsequent patches to distinguish
> between different DSP domains (e.g. ADSP, CDSP).
> 
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  drivers/accel/qda/Kconfig     |   1 +
>  drivers/accel/qda/Makefile    |   4 +-
>  drivers/accel/qda/qda_drv.c   |  41 ++++++++++++++-
>  drivers/accel/qda/qda_drv.h   |  91 ++++++++++++++++++++++++++++++++
>  drivers/accel/qda/qda_rpmsg.c | 119 ++++++++++++++++++++++++++++++++++++++++++
>  drivers/accel/qda/qda_rpmsg.h |  17 ++++++
>  6 files changed, 270 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/accel/qda/Kconfig b/drivers/accel/qda/Kconfig
> index 3c78ff6189e0..484d21ff1b55 100644
> --- a/drivers/accel/qda/Kconfig
> +++ b/drivers/accel/qda/Kconfig
> @@ -7,6 +7,7 @@ config DRM_ACCEL_QDA
>  	tristate "Qualcomm DSP accelerator"
>  	depends on DRM_ACCEL
>  	depends on ARCH_QCOM || COMPILE_TEST
> +	depends on RPMSG
>  	help
>  	  Enables the DRM-based accelerator driver for Qualcomm's Hexagon DSPs.
>  	  This driver provides a standardized interface for offloading computational
> diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
> index 573711af1d28..e7f23182589b 100644
> --- a/drivers/accel/qda/Makefile
> +++ b/drivers/accel/qda/Makefile
> @@ -5,4 +5,6 @@
>  
>  obj-$(CONFIG_DRM_ACCEL_QDA)	:= qda.o
>  
> -qda-y := qda_drv.o
> +qda-y := \
> +	qda_drv.o \

Squash these parts into the previous patch.

> +	qda_rpmsg.o \
> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
> index 18b0d3fb1598..389c66a9ad4f 100644
> --- a/drivers/accel/qda/qda_drv.c
> +++ b/drivers/accel/qda/qda_drv.c
> @@ -2,16 +2,53 @@
>  // Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>  #include <linux/module.h>
>  #include <linux/kernel.h>
> +#include <linux/atomic.h>
> +#include "qda_drv.h"
> +#include "qda_rpmsg.h"
> +
> +static void cleanup_device_resources(struct qda_dev *qdev)
> +{
> +	mutex_destroy(&qdev->lock);
> +}
> +
> +void qda_deinit_device(struct qda_dev *qdev)
> +{
> +	cleanup_device_resources(qdev);
> +}
> +
> +/* Initialize device resources */
> +static void init_device_resources(struct qda_dev *qdev)
> +{
> +	qda_dbg(qdev, "Initializing device resources\n");
> +
> +	mutex_init(&qdev->lock);
> +	atomic_set(&qdev->removing, 0);
> +}
> +
> +int qda_init_device(struct qda_dev *qdev)
> +{
> +	init_device_resources(qdev);
> +
> +	qda_dbg(qdev, "QDA device initialized successfully\n");
> +	return 0;
> +}
>  
>  static int __init qda_core_init(void)
>  {
> -	pr_info("QDA: driver initialization complete\n");
> +	int ret;
> +
> +	ret = qda_rpmsg_register();
> +	if (ret)
> +		return ret;
> +
> +	qda_info(NULL, "QDA driver initialization complete\n");
>  	return 0;
>  }
>  
>  static void __exit qda_core_exit(void)
>  {
> -	pr_info("QDA: driver exit complete\n");
> +	qda_rpmsg_unregister();
> +	qda_info(NULL, "QDA driver exit complete\n");
>  }
>  
>  module_init(qda_core_init);
> diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
> new file mode 100644
> index 000000000000..bec2d31ca1bb
> --- /dev/null
> +++ b/drivers/accel/qda/qda_drv.h
> @@ -0,0 +1,91 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef __QDA_DRV_H__
> +#define __QDA_DRV_H__
> +
> +#include <linux/device.h>
> +#include <linux/mutex.h>
> +#include <linux/rpmsg.h>
> +#include <linux/xarray.h>
> +
> +/* Driver identification */
> +#define DRIVER_NAME "qda"
> +
> +/* struct qda_dev - Main device structure for QDA driver */
> +struct qda_dev {
> +	/* RPMsg device for communication with remote processor */
> +	struct rpmsg_device *rpdev;
> +	/* Underlying device structure */
> +	struct device *dev;
> +	/* Mutex protecting device state */
> +	struct mutex lock;

Which parts of the state?

> +	/* Flag indicating device removal in progress */
> +	atomic_t removing;

Why do you need it if we have dev->unplugged and drm_dev_enter() /
drm_dev_exit()?

> +	/* Name of the DSP (e.g., "cdsp", "adsp") */
> +	char dsp_name[16];

Please replace with the pointers to the static array.

> +};
> +
> +/**
> + * qda_get_log_device - Get appropriate device for logging
> + * @qdev: QDA device structure
> + *
> + * Returns the most appropriate device structure for logging messages.
> + * Prefers qdev->dev, or returns NULL if the device is being removed
> + * or invalid.
> + */
> +static inline struct device *qda_get_log_device(struct qda_dev *qdev)
> +{
> +	if (!qdev || atomic_read(&qdev->removing))
> +		return NULL;
> +
> +	if (qdev->dev)
> +		return qdev->dev;
> +
> +	return NULL;
> +}
> +
> +/*
> + * Logging macros
> + *
> + * These macros provide consistent logging across the driver with automatic
> + * function name inclusion. They use dev_* functions when a device is available,
> + * falling back to pr_* functions otherwise.
> + */
> +
> +/* Error logging - always logs and tracks errors */
> +#define qda_err(qdev, fmt, ...) do { \
> +	struct device *__dev = qda_get_log_device(qdev); \
> +	if (__dev) \
> +		dev_err(__dev, "[%s] " fmt, __func__, ##__VA_ARGS__); \
> +	else \
> +		pr_err(DRIVER_NAME ": [%s] " fmt, __func__, ##__VA_ARGS__); \

What /why? You are under drm, so you can use drm_* helpers instead.

> +} while (0)
> +
> +/* Info logging - always logs, can be filtered via loglevel */
> +#define qda_info(qdev, fmt, ...) do { \
> +	struct device *__dev = qda_get_log_device(qdev); \
> +	if (__dev) \
> +		dev_info(__dev, "[%s] " fmt, __func__, ##__VA_ARGS__); \
> +	else \
> +		pr_info(DRIVER_NAME ": [%s] " fmt, __func__, ##__VA_ARGS__); \
> +} while (0)
> +
> +/* Debug logging - controlled via dynamic debug (CONFIG_DYNAMIC_DEBUG) */
> +#define qda_dbg(qdev, fmt, ...) do { \
> +	struct device *__dev = qda_get_log_device(qdev); \
> +	if (__dev) \
> +		dev_dbg(__dev, "[%s] " fmt, __func__, ##__VA_ARGS__); \
> +	else \
> +		pr_debug(DRIVER_NAME ": [%s] " fmt, __func__, ##__VA_ARGS__); \
> +} while (0)
> +
> +/*
> + * Core device management functions
> + */
> +int qda_init_device(struct qda_dev *qdev);
> +void qda_deinit_device(struct qda_dev *qdev);
> +
> +#endif /* __QDA_DRV_H__ */
> diff --git a/drivers/accel/qda/qda_rpmsg.c b/drivers/accel/qda/qda_rpmsg.c
> new file mode 100644
> index 000000000000..a8b24a99ca13
> --- /dev/null
> +++ b/drivers/accel/qda/qda_rpmsg.c
> @@ -0,0 +1,119 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> +#include <linux/module.h>
> +#include <linux/rpmsg.h>
> +#include <linux/of_platform.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include "qda_drv.h"
> +#include "qda_rpmsg.h"
> +
> +static int qda_rpmsg_init(struct qda_dev *qdev)
> +{
> +	dev_set_drvdata(&qdev->rpdev->dev, qdev);
> +	return 0;
> +}
> +
> +/* Utility function to allocate and initialize qda_dev */
> +static struct qda_dev *alloc_and_init_qdev(struct rpmsg_device *rpdev)
> +{
> +	struct qda_dev *qdev;
> +
> +	qdev = devm_kzalloc(&rpdev->dev, sizeof(*qdev), GFP_KERNEL);
> +	if (!qdev)
> +		return ERR_PTR(-ENOMEM);
> +
> +	qdev->dev = &rpdev->dev;
> +	qdev->rpdev = rpdev;
> +
> +	qda_dbg(qdev, "Allocated and initialized qda_dev\n");
> +	return qdev;
> +}
> +
> +static int qda_rpmsg_cb(struct rpmsg_device *rpdev, void *data, int len, void *priv, u32 src)
> +{
> +	/* Dummy function for rpmsg driver */
> +	return 0;
> +}
> +
> +static void qda_rpmsg_remove(struct rpmsg_device *rpdev)
> +{
> +	struct qda_dev *qdev = dev_get_drvdata(&rpdev->dev);
> +
> +	qda_info(qdev, "Removing RPMsg device\n");
> +
> +	atomic_set(&qdev->removing, 1);
> +
> +	mutex_lock(&qdev->lock);
> +	qdev->rpdev = NULL;
> +	mutex_unlock(&qdev->lock);
> +
> +	qda_deinit_device(qdev);
> +
> +	qda_info(qdev, "RPMsg device removed\n");
> +}
> +
> +static int qda_rpmsg_probe(struct rpmsg_device *rpdev)
> +{
> +	struct qda_dev *qdev;
> +	int ret;
> +	const char *label;
> +
> +	qda_dbg(NULL, "QDA RPMsg probe starting\n");
> +
> +	qdev = alloc_and_init_qdev(rpdev);
> +	if (IS_ERR(qdev))
> +		return PTR_ERR(qdev);
> +
> +	ret = of_property_read_string(rpdev->dev.of_node, "label", &label);
> +	if (!ret) {
> +		strscpy(qdev->dsp_name, label, sizeof(qdev->dsp_name));
> +	} else {
> +		qda_info(qdev, "QDA DSP label not found in DT\n");
> +		return ret;
> +	}
> +
> +	ret = qda_rpmsg_init(qdev);
> +	if (ret) {
> +		qda_err(qdev, "RPMsg init failed: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = qda_init_device(qdev);
> +	if (ret)
> +		return ret;
> +
> +	qda_info(qdev, "QDA RPMsg probe completed successfully for %s\n", qdev->dsp_name);
> +	return 0;
> +}
> +
> +static const struct of_device_id qda_rpmsg_id_table[] = {
> +	{ .compatible = "qcom,fastrpc" },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, qda_rpmsg_id_table);
> +
> +static struct rpmsg_driver qda_rpmsg_driver = {
> +	.probe = qda_rpmsg_probe,
> +	.remove = qda_rpmsg_remove,
> +	.callback = qda_rpmsg_cb,
> +	.drv = {
> +		.name = "qcom,fastrpc",
> +		.of_match_table = qda_rpmsg_id_table,
> +	},
> +};
> +
> +int qda_rpmsg_register(void)
> +{
> +	int ret = register_rpmsg_driver(&qda_rpmsg_driver);
> +
> +	if (ret)
> +		qda_err(NULL, "Failed to register RPMsg driver: %d\n", ret);
> +
> +	return ret;
> +}
> +
> +void qda_rpmsg_unregister(void)
> +{
> +	unregister_rpmsg_driver(&qda_rpmsg_driver);
> +}
> diff --git a/drivers/accel/qda/qda_rpmsg.h b/drivers/accel/qda/qda_rpmsg.h
> new file mode 100644
> index 000000000000..348827bff255
> --- /dev/null
> +++ b/drivers/accel/qda/qda_rpmsg.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef __QDA_RPMSG_H__
> +#define __QDA_RPMSG_H__
> +
> +#include "qda_drv.h"
> +
> +/*
> + * Transport layer registration
> + */
> +int qda_rpmsg_register(void);
> +void qda_rpmsg_unregister(void);
> +
> +#endif /* __QDA_RPMSG_H__ */
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
