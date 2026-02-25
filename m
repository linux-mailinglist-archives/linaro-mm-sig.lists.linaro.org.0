Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPV7IqMU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:56:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB4441224B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:56:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E87C745124
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:01 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id A6F293F69B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 17:57:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=arfaW0Tf;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=eDLj04gQ;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PH4bCK1363583
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 17:57:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mvsIZr9qVQn4O36RmaOABy93+YNGrflCz5PAS8IaKgM=; b=arfaW0TfHpQRAiB3
	YUxT/Mpf4RJwDwolsP9sX29dPvyxychIKRB9uk3QWcvfIvPnf76Au4Ap0J0MtKmp
	Ze9/v68hrjcyQXPrUuBM6LMvUf0y+jhkpgjL3BfNPmM1etkC2bFeEh0xtXHYs3Iw
	KbYZLJ9kKLbzaHkzQ6bCZkaBF1JuEJYxE4aIHwo+TLG5D+2ilhXVbKenaa+9Op6b
	86VmMxFX5qs9EYajYu8sptVauXO6ZYMx5Gtw/gXYrN0GG1MGybh6Uz/fTKUCFeKF
	tc+h+u7qxTLLtxON7DNtQlwXa+TsD3HBcXyEpXIqQMRQ2ynyjb4DUyoBxq1JiH4O
	miUARA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chp15b1xw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 17:57:03 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2aad6045810so70152135ad.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 09:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772042222; x=1772647022; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mvsIZr9qVQn4O36RmaOABy93+YNGrflCz5PAS8IaKgM=;
        b=eDLj04gQJf3dyeEsFTs2u8flYqqI9AZIR71huZXwgSP/W+EKYeYdaWD4VL6UWVfZGl
         pCwvB3B1lrFqINlKAftiqe8lH8LwQVC7AcWHG002iXAQ6SQC25lfxYm4W9XidETYck5I
         6SM8V47Gd2E6DSRR4zgZ9kEUqe96o81+Kpz0co+cNsIvLICS81ZJCz6cZTiClWwARDYW
         MiFP2j412uBHO59dBV5Oxdw5L7Wnc/tzGbcHWWKvBN2ntaI15KeBWRi/hEG2949C3g69
         iujEpgxnk7djrRLJO6DKX2aRLUlpl22bVHa+42u/1870WDxQCt4eLR23LFF0R/rBL1nA
         6Szg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772042222; x=1772647022;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mvsIZr9qVQn4O36RmaOABy93+YNGrflCz5PAS8IaKgM=;
        b=MrKpUGcAxRmdflqWERE75do4fqq4vj56TBviy355MimswX5SYqzDLzbDCX3PEWQOjZ
         y9ZNfD/2lfIoGXml0ki1t1kenS1fKpTvB2Kv1ncMnMnHzd4+WYMIPnt2Lo0zsflaJuJD
         XVOiqncth08KrowGg1GpBHHbiiEOAlYe3UyoVU50lddrS9vFzwuVZQcA30MjYwjE7r+I
         vrVRLAlgtGd6ZIh37RIFyP8tETWqUbBmkTjeTeJ2qrb4yvYqbO1XoLcnnUb8KYM+VKfp
         P++gFpbeiitEf6W/lJbWL0VUI125RA6raDEz+oLO8DCbS6qbQ/yhZUQlI1s2yarqrmZ1
         anUg==
X-Forwarded-Encrypted: i=1; AJvYcCXwPwWexS0oBHlqtX6TyYZEeMykov+KqwoCetKObMrdSAiUC862xcWZz1TpSie4B+XUEm7rogvk1ZTrhGx9@lists.linaro.org
X-Gm-Message-State: AOJu0YwoQCJ9bG1dsRyL4dhoMSeMvALgbmh9URUzj1a7QOJcsbfzjQgJ
	YVCe0zIgwx8/vKzkcRbOsNSw4WpM57YSLhnDjzqjPCQCNILWGW3OYT4jP9y216H6AYLUrsiUrjE
	0WbktBI4KXirq5kzZjvejDojDxyJSBzSuHR64I/FZsUM3VPhP93A19Qc7FNvvbx0sCVdgOw==
