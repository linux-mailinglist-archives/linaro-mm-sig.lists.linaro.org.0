Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IoNHpQU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:55:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0007B412234
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:55:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1BE214510D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:55:47 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 51409400F4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 17:16:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=NgTnxjVb;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=C9QhpV4n;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PGuwAX1024997
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 17:16:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ucOIudrT1HeNKGnFCXAy5PnfmnhZNLc1JNcH6FfXVd0=; b=NgTnxjVbxDx9PZC5
	eGbsvbueGpTBBWMYr+OFoWbIvqGBsXta8czs7u/FZQDW8JT90NymttscOv5eU+k7
	x7NfD+8UKxeEeoYNei4v94NM5qEltXFJKwY7hQ+Y6DJO5cnkYXLuqN1IGuo/D0xz
	XkC77SKISOGHcM3Yb82rHZJ/FsZag32wE1EtFdPBHJAFnPUA347b5wzkNg0GRMaa
	Ak2PQPcQKGBqtHFFKq5SxRg9NIDOQ0TT4UatCNo809L44/hxRZqbj7FxP5FUmWnG
	ghDrbr2nXwT1LfvwWYVDZMv87NHDPzVDZanIg54SU9VvVjcvwrOpImmDxI7aTlu3
	xSyWLQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chq57tptx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 17:16:57 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-824a2df507eso26542148b3a.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 09:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772039816; x=1772644616; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ucOIudrT1HeNKGnFCXAy5PnfmnhZNLc1JNcH6FfXVd0=;
        b=C9QhpV4nHg9hBWcflW/TMO9EazVgTeWicGYrPdwiUuxHNVpCRDE86p6wAMzM+zeIU/
         20eKzZTri5R7DcKTpkULnmfupR+GkmylouAvA6L+Dth6eAfNK4ST0d87XHqov7A6hTWn
         CF4h3wZ4BpVElprb4BfaogVSU/GDiwvNGM1fLSB362sVRxJ8X5vLO0COHjn7/iBVW1qm
         GheKiIEWYjsz/8+66DKd8V09DGMP7AXT6Gu3tF4bCvuWQnJfAm6oR7Nh6l4lpW6Bl0xp
         DWE+jeC+FdftsetOgqEKGPKCrDIUrWYoXWOAAeFMRIXNAThaBu2F0Iw5deS92tESXHlt
         C1nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772039816; x=1772644616;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ucOIudrT1HeNKGnFCXAy5PnfmnhZNLc1JNcH6FfXVd0=;
        b=SehbrJCVN+yhvJ1WwtpLIsUhpEBVO4nxfzUIAB8rNSRcLnXx61hhzbee2mlBRknlb7
         u35vZqIkMotDpCgSTiee4JL7XRtQMDO658DE3aCDV7YtRltPv6wiveVn/Itq4L93S8hJ
         Db+O69SY8T0Igo+4jlUgiwOQS/cHidl65G+ynIeOYmvUKHZbuEYctAeYpSDq9Riy0rT2
         5Py3ipSNhvKMwdQcPUC5Z5dasYNBZF8pnAhRL6RpX/Gk4dFmxOUxZmxHt32mthqi/od7
         uRo3O8iOBdmqc3JuLSBtHM1q/JqOQCmVe0pi0njcpLGHho9af+m013lizn1cGMUZIvfa
         1vvA==
X-Forwarded-Encrypted: i=1; AJvYcCVOy8q7fDyCnl5FLQEhll05btGV71+FahzCeLq0jsOvD2JaewBUDt8AgDFiWovutnh+f+NKgQX4ttJpjJsS@lists.linaro.org
X-Gm-Message-State: AOJu0YxPVGD1acJzgatNLGjqGFXNLzjKymE5kpV0uW2oNLKxJlwC4mI5
	Zd4oCHUzH4wN5RLgo77FK4ZZMBzoUgb7RvkLVpiDOG2apxlQHjdWI6xGrd747745CLIXfhFZrXk
	hsZzHkGel0djkXFj4KWueCU8j4TV1wxCjp7RRkl/run/ASBGFKO/nbDfkAYhGtEnaT83E4g==
