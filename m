Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HB9BW0Z4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:16:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 846F74127C4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:16:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 988F944111
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:16:27 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id B1BC03F779
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 08:11:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=dLrAYbxi;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=a6V84pVx;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62280UIM2446112
	for <linaro-mm-sig@lists.linaro.org>; Mon, 2 Mar 2026 08:11:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bKT2lOHVdbNkn4L+PlCSmA7nngbFfRJNo82IaP0zHDw=; b=dLrAYbxiNF7vvyK6
	SfLrKjq/5QhEdzKtiOGJpMAlUBmgBnsdvHRVnNL6SarLJwCyNmn2PP2Dw6paW7zr
	nYo8fH0aEF0W53Am0NrRUBvhOqD8oho/YUpKHCEjib21BnW14LFX8FbQNhx+SLtQ
	53xSK6zvSZ7Q0xXzdi+75hhBBSjUD983ojc0cMzriV2YOs3fN20pqBvGMZnf58nL
	tXNEmLWU1FUMJZSSKbat+DF+Kzh8ZnPDXzhiW+BeJTPhi4KgX5SjXoyd012GKB0q
	S8h5N4QoyNJfPq+WrGMcR+Ut7+9zhun+dskiYvyshBjzsTjpwGzwNjJiWbJ8A7En
	vOa7zg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksgq4q3t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 08:11:02 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae59e057f1so2109785ad.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 00:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772439061; x=1773043861; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bKT2lOHVdbNkn4L+PlCSmA7nngbFfRJNo82IaP0zHDw=;
        b=a6V84pVxQluQmqWi+GkJ+Ov0+1BNFQPuztyW6qDT7YTkpoipXepgHFntpdAjYJor9c
         phXvZO/4wbukb5daEW2RSX7+ST3un4J88n2dNM28yd64ZblfHqDLqjChtt0078rbFAeR
         +PHaw30kOfl6DB6e9N4r9ytn6IOdmYnymAwtKAYH8qcVA0qmRs63zA7pgZ2ire4JxH/p
         YuJwYlUJEDs8ybXGtLXifYNk8xUt1RPCBIle95lSO5nWl/uBnLsSPzSMlnn9XsumYC+7
         ne5GV8BAjv+i58z0Ft2/eQmPwlrXsV32YkmVyqCZ/vrKuJan7Rr7Mgy6PAjkcl0ijtyG
         jL2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772439061; x=1773043861;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bKT2lOHVdbNkn4L+PlCSmA7nngbFfRJNo82IaP0zHDw=;
        b=X/mnkLW6GzKZQ9OPqr+eHDq9cLjO4JKXghinV4Iknbfp3Nh7tN911W7C432Qo5ipTh
         wHWME44Sv4o4o7e/a8i4ggS/JXcd/ln2ctyqA0NcUrqHtHYdHptVLnaqe5YPNGv3H42Y
         9178UDjA1IoTfReQJNMzTR9icBRgVMd5DNvMDgdTfY0bSoOXBvhqc6BR9FwzGf5v4uOk
         k/BeslkQXpr3YZnsvGveV0nInlnFBw7xYtfXoIUxOIw3b/xZRIMXqfusTt/Q/2LK1zoe
         lShW/a30jlJP4hXotaVxCT/wODrC+8bd97OqAazJhutVmH6aRZpnQ7leOJaWvIstbLmG
         Lczw==
X-Forwarded-Encrypted: i=1; AJvYcCWMzgD0/T9UBdVpvL7AYk5Unc1dc+LDvdqabbvNZX/pIZ/za0/9HprzbrNbPoz1x0CHelceAitohqAql1er@lists.linaro.org
X-Gm-Message-State: AOJu0YxismTfwNTG3zVqUiBgQ+/PBsvzJaUMfLUzKDj+jQMHsUIrjTwk
	zbS49T8cn0wrghPjtXugDWoJjicVOLihGwesOV1psToxEo+ayG9x7WEJja//yqypd+sze4IePJP
	JWoTfwNkwH7oykvYNEBG7FPCoV706yraVCMHsR05XvuCy5yepgxk0r6ad1jqVtoXUI9ZwTA==