X-Gm-Gg: ATEYQzzD2Y9LC/DRgbW0dxsZlN3YZK6AIMFJS5PAdJSlxulXVPaizBDTvVjpiZ6/UXe
	VXnhs//RzLroLWe3rZ1yFvo0173FocTqarGkpNAM+wRX5CYWe7nqse1hcsqb7WaerLy3x9MQX5j
	nePSEe2UwpManXWmf7GPa24jssvL7CZ31nqhK0k5Jd25k6vMJjjORfsFceRyt4cs9U3e2NwoO3b
	wxnpKN4j8VdsKHizvgAwUCuMPjXooUk4kSTY000oiUwTgg+xBaHpHgLdj2fs0azK+hcbl49+U02
	ZaK4t+Oe4KQUJjM1nkrLhbXUlCVgW9CfEnzaN43nCTpLd4x/UIZcE0EqFUgI+S4nedCJklskIK5
	wbddWGN94WCLEulP+Bos5mZuM3ji4eRt6ZQ/6QxmvbCvCihHcWm4=
X-Received: by 2002:a17:902:e80c:b0:2a1:388d:8ef3 with SMTP id d9443c01a7336-2ad7444e7fcmr172411615ad.18.1772042222016;
        Wed, 25 Feb 2026 09:57:02 -0800 (PST)
X-Received: by 2002:a17:902:e80c:b0:2a1:388d:8ef3 with SMTP id d9443c01a7336-2ad7444e7fcmr172411335ad.18.1772042221493;
        Wed, 25 Feb 2026 09:57:01 -0800 (PST)
Received: from [192.168.1.5] ([171.61.227.247])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74f5daf5sm135513705ad.24.2026.02.25.09.56.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 09:57:00 -0800 (PST)
Message-ID: <e82443ff-f6c1-4b8e-b573-f4620dd0f17c@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 23:26:52 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-4-fe46a9c1a046@oss.qualcomm.com>
 <ox7jnqkjo3frhbgpp63sse7ram72obihe4qlbbn4z22wbw4szr@7pzoeecdvsyg>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <ox7jnqkjo3frhbgpp63sse7ram72obihe4qlbbn4z22wbw4szr@7pzoeecdvsyg>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDE3MiBTYWx0ZWRfXy5cTPueaJMeK
 0T3ABNmd4JdDeXnrMrQD39mEOYjDA6azdtDhnIrX3gJFvBZBqv+gHZZS4lEiqxuus5h+9psPY1S
 hI7LcCH2yRh+x/YGAMkJsuf78xKPIAnioBvz9PvLtYTq8v+wob6ahnIeNuY+kv8KQZE/Wjwid5D
 sHRfkbhvbn2DxpEc3uGAdPn5Nc383zNYQOsfUalXRKEIMCMoOA83gzbdApPOKo3j0c/Azo/VQra
 iwJjFgUGvKzcVo4IRrg3jrl9xm+gPdJPyWcFuQ0ABrbSgTItthC8cglvAOpQnbKKEC91Q4InH6k
 433Nx/128zmPz+OODBLD9qSQ/A5R+qqSsaj7fUuChiZQaFeCz5qtxIkzrnO0IHy4B+0xnwL6EFh
 72/Hhu9esWhNWn9D8Wg65JaE47pZFQa5suPzbK6GRBeR+UhZ2YTomkpICk+FGKUz50lpxSJCcfE
 OjIsQlhuIBOQIF4M+ww==