X-Gm-Gg: ATEYQzxA3rFcTRKaLyg8zJ7vCjnJ2XxqMwi1rASg6VvVpHUsNONDJqmj/jXiStD0Ier
	APBXSz8Ni4XHxhI4cWrvA+5tJEj5KeDpbtyCAkel5CIP2GAfns1pNEV5kpGX14Qima1hAfSGDQe
	EORwtDkX0u4ZCAfxOH1baHUL3Yj80pfOEM9AfkHifgNcCMYVc7oe0qAAkpCO9KjyfP0mNwyMzFy
	nPQvTD4zCuyg7j7WKOCiKvDml7I9OT4dK3gNT9UDCzuhhILI0QCL/gmWItakxMvNBMe7KLvuwr1
	RBGimWR7ZAbc+1Z1e4E4Ad7Ese20rhx4ymxF5Az15d4zOlS+VdJRUYf9ehzk4mfXm4TA9ZMfodQ
	G8c6EHXUQtd1IFC6JAgelPWrUPqsU8xosFC7zT/vyMiJYUqbpuCc=
X-Received: by 2002:a05:6a00:4501:b0:81f:3a83:9756 with SMTP id d2e1a72fcca58-827337897f7mr908982b3a.30.1772039816280;
        Wed, 25 Feb 2026 09:16:56 -0800 (PST)
X-Received: by 2002:a05:6a00:4501:b0:81f:3a83:9756 with SMTP id d2e1a72fcca58-827337897f7mr908946b3a.30.1772039815684;
        Wed, 25 Feb 2026 09:16:55 -0800 (PST)
Received: from [192.168.1.5] ([171.61.227.247])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd86ca41sm15171981b3a.36.2026.02.25.09.16.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 09:16:54 -0800 (PST)
Message-ID: <843e550f-185a-4906-b61d-15c9b34d341f@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 22:46:47 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-3-fe46a9c1a046@oss.qualcomm.com>
 <tqsdbijgjomrn7fq3sdz7v2axwxqvbccpjh4fmvod4kbrq7pod@af3igw5dx66p>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <tqsdbijgjomrn7fq3sdz7v2axwxqvbccpjh4fmvod4kbrq7pod@af3igw5dx66p>
X-Authority-Analysis: v=2.4 cv=faOgCkQF c=1 sm=1 tr=0 ts=699f2e89 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=CLJ8B99oKJtQbdnoKiLypA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=WvnbiS2QWwUXfDwCy_YA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: 6rm6QvLa-ovSBs3g3VdHIgP9B6eEnvwG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDE2NSBTYWx0ZWRfX3NcHj5a16mhi
 CrEvkmMGYjcXP8hjgf+DxS3Eq4DycdF3Ha6neORfKlQh7SI5JTh3QTRzWe9TaPCDiwk8K6xkDZY
 xahNkc6g4hSDSEd570AzdzeIv0wrPQP22FTBFGoUiVt4AumC3wJUqTI3LEaerBhmBR6y4hPb1pW
 pbED4a6Na6hL2rkHSleyZ/rZVKb20ZK6bGajwfmmaqoD2gt/1FwRXZGfo4XtXtTONS6sQYDL1WB
 8pv8dE8LKl+j0bcFXi5ikOoI2mIZQZc5Zps+YsyXbm7YXBtOiNFtSQKUU/13a00djbjf5H//mb6
 /ExlA3NDYpRcHXN3QOmAVdfPoCYhKQu3pSLdlze49yFY5k102c3HggZQPmEtHAos1yjN28j+JY9
 AnDb5xaH65pvt6NYPb6htH4nFTlV0TlyCKZk4Kzym7AYABHi4JKwUEQikDZipN6VonUlEEGYdB5
 eeyh6bHJcCCkkWR42ZA==