X-Gm-Gg: ATEYQzz5RiHVEUpQM2HmK1XsHj8BTQXiDUahCMy5DjQ2MYozWPq+3ino6rGJh54nkg3
	h8x5BMIyGldRr+tjz0jedvujPr6hCqYQbf4YjoziMHtEz1Qe8OS6gX1XHbOo36uQ/X/6EOxOc6u
	kLRbwD9t+hiATvTTZOOdRYPb0d+UAwU9WRk+1CY495+5cQo0Pd791AxKZhSosibKjSLWTELjfDY
	iU8wMRprSmFO8wJMKXz8sN+aGsh/vgy/mh/fncN/BTq/1dtyM6HL4HScmXVb+VHaETMBavdy0sU
	6gY6X/sOLDOoB3kjyzoiumjiHbUgPVt/gFWNIfF+9z9TB3lRvk6WOr7RuTJZg4Xjf9gaUUYvUkQ
	efb4zoe6dSBMV/Gzh79c7rKIqN+mPxzU/PWuw9kQqe/zYbK7iSQ==
X-Received: by 2002:a17:902:ea02:b0:2ad:c527:e9fd with SMTP id d9443c01a7336-2ae2e4b5a34mr128338485ad.41.1772439061398;
        Mon, 02 Mar 2026 00:11:01 -0800 (PST)
X-Received: by 2002:a17:902:ea02:b0:2ad:c527:e9fd with SMTP id d9443c01a7336-2ae2e4b5a34mr128338135ad.41.1772439060858;
        Mon, 02 Mar 2026 00:11:00 -0800 (PST)
Received: from [10.206.99.28] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae45e07626sm51334055ad.39.2026.03.02.00.10.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 00:11:00 -0800 (PST)
Message-ID: <0e38e009-8097-4a66-b04f-95468b731b6d@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 13:40:52 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-5-fe46a9c1a046@oss.qualcomm.com>
 <x3s26yr7oy2dokp4plsp67yndr7o4ps6nuj7i4zjze77ifljux@ap537se6npfg>
 <57937a68-7f22-4ca1-8980-0be12cf06c66@oss.qualcomm.com>
 <3y6rn5ujkdbc6cd2ooq7gobjvokwwrey2xoj4d3h2pavi7r5k6@rrc6bbmutz73>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <3y6rn5ujkdbc6cd2ooq7gobjvokwwrey2xoj4d3h2pavi7r5k6@rrc6bbmutz73>
X-Proofpoint-GUID: V_l6UOO5kSouxOkFbBtziXRPfPLdiVJJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3MSBTYWx0ZWRfX6k0cWKxThff9
 81mhu0sCV8vxX048jJaAUefo7U8xw6jZi1bu7ZBjDd8GlyHZ+PJwHIZKFK2Mxkel5axXHZzp4Zf
 Nfc0GwYEALjwYkGfnGE4VSfkuACAVUjR5ETyVkzFHJ5yEw/seMdUiJRuCwDNSh6jja3KrrDCasM
 YyVbKRtY3NAHh2m1k0do4iGQWo6d/8KiaoKp3wEWG6AQ5m7oOmxDQMFcKDl9/+fdkveId898ON2
 QILlRzSVvTgOusTcwywagc06dVZOsbmYc7huqwJJO4U7NuDSkrzUs111S1Lh4ZxR79MfPByZuIH
 WQfUJRLiBzgBydmuz4nUDFms/A1hgP6XxbhRfAxWlfjN2OpM/4OcXYePfxDzC/meS6BQt+zJ2AC
 fWy09+l2OF+ugrElkVH2Q35CIznhP594yu7r6XRpzyiJkQZYrBCV5ZZJ8s735XV+lyGsY1chHvI
 bCK026tD1fSH2WPLaDw==
X-Authority-Analysis: v=2.4 cv=bdRmkePB c=1 sm=1 tr=0 ts=69a54616 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=ze67pjzAHjlU0Io9_bMA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: V_l6UOO5kSouxOkFbBtziXRPfPLdiVJJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020071
X-Spamd-Bar: ------
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ODOSWQCU6HJ52RSQI5FHOT2YISHARK3Q
X-Message-ID-Hash: ODOSWQCU6HJ52RSQI5FHOT2YISHARK3Q
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:15 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 05/18] accel/qda: Create compute CB devices on QDA compute bus
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ODOSWQCU6HJ52RSQI5FHOT2YISHARK3Q/>
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
	DATE_IN_PAST(1.00)[1089];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 846F74127C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/26/2026 4:16 PM, Dmitry Baryshkov wrote:
> On Thu, Feb 26, 2026 at 02:08:57PM +0530, Ekansh Gupta wrote:
>>
>> On 2/24/2026 4:19 AM, Dmitry Baryshkov wrote:
>>> On Tue, Feb 24, 2026 at 12:38:59AM +0530, Ekansh Gupta wrote:
>>>> Add support for creating compute context-bank (CB) devices under
>>>> the QDA compute bus based on child nodes of the FastRPC RPMsg
>>>> device tree node. Each DT child with compatible
>>>> "qcom,fastrpc-compute-cb" is turned into a QDA-owned struct
>>>> device on qda_cb_bus_type.
>>>>
>>>> A new qda_cb_dev structure and cb_devs list in qda_dev track these
>>>> CB devices. qda_populate_child_devices() walks the DT children
>>>> during QDA RPMsg probe, creates CB devices, configures their DMA
>>>> and IOMMU settings using of_dma_configure(), and associates a SID
>>>> from the "reg" property when present.
>>>>
>>>> On RPMsg remove, qda_unpopulate_child_devices() tears down all CB
>>>> devices, removing them from their IOMMU groups if present and
>>>> unregistering the devices. This prepares the ground for using CB
>>>> devices as IOMMU endpoints for DSP compute workloads in later
>>>> patches.
>>> Are we loosing the nsessions support?
>> Yes, it's not part of this series. I'll try bringing that as well.
>>>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>>>> ---
>>>>  drivers/accel/qda/Makefile    |   1 +
>>>>  drivers/accel/qda/qda_cb.c    | 150 ++++++++++++++++++++++++++++++++++++++++++
>>>>  drivers/accel/qda/qda_cb.h    |  26 ++++++++
>>>>  drivers/accel/qda/qda_drv.h   |   3 +
>>>>  drivers/accel/qda/qda_rpmsg.c |  40 +++++++++++
>>>>  5 files changed, 220 insertions(+)
>>>>
>>>> diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
>>>> index 242684ef1af7..4aded20b6bc2 100644
>>>> --- a/drivers/accel/qda/Makefile
>>>> +++ b/drivers/accel/qda/Makefile
>>>> @@ -8,5 +8,6 @@ obj-$(CONFIG_DRM_ACCEL_QDA)	:= qda.o
>>>>  qda-y := \
>>>>  	qda_drv.o \
>>>>  	qda_rpmsg.o \
>>>> +	qda_cb.o \
>>>>  
>>>>  obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda_compute_bus.o
>>>> diff --git a/drivers/accel/qda/qda_cb.c b/drivers/accel/qda/qda_cb.c
>>>> new file mode 100644
>>>> index 000000000000..77a2d8cae076
>>>> --- /dev/null
>>>> +++ b/drivers/accel/qda/qda_cb.c
>>>> @@ -0,0 +1,150 @@
>>>> +// SPDX-License-Identifier: GPL-2.0-only
>>>> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>>> +#include <linux/dma-mapping.h>
>>>> +#include <linux/device.h>
>>>> +#include <linux/of.h>
>>>> +#include <linux/of_device.h>
>>>> +#include <linux/iommu.h>
>>>> +#include <linux/slab.h>
>>>> +#include "qda_drv.h"
>>>> +#include "qda_cb.h"
>>>> +
>>>> +static void qda_cb_dev_release(struct device *dev)
>>>> +{
>>>> +	kfree(dev);
>>> Do you need to put the reference on the OF node?
>> Reference put is happening as part of qda_destroy_cb_device.
> This way: you have a (small) window where of_node is already put (and
> might be gone), but the pointer is not NULL. The of_node should be put
> only when device is no longer accessible from the rest of the system, in
> release function.
I'll move put to release function to avoid suggested scenario. Thanks.
>
>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
