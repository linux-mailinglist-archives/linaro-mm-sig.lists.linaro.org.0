Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aILbNKIZ4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:17:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C5B4127EF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:17:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BCCE406F1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:17:21 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 3DA603F9BF
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 08:41:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=KTR2oiOD;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=a7CohgDd;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6227ghbJ2280383
	for <linaro-mm-sig@lists.linaro.org>; Mon, 2 Mar 2026 08:41:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	55NbmTrZJm9GduVqLSm7GShHdDsJirCn7I8r3hx6xVE=; b=KTR2oiODl0BzJmrE
	+HW+KRxtragNLQmRekHxYME1ZvZ5nZEYoQT0Rq+E4gxFuR/ILrYBCZoNOLiq/IaM
	B1DrVXc6D1vSK5Ywr00lOTCS3YI3mNH5wiP3tdykBX60JAPnSFIEih3hLp1sceqj
	aYftlqOKLt0LbuSyok924lije0Y5MMBc6kDzdcFUDWC5RMjIOlJ7DeYuyE5UdDfW
	KFY8OGeohMyq48Gm89mIognkkAQCZ1++ffst50lqtOnB+agADx4poEvo6YN9llwS
	jU4142KSiKGCGw9QdVZ2gBz1LiIXCY7lMeeuGB6xs+1F6t7psR1HoId8CU0+9sSr
	vIbQXA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksgrvtnb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 08:41:20 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-82739e0f53fso15388737b3a.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 00:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772440879; x=1773045679; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=55NbmTrZJm9GduVqLSm7GShHdDsJirCn7I8r3hx6xVE=;
        b=a7CohgDdEYqzAyj9qqEOH29+K+unbYAl2993PkEIkHobiyqP1UGrIt5G7d6JuLQzxh
         sOSnPmerKJZ9xY/+uqhvSZq8COPejnqVl2xl4k4pvSqZdKvHJFWUxj4GGF9EwaADalr6
         84PAm7ahwv+/wDYNNIFrDAW+UEi8bcMTu0f7ZfEDcSOZHt+J/Zi5cDxs2TBqgxiHcGjT
         +LHcO8MOqZJoov9++7mAtqnmjwj0O9iw+beguzBkNw2lgLL/ajgHbOop8ZQqIjEfgb8y
         91fW5GiHZgOmDNhaO1DgwcG59WJaip5gC1FgEzTmGeCiG4cdY2UXe7LRJpAkEGTJFux1
         dQzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772440879; x=1773045679;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=55NbmTrZJm9GduVqLSm7GShHdDsJirCn7I8r3hx6xVE=;
        b=LCqLZKGESYBQhgqHPEgl1/XIjXWk9CY6dYgTGvaRBss3En3MmDSBJUPahf6YLD3TUw
         lS9csv8IMG4u1IBabGOe2EtPFISX9KHdmUdDgQM3SBF5WmF+8irnDvNtiwsBz36eDDF3
         iMEwd8oRL5KDQVs1mkjC9cWtANurnhSa+C+OItGLHrHKdBfrrJgXEAuHOwh8XO2lpFlM
         RA4oB2x2cqyvbNNhSJUQr0bP1DLLAopM/J9JU/lmjc3jx2oWpjOEwF07pzPhofOYCkL/
         Al+Dvd09DQorvPpypvZup5rRxei6dElvROEIfuOiPeHqSuYXzvC77CLxaWUET9gfGM3t
         qwrg==
X-Forwarded-Encrypted: i=1; AJvYcCUz5qbdXWGt5VLU3BlSxwwi6rGg2xYf582+EtD/tKfyWs4JE3h1WsKiwgX9blD9QBTwQanhX4iZpvhw2Glb@lists.linaro.org
X-Gm-Message-State: AOJu0YxtYatqvardOdMTl74PTad7mKcYCS5UhrpOHcgQEZPzP6igVD7W
	6G6dObfC1/Q+8ObKNj6xfOY4fmHR2Gcaemgvnd5TpSkMlpM9yA6k+x5OznKsiuWGXAMUTWjhvE2
	hMbujAzqvsF+4KRs6YltNRbpCLe3t6kPDQkg+7u3mMhDVDWm7pkbfvSSKritaoO5M3GwFSQ==