X-Proofpoint-GUID: 6rm6QvLa-ovSBs3g3VdHIgP9B6eEnvwG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_02,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250165
X-Spamd-Bar: ------
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VUMOAJVWOCWZYSEUJN6LMA5JGSPEA6Y6
X-Message-ID-Hash: VUMOAJVWOCWZYSEUJN6LMA5JGSPEA6Y6
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:41:06 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 03/18] accel/qda: Add RPMsg transport for Qualcomm DSP accelerator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VUMOAJVWOCWZYSEUJN6LMA5JGSPEA6Y6/>
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
	DATE_IN_PAST(1.00)[1199];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,oss.qualcomm.com:mid]
X-Rspamd-Queue-Id: 0007B412234
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/24/2026 2:53 AM, Dmitry Baryshkov wrote:
> On Tue, Feb 24, 2026 at 12:38:57AM +0530, Ekansh Gupta wrote:
>> Extend the Qualcomm DSP accelerator (QDA) driver with an RPMsg-based
>> transport used to discover and manage DSP instances.
>>
>> This patch introduces:
>>
>> - A core qda_dev structure with basic device state (rpmsg device,
>>   device pointer, lock, removal flag, DSP name).
>> - Logging helpers that integrate with dev_* when a device is available
>>   and fall back to pr_* otherwise.
>> - An RPMsg client driver that binds to the Qualcomm FastRPC service and
>>   allocates a qda_dev instance using devm_kzalloc().
>> - Basic device initialization and teardown paths wired into the module
>>   init/exit.
>>
>> The RPMsg driver currently sets the DSP name from a "label" property in
>> the device tree, which will be used by subsequent patches to distinguish
>> between different DSP domains (e.g. ADSP, CDSP).
>>
>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>> ---
>>  drivers/accel/qda/Kconfig     |   1 +
>>  drivers/accel/qda/Makefile    |   4 +-
>>  drivers/accel/qda/qda_drv.c   |  41 ++++++++++++++-
>>  drivers/accel/qda/qda_drv.h   |  91 ++++++++++++++++++++++++++++++++
>>  drivers/accel/qda/qda_rpmsg.c | 119 ++++++++++++++++++++++++++++++++++++++++++
>>  drivers/accel/qda/qda_rpmsg.h |  17 ++++++
>>  6 files changed, 270 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/accel/qda/Kconfig b/drivers/accel/qda/Kconfig
>> index 3c78ff6189e0..484d21ff1b55 100644
>> --- a/drivers/accel/qda/Kconfig
>> +++ b/drivers/accel/qda/Kconfig
>> @@ -7,6 +7,7 @@ config DRM_ACCEL_QDA
>>  	tristate "Qualcomm DSP accelerator"
>>  	depends on DRM_ACCEL
>>  	depends on ARCH_QCOM || COMPILE_TEST
>> +	depends on RPMSG
>>  	help
>>  	  Enables the DRM-based accelerator driver for Qualcomm's Hexagon DSPs.
>>  	  This driver provides a standardized interface for offloading computational
>> diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
>> index 573711af1d28..e7f23182589b 100644
>> --- a/drivers/accel/qda/Makefile
>> +++ b/drivers/accel/qda/Makefile
>> @@ -5,4 +5,6 @@
>>  
>>  obj-$(CONFIG_DRM_ACCEL_QDA)	:= qda.o
>>  
>> -qda-y := qda_drv.o
>> +qda-y := \
>> +	qda_drv.o \
> Squash these parts into the previous patch.
Ack.
>
>> +	qda_rpmsg.o \
>> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
>> index 18b0d3fb1598..389c66a9ad4f 100644
>> --- a/drivers/accel/qda/qda_drv.c
>> +++ b/drivers/accel/qda/qda_drv.c
>> @@ -2,16 +2,53 @@
>>  // Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>  #include <linux/module.h>
>>  #include <linux/kernel.h>
>> +#include <linux/atomic.h>
>> +#include "qda_drv.h"
>> +#include "qda_rpmsg.h"
>> +
>> +static void cleanup_device_resources(struct qda_dev *qdev)
>> +{
>> +	mutex_destroy(&qdev->lock);
>> +}
>> +
>> +void qda_deinit_device(struct qda_dev *qdev)
>> +{
>> +	cleanup_device_resources(qdev);
>> +}
>> +
>> +/* Initialize device resources */
>> +static void init_device_resources(struct qda_dev *qdev)
>> +{
>> +	qda_dbg(qdev, "Initializing device resources\n");
>> +
>> +	mutex_init(&qdev->lock);
>> +	atomic_set(&qdev->removing, 0);
>> +}
>> +
>> +int qda_init_device(struct qda_dev *qdev)
>> +{
>> +	init_device_resources(qdev);
>> +
>> +	qda_dbg(qdev, "QDA device initialized successfully\n");
>> +	return 0;
>> +}
>>  
>>  static int __init qda_core_init(void)
>>  {
>> -	pr_info("QDA: driver initialization complete\n");
>> +	int ret;
>> +
>> +	ret = qda_rpmsg_register();
>> +	if (ret)
>> +		return ret;
>> +
>> +	qda_info(NULL, "QDA driver initialization complete\n");
>>  	return 0;
>>  }
>>  
>>  static void __exit qda_core_exit(void)
>>  {
>> -	pr_info("QDA: driver exit complete\n");
>> +	qda_rpmsg_unregister();
>> +	qda_info(NULL, "QDA driver exit complete\n");
>>  }
>>  
>>  module_init(qda_core_init);
>> diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
>> new file mode 100644
>> index 000000000000..bec2d31ca1bb
>> --- /dev/null
>> +++ b/drivers/accel/qda/qda_drv.h
>> @@ -0,0 +1,91 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#ifndef __QDA_DRV_H__
>> +#define __QDA_DRV_H__
>> +
>> +#include <linux/device.h>
>> +#include <linux/mutex.h>
>> +#include <linux/rpmsg.h>
>> +#include <linux/xarray.h>
>> +
>> +/* Driver identification */
>> +#define DRIVER_NAME "qda"
>> +
>> +/* struct qda_dev - Main device structure for QDA driver */
>> +struct qda_dev {
>> +	/* RPMsg device for communication with remote processor */
>> +	struct rpmsg_device *rpdev;
>> +	/* Underlying device structure */
>> +	struct device *dev;
>> +	/* Mutex protecting device state */
>> +	struct mutex lock;
> Which parts of the state?
This lock is added to ensure proper rpdev before sending message to DSP, now I think
it might not be needed if I can ensure proper checks based on any existing helpers, I'll
check this and remove if it's not needed.
>
>> +	/* Flag indicating device removal in progress */
>> +	atomic_t removing;
> Why do you need it if we have dev->unplugged and drm_dev_enter() /
> drm_dev_exit()?
I'll check the helpers and replace wherever necessary.
>
>> +	/* Name of the DSP (e.g., "cdsp", "adsp") */
>> +	char dsp_name[16];
> Please replace with the pointers to the static array.
ack.
>
>> +};
>> +
>> +/**
>> + * qda_get_log_device - Get appropriate device for logging
>> + * @qdev: QDA device structure
>> + *
>> + * Returns the most appropriate device structure for logging messages.
>> + * Prefers qdev->dev, or returns NULL if the device is being removed
>> + * or invalid.
>> + */
>> +static inline struct device *qda_get_log_device(struct qda_dev *qdev)
>> +{
>> +	if (!qdev || atomic_read(&qdev->removing))
>> +		return NULL;
>> +
>> +	if (qdev->dev)
>> +		return qdev->dev;
>> +
>> +	return NULL;
>> +}
>> +
>> +/*
>> + * Logging macros
>> + *
>> + * These macros provide consistent logging across the driver with automatic
>> + * function name inclusion. They use dev_* functions when a device is available,
>> + * falling back to pr_* functions otherwise.
>> + */
>> +
>> +/* Error logging - always logs and tracks errors */
>> +#define qda_err(qdev, fmt, ...) do { \
>> +	struct device *__dev = qda_get_log_device(qdev); \
>> +	if (__dev) \
>> +		dev_err(__dev, "[%s] " fmt, __func__, ##__VA_ARGS__); \
>> +	else \
>> +		pr_err(DRIVER_NAME ": [%s] " fmt, __func__, ##__VA_ARGS__); \
> What /why? You are under drm, so you can use drm_* helpers instead.
ack.
>
>> +} while (0)
>> +
>> +/* Info logging - always logs, can be filtered via loglevel */
>> +#define qda_info(qdev, fmt, ...) do { \
>> +	struct device *__dev = qda_get_log_device(qdev); \
>> +	if (__dev) \
>> +		dev_info(__dev, "[%s] " fmt, __func__, ##__VA_ARGS__); \
>> +	else \
>> +		pr_info(DRIVER_NAME ": [%s] " fmt, __func__, ##__VA_ARGS__); \
>> +} while (0)
>> +
>> +/* Debug logging - controlled via dynamic debug (CONFIG_DYNAMIC_DEBUG) */
>> +#define qda_dbg(qdev, fmt, ...) do { \
>> +	struct device *__dev = qda_get_log_device(qdev); \
>> +	if (__dev) \
>> +		dev_dbg(__dev, "[%s] " fmt, __func__, ##__VA_ARGS__); \
>> +	else \
>> +		pr_debug(DRIVER_NAME ": [%s] " fmt, __func__, ##__VA_ARGS__); \
>> +} while (0)
>> +
>> +/*
>> + * Core device management functions
>> + */
>> +int qda_init_device(struct qda_dev *qdev);
>> +void qda_deinit_device(struct qda_dev *qdev);
>> +
>> +#endif /* __QDA_DRV_H__ */
>> diff --git a/drivers/accel/qda/qda_rpmsg.c b/drivers/accel/qda/qda_rpmsg.c
>> new file mode 100644
>> index 000000000000..a8b24a99ca13
>> --- /dev/null
>> +++ b/drivers/accel/qda/qda_rpmsg.c
>> @@ -0,0 +1,119 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> +#include <linux/module.h>
>> +#include <linux/rpmsg.h>
>> +#include <linux/of_platform.h>
>> +#include <linux/of.h>
>> +#include <linux/of_device.h>
>> +#include "qda_drv.h"
>> +#include "qda_rpmsg.h"
>> +
>> +static int qda_rpmsg_init(struct qda_dev *qdev)
>> +{
>> +	dev_set_drvdata(&qdev->rpdev->dev, qdev);
>> +	return 0;
>> +}
>> +
>> +/* Utility function to allocate and initialize qda_dev */
>> +static struct qda_dev *alloc_and_init_qdev(struct rpmsg_device *rpdev)
>> +{
>> +	struct qda_dev *qdev;
>> +
>> +	qdev = devm_kzalloc(&rpdev->dev, sizeof(*qdev), GFP_KERNEL);
>> +	if (!qdev)
>> +		return ERR_PTR(-ENOMEM);
>> +
>> +	qdev->dev = &rpdev->dev;
>> +	qdev->rpdev = rpdev;
>> +
>> +	qda_dbg(qdev, "Allocated and initialized qda_dev\n");
>> +	return qdev;
>> +}
>> +
>> +static int qda_rpmsg_cb(struct rpmsg_device *rpdev, void *data, int len, void *priv, u32 src)
>> +{
>> +	/* Dummy function for rpmsg driver */
>> +	return 0;
>> +}
>> +
>> +static void qda_rpmsg_remove(struct rpmsg_device *rpdev)
>> +{
>> +	struct qda_dev *qdev = dev_get_drvdata(&rpdev->dev);
>> +
>> +	qda_info(qdev, "Removing RPMsg device\n");
>> +
>> +	atomic_set(&qdev->removing, 1);
>> +
>> +	mutex_lock(&qdev->lock);
>> +	qdev->rpdev = NULL;
>> +	mutex_unlock(&qdev->lock);
>> +
>> +	qda_deinit_device(qdev);
>> +
>> +	qda_info(qdev, "RPMsg device removed\n");
>> +}
>> +
>> +static int qda_rpmsg_probe(struct rpmsg_device *rpdev)
>> +{
>> +	struct qda_dev *qdev;
>> +	int ret;
>> +	const char *label;
>> +
>> +	qda_dbg(NULL, "QDA RPMsg probe starting\n");
>> +
>> +	qdev = alloc_and_init_qdev(rpdev);
>> +	if (IS_ERR(qdev))
>> +		return PTR_ERR(qdev);
>> +
>> +	ret = of_property_read_string(rpdev->dev.of_node, "label", &label);
>> +	if (!ret) {
>> +		strscpy(qdev->dsp_name, label, sizeof(qdev->dsp_name));
>> +	} else {
>> +		qda_info(qdev, "QDA DSP label not found in DT\n");
>> +		return ret;
>> +	}
>> +
>> +	ret = qda_rpmsg_init(qdev);
>> +	if (ret) {
>> +		qda_err(qdev, "RPMsg init failed: %d\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	ret = qda_init_device(qdev);
>> +	if (ret)
>> +		return ret;
>> +
>> +	qda_info(qdev, "QDA RPMsg probe completed successfully for %s\n", qdev->dsp_name);
>> +	return 0;
>> +}
>> +
>> +static const struct of_device_id qda_rpmsg_id_table[] = {
>> +	{ .compatible = "qcom,fastrpc" },
>> +	{},
>> +};
>> +MODULE_DEVICE_TABLE(of, qda_rpmsg_id_table);
>> +
>> +static struct rpmsg_driver qda_rpmsg_driver = {
>> +	.probe = qda_rpmsg_probe,
>> +	.remove = qda_rpmsg_remove,
>> +	.callback = qda_rpmsg_cb,
>> +	.drv = {
>> +		.name = "qcom,fastrpc",
>> +		.of_match_table = qda_rpmsg_id_table,
>> +	},
>> +};
>> +
>> +int qda_rpmsg_register(void)
>> +{
>> +	int ret = register_rpmsg_driver(&qda_rpmsg_driver);
>> +
>> +	if (ret)
>> +		qda_err(NULL, "Failed to register RPMsg driver: %d\n", ret);
>> +
>> +	return ret;
>> +}
>> +
>> +void qda_rpmsg_unregister(void)
>> +{
>> +	unregister_rpmsg_driver(&qda_rpmsg_driver);
>> +}
>> diff --git a/drivers/accel/qda/qda_rpmsg.h b/drivers/accel/qda/qda_rpmsg.h
>> new file mode 100644
>> index 000000000000..348827bff255
>> --- /dev/null
>> +++ b/drivers/accel/qda/qda_rpmsg.h
>> @@ -0,0 +1,17 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#ifndef __QDA_RPMSG_H__
>> +#define __QDA_RPMSG_H__
>> +
>> +#include "qda_drv.h"
>> +
>> +/*
>> + * Transport layer registration
>> + */
>> +int qda_rpmsg_register(void);
>> +void qda_rpmsg_unregister(void);
>> +
>> +#endif /* __QDA_RPMSG_H__ */
>>
>> -- 
>> 2.34.1
>>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