X-Proofpoint-GUID: BNHuE7X4QfffH4ijlnIb-jy53JlZnZHA
X-Proofpoint-ORIG-GUID: BNHuE7X4QfffH4ijlnIb-jy53JlZnZHA
X-Authority-Analysis: v=2.4 cv=etXSD4pX c=1 sm=1 tr=0 ts=699f37ef cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=CLJ8B99oKJtQbdnoKiLypA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=_kSkizocug0RL_Hz-QYA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_02,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 adultscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 phishscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250172
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WI4SNBT3Z7SFHDPFRPCTMRHGEOCSLFWC
X-Message-ID-Hash: WI4SNBT3Z7SFHDPFRPCTMRHGEOCSLFWC
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:41:07 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 04/18] accel/qda: Add built-in compute CB bus for QDA and integrate with IOMMU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WI4SNBT3Z7SFHDPFRPCTMRHGEOCSLFWC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[1198];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,oss.qualcomm.com,quicinc.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,qualcomm.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 2CB4441224B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/24/2026 4:14 AM, Dmitry Baryshkov wrote:
> On Tue, Feb 24, 2026 at 12:38:58AM +0530, Ekansh Gupta wrote:
>> Introduce a built-in compute context-bank (CB) bus used by the Qualcomm
>> DSP accelerator (QDA) driver to represent DSP CB devices that require
>> IOMMU configuration. This separates the CB bus from the QDA driver and
>> allows QDA to remain a loadable module while the bus is always built-in.
> Why? What is the actual problem that you are trying to solve?
Bus needs to be built-in as it is being used by iommu driver. I'll add more details here.
>
>> A new bool Kconfig symbol DRM_ACCEL_QDA_COMPUTE_BUS is added and is
> Don't describe the patch contents. Please.
Ack.
>
>> selected by the main DRM_ACCEL_QDA driver. The parent accel Makefile is
>> updated to descend into the QDA directory for both built-in and module
>> builds so that the CB bus is compiled into vmlinux while the driver
>> remains modular.
>>
>> The CB bus is registered at postcore_initcall() time and is exposed to
>> the IOMMU core through iommu_buses[] in the same way as the Tegra
>> host1x context-bus. This enables later patches to create CB devices on
>> this bus and obtain IOMMU domains for them.
> Note, there is nothing QDA-specific in this patch. Please explain, why
> the bus is QDA-specific? Can we generalize it?
I needed a custom bus here to use for the compute cb devices for iommu
configurations, I don't see any reason to keep it QDA-specific. The only requirement
is that this should be enabled built in whenever QDA is enabled.

But if I keep it generic, where should this be placed? Should it be accel(or drm?) specific?