X-Gm-Gg: ATEYQzzuHSKJskh+EHFBwj3SQh5XvZ2polXydPQeNj9+L7pXDNUjwr0tYzBiWqr/7lj
	vUT8VLpoqxccLRNiaiwOM6rs6tSscfXE9kisW5dOyR0HWIPu3Xu/vMx0IXUbn61RWhPXSgohprd
	fot4VYrL0n7timLB3kJDPMCdMcXn0YlwlZ2PtdAQXJMhYl1UvsAuU28MHuJkbtWeocN1Uu03qzh
	vqwn66lNtvfF7WfwGZ1kvLyxU95QZRO+NH7Of8DwTgMjKtLH8ji5PckoueA0O8u5lzp2GgymQ4I
	d7OkflKenEHl6ggF0x5rJe2vhRl2UPw9wyZvuAcAVfpC9x86defrlq0OSoKGa78oqS3U7AoJqm6
	1/ReOsG/XbdLgsaedzY1XovjB5157XKj81zzCaQHFMC9ne4eEHw==
X-Received: by 2002:a05:6a00:290a:b0:824:d09b:9126 with SMTP id d2e1a72fcca58-8274d93b441mr10896081b3a.14.1772440879308;
        Mon, 02 Mar 2026 00:41:19 -0800 (PST)
X-Received: by 2002:a05:6a00:290a:b0:824:d09b:9126 with SMTP id d2e1a72fcca58-8274d93b441mr10896044b3a.14.1772440878784;
        Mon, 02 Mar 2026 00:41:18 -0800 (PST)
Received: from [10.206.99.28] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739ff3667sm11746360b3a.41.2026.03.02.00.41.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 00:41:17 -0800 (PST)
Message-ID: <8bf132e4-527f-4000-9c74-972361b6db6d@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 14:11:08 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-9-fe46a9c1a046@oss.qualcomm.com>
 <fzfuaeninr7lfbn74reoare7y2zoflddcvvnvyifnriw26swjc@igixj73zawrv>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <fzfuaeninr7lfbn74reoare7y2zoflddcvvnvyifnriw26swjc@igixj73zawrv>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3NiBTYWx0ZWRfXynNU2/VSdwcY
 3+U4g9hyo8OmPXXqN1ozoS9PifFJ9pafzV2h4peSwXfi81OITETjXjyWFdEubDzXJlyRolOZpNm
 CjRL3BgHuea/DvJ64/IalqboKom3uqqeJoZgULwCSUqVNM9gL8OLEGxs5wHlan6Rz5YCbS2KlLs
 aTDLmXyJIXgfA4WB7hI1Y3HPggSTCjY7zhtE5psg7yC8/vG3MMzPhV/prjDBsKBIYii1O3hhfZs
 4QOAXK19F1Qqf5MMx0WvactDsLC8aB/nTs7RjJoe4yfDQeOBF6EWrw6YyYg8NcB1Z2U0GdUxjC8
 eAeeLsIf6gXuT2hcPYYaPc+7rYX4jmdvxglaXnIilj3kBL3MIYXKME1955KvD/UV5jvFI20beQp
 0exhNiL5vqpCfEJOZhpbOYO5u1dHrQvRHyVocQAvzHUhYfG8kCX2NqKmWAP4u9L5FXERFJ3sFQg
 1CibUU2EVoe0K+mG8xQ==
X-Proofpoint-GUID: DKs8ZoJBNPC-h04gGybX5ka52pUe4kPR
X-Proofpoint-ORIG-GUID: DKs8ZoJBNPC-h04gGybX5ka52pUe4kPR
X-Authority-Analysis: v=2.4 cv=Zqzg6t7G c=1 sm=1 tr=0 ts=69a54d30 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=SgWlgk4r4gR3U-ipCD8A:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 priorityscore=1501 phishscore=0
 suspectscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020076
X-Spamd-Bar: ------
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DDF2PJH6SFANEER76K77YBX6GVYCRKHT
X-Message-ID-Hash: DDF2PJH6SFANEER76K77YBX6GVYCRKHT
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:18 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 09/18] accel/qda: Add QUERY IOCTL and basic QDA UAPI header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DDF2PJH6SFANEER76K77YBX6GVYCRKHT/>
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
	DATE_IN_PAST(1.00)[1088];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email,oss.qualcomm.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 57C5B4127EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/24/2026 3:54 AM, Dmitry Baryshkov wrote:
> On Tue, Feb 24, 2026 at 12:39:03AM +0530, Ekansh Gupta wrote:
>> Introduce a basic UAPI for the QDA accelerator driver along with a
>> DRM IOCTL handler to query DSP device identity. A new UAPI header
>> include/uapi/drm/qda_accel.h defines DRM_QDA_QUERY, the corresponding
>> DRM_IOCTL_QDA_QUERY command, and struct drm_qda_query, which contains
>> a DSP name string.
>>
>> On the kernel side, qda_ioctl_query() validates the per-file context,
>> resolves the qda_dev instance from dev->dev_private, and copies the
>> DSP name from qdev->dsp_name into the query structure. The new
>> qda_ioctls[] table wires this IOCTL into the QDA DRM driver so
>> userspace can call it through the standard DRM command interface.
>>
>> This IOCTL provides a simple and stable way for userspace to discover
>> which DSP a given QDA device node represents and serves as the first
>> building block for a richer QDA UAPI in subsequent patches.
>>
>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>> ---
>>  drivers/accel/qda/Makefile    |  1 +
>>  drivers/accel/qda/qda_drv.c   |  9 +++++++++
>>  drivers/accel/qda/qda_ioctl.c | 45 +++++++++++++++++++++++++++++++++++++++++
>>  drivers/accel/qda/qda_ioctl.h | 26 ++++++++++++++++++++++++
>>  include/uapi/drm/qda_accel.h  | 47 +++++++++++++++++++++++++++++++++++++++++++
>>  5 files changed, 128 insertions(+)
>>
>> diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
>> index 7e96ddc40a24..f547398e1a72 100644
>> --- a/drivers/accel/qda/Makefile
>> +++ b/drivers/accel/qda/Makefile
>> @@ -10,5 +10,6 @@ qda-y := \
>>  	qda_rpmsg.o \
>>  	qda_cb.o \
>>  	qda_memory_manager.o \
>> +	qda_ioctl.o \
> Keep the list sorted, please.
ack
>
>>  
>>  obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda_compute_bus.o
>> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
>> index bf95fc782cf8..86758a9cd982 100644
>> --- a/drivers/accel/qda/qda_drv.c
>> +++ b/drivers/accel/qda/qda_drv.c
>> @@ -9,7 +9,10 @@
>>  #include <drm/drm_file.h>
>>  #include <drm/drm_gem.h>
>>  #include <drm/drm_ioctl.h>
>> +#include <drm/qda_accel.h>
>> +
>>  #include "qda_drv.h"
>> +#include "qda_ioctl.h"
>>  #include "qda_rpmsg.h"
>>  
>>  static struct qda_drm_priv *get_drm_priv_from_device(struct drm_device *dev)
>> @@ -128,11 +131,17 @@ static void qda_postclose(struct drm_device *dev, struct drm_file *file)
>>  
>>  DEFINE_DRM_ACCEL_FOPS(qda_accel_fops);
>>  
>> +static const struct drm_ioctl_desc qda_ioctls[] = {
>> +	DRM_IOCTL_DEF_DRV(QDA_QUERY, qda_ioctl_query, 0),
>> +};
>> +
>>  static struct drm_driver qda_drm_driver = {
>>  	.driver_features = DRIVER_COMPUTE_ACCEL,
>>  	.fops			= &qda_accel_fops,
>>  	.open			= qda_open,
>>  	.postclose		= qda_postclose,
>> +	.ioctls = qda_ioctls,
> Please select one style. Either you indent all assignments or you don't.
ack
>
>> +	.num_ioctls = ARRAY_SIZE(qda_ioctls),
>>  	.name = DRIVER_NAME,
>>  	.desc = "Qualcomm DSP Accelerator Driver",
>>  };
>> diff --git a/drivers/accel/qda/qda_ioctl.c b/drivers/accel/qda/qda_ioctl.c
>> new file mode 100644
>> index 000000000000..9fa73ec2dfce
>> --- /dev/null
>> +++ b/drivers/accel/qda/qda_ioctl.c
>> @@ -0,0 +1,45 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> +#include <drm/drm_ioctl.h>
>> +#include <drm/drm_gem.h>
>> +#include <drm/qda_accel.h>
>> +#include "qda_drv.h"
>> +#include "qda_ioctl.h"
>> +
>> +static int qda_validate_and_get_context(struct drm_device *dev, struct drm_file *file_priv,
>> +					struct qda_dev **qdev, struct qda_user **qda_user)
>> +{
>> +	struct qda_drm_priv *drm_priv = dev->dev_private;
>> +	struct qda_file_priv *qda_file_priv;
>> +
>> +	if (!drm_priv)
>> +		return -EINVAL;
>> +
>> +	*qdev = drm_priv->qdev;
>> +	if (!*qdev)
>> +		return -EINVAL;
> Can this actually happen or is it (un)wishful thinking?
>
>> +
>> +	qda_file_priv = (struct qda_file_priv *)file_priv->driver_priv;
>> +	if (!qda_file_priv || !qda_file_priv->qda_user)
>> +		return -EINVAL;
> What are you protecting against?
The intention for all these checks are to ensure channel is properly initialized before any
request is queued for any specific channel, I'll update the checks based on the current
initialization ordering.
>
>> +
>> +	*qda_user = qda_file_priv->qda_user;
>> +
>> +	return 0;
>> +}
>> +
>> +int qda_ioctl_query(struct drm_device *dev, void *data, struct drm_file *file_priv)
>> +{
>> +	struct qda_dev *qdev;
>> +	struct qda_user *qda_user;
>> +	struct drm_qda_query *args = data;
>> +	int ret;
>> +
>> +	ret = qda_validate_and_get_context(dev, file_priv, &qdev, &qda_user);
>> +	if (ret)
>> +		return ret;
>> +
>> +	strscpy(args->dsp_name, qdev->dsp_name, sizeof(args->dsp_name));
>> +
>> +	return 0;
>> +}
>> diff --git a/drivers/accel/qda/qda_ioctl.h b/drivers/accel/qda/qda_ioctl.h
>> new file mode 100644
>> index 000000000000..6bf3bcd28c0e
>> --- /dev/null
>> +++ b/drivers/accel/qda/qda_ioctl.h
>> @@ -0,0 +1,26 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#ifndef _QDA_IOCTL_H
>> +#define _QDA_IOCTL_H
>> +
>> +#include <linux/types.h>
>> +#include <linux/kernel.h>
>> +#include <drm/drm_ioctl.h>
>> +#include "qda_drv.h"
>> +
>> +/**
>> + * qda_ioctl_query - Query DSP device information and capabilities
>> + * @dev: DRM device structure
>> + * @data: User-space data containing query parameters and results
>> + * @file_priv: DRM file private data
>> + *
>> + * This IOCTL handler queries information about the DSP device.
>> + *
>> + * Return: 0 on success, negative error code on failure
>> + */
>> +int qda_ioctl_query(struct drm_device *dev, void *data, struct drm_file *file_priv);
>> +
>> +#endif /* _QDA_IOCTL_H */
>> diff --git a/include/uapi/drm/qda_accel.h b/include/uapi/drm/qda_accel.h
>> new file mode 100644
>> index 000000000000..0aad791c4832
>> --- /dev/null
>> +++ b/include/uapi/drm/qda_accel.h
>> @@ -0,0 +1,47 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only WITH Linux-syscall-note */
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#ifndef __QDA_ACCEL_H__
>> +#define __QDA_ACCEL_H__
>> +
>> +#include "drm.h"
>> +
>> +#if defined(__cplusplus)
>> +extern "C" {
>> +#endif
>> +
>> +/*
>> + * QDA IOCTL command numbers
>> + *
>> + * These define the command numbers for QDA-specific IOCTLs.
>> + * They are used with DRM_COMMAND_BASE to create the full IOCTL numbers.
>> + */
>> +#define DRM_QDA_QUERY	0x00
>> +/*
>> + * QDA IOCTL definitions
>> + *
>> + * These macros define the actual IOCTL numbers used by userspace applications.
>> + * They combine the command numbers with DRM_COMMAND_BASE and specify the
>> + * data structure and direction (read/write) for each IOCTL.
>> + */
>> +#define DRM_IOCTL_QDA_QUERY	DRM_IOR(DRM_COMMAND_BASE + DRM_QDA_QUERY, struct drm_qda_query)
>> +
>> +/**
>> + * struct drm_qda_query - Device information query structure
>> + * @dsp_name: Name of DSP (e.g., "adsp", "cdsp", "cdsp1", "gdsp0", "gdsp1")
>> + *
>> + * This structure is used with DRM_IOCTL_QDA_QUERY to query device type,
>> + * allowing userspace to identify which DSP a device node represents. The
>> + * kernel provides the DSP name directly as a null-terminated string.
>> + */
>> +struct drm_qda_query {
>> +	__u8 dsp_name[16];
>> +};
>> +
>> +#if defined(__cplusplus)
>> +}
>> +#endif
>> +
>> +#endif /* __QDA_ACCEL_H__ */
>>
>> -- 
>> 2.34.1
>>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