>
>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>> ---
>>  drivers/accel/Makefile              |  1 +
>>  drivers/accel/qda/Kconfig           |  5 +++++
>>  drivers/accel/qda/Makefile          |  2 ++
>>  drivers/accel/qda/qda_compute_bus.c | 23 +++++++++++++++++++++++
>>  drivers/iommu/iommu.c               |  4 ++++
>>  include/linux/qda_compute_bus.h     | 22 ++++++++++++++++++++++
>>  6 files changed, 57 insertions(+)
>>
>> diff --git a/drivers/accel/Makefile b/drivers/accel/Makefile
>> index 58c08dd5f389..9ed843cd293f 100644
>> --- a/drivers/accel/Makefile
>> +++ b/drivers/accel/Makefile
>> @@ -6,4 +6,5 @@ obj-$(CONFIG_DRM_ACCEL_HABANALABS)	+= habanalabs/
>>  obj-$(CONFIG_DRM_ACCEL_IVPU)		+= ivpu/
>>  obj-$(CONFIG_DRM_ACCEL_QAIC)		+= qaic/
>>  obj-$(CONFIG_DRM_ACCEL_QDA)		+= qda/
>> +obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda/
>>  obj-$(CONFIG_DRM_ACCEL_ROCKET)		+= rocket/
>> \ No newline at end of file
>> diff --git a/drivers/accel/qda/Kconfig b/drivers/accel/qda/Kconfig
>> index 484d21ff1b55..ef1fa384efbe 100644
>> --- a/drivers/accel/qda/Kconfig
>> +++ b/drivers/accel/qda/Kconfig
>> @@ -3,11 +3,16 @@
>>  # Qualcomm DSP accelerator driver
>>  #
>>  
>> +
>> +config DRM_ACCEL_QDA_COMPUTE_BUS
>> +	bool
>> +
>>  config DRM_ACCEL_QDA
>>  	tristate "Qualcomm DSP accelerator"
>>  	depends on DRM_ACCEL
>>  	depends on ARCH_QCOM || COMPILE_TEST
>>  	depends on RPMSG
>> +	select DRM_ACCEL_QDA_COMPUTE_BUS
>>  	help
>>  	  Enables the DRM-based accelerator driver for Qualcomm's Hexagon DSPs.
>>  	  This driver provides a standardized interface for offloading computational
>> diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
>> index e7f23182589b..242684ef1af7 100644
>> --- a/drivers/accel/qda/Makefile
>> +++ b/drivers/accel/qda/Makefile
>> @@ -8,3 +8,5 @@ obj-$(CONFIG_DRM_ACCEL_QDA)	:= qda.o
>>  qda-y := \
>>  	qda_drv.o \
>>  	qda_rpmsg.o \
>> +
>> +obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda_compute_bus.o
>> diff --git a/drivers/accel/qda/qda_compute_bus.c b/drivers/accel/qda/qda_compute_bus.c
>> new file mode 100644
>> index 000000000000..1d9c39948fb5
>> --- /dev/null
>> +++ b/drivers/accel/qda/qda_compute_bus.c
>> @@ -0,0 +1,23 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> +#include <linux/device.h>
>> +#include <linux/init.h>
>> +
>> +struct bus_type qda_cb_bus_type = {
>> +	.name = "qda-compute-cb",
>> +};
>> +EXPORT_SYMBOL_GPL(qda_cb_bus_type);
>> +
>> +static int __init qda_cb_bus_init(void)
>> +{
>> +	int err;
>> +
>> +	err = bus_register(&qda_cb_bus_type);
>> +	if (err < 0) {
>> +		pr_err("qda-compute-cb bus registration failed: %d\n", err);
>> +		return err;
>> +	}
>> +	return 0;
>> +}
>> +
>> +postcore_initcall(qda_cb_bus_init);
>> diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
>> index 4926a43118e6..5dee912686ee 100644
>> --- a/drivers/iommu/iommu.c
>> +++ b/drivers/iommu/iommu.c
>> @@ -33,6 +33,7 @@
>>  #include <trace/events/iommu.h>
>>  #include <linux/sched/mm.h>
>>  #include <linux/msi.h>
>> +#include <linux/qda_compute_bus.h>
>>  #include <uapi/linux/iommufd.h>
>>  
>>  #include "dma-iommu.h"
>> @@ -178,6 +179,9 @@ static const struct bus_type * const iommu_buses[] = {
>>  #ifdef CONFIG_CDX_BUS
>>  	&cdx_bus_type,
>>  #endif
>> +#ifdef CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS
>> +	&qda_cb_bus_type,
>> +#endif
>>  };
>>  
>>  /*
>> diff --git a/include/linux/qda_compute_bus.h b/include/linux/qda_compute_bus.h
>> new file mode 100644
>> index 000000000000..807122d84e3f
>> --- /dev/null
>> +++ b/include/linux/qda_compute_bus.h
>> @@ -0,0 +1,22 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#ifndef __QDA_COMPUTE_BUS_H__
>> +#define __QDA_COMPUTE_BUS_H__
>> +
>> +#include <linux/device.h>
>> +
>> +/*
>> + * Custom bus type for QDA compute context bank (CB) devices
>> + *
>> + * This bus type is used for manually created CB devices that represent
>> + * IOMMU context banks. The custom bus allows proper IOMMU configuration
>> + * and device management for these virtual devices.
>> + */
>> +#ifdef CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS
>> +extern struct bus_type qda_cb_bus_type;
>> +#endif
>> +
>> +#endif /* __QDA_COMPUTE_BUS_H__ */
>>
>> -- 
>> 2.34.1
>>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
