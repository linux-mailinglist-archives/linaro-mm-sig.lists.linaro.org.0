Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Slz1B8FIKWpiTgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:21:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD28668B1C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:21:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=nyd0xvc3;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC6CC40A52
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:21:35 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id DBCC83F79C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 05:45:02 +0000 (UTC)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6535Wnbu260521
	for <linaro-mm-sig@lists.linaro.org>; Wed, 3 Jun 2026 05:45:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jD4EFN8Ib2vXd/ldbSvARuiM8o4JnTecmLZxDIIYI3o=; b=nyd0xvc38qGbLOMG
	UfHnb4VdWUp5i29VrqUpHjKTi7OpdukBs4avraR0zi4jlw2chzcBnD5PDoI8DUOj
	WuayLgSxLQ13A8lEroReSxKimfdbUH2JJw8ZLAPm5r+oTsiiYNbMzCb+NaSIZSBd
	mGwFBGBDx/VLUvNMvQS7V8VdoyBFCvWV7oSo6qNnuZXwXAatlGOjhk237ZfMrCRc
	4Y5eOs4JXAgvZDmUWVArjXlHM1yfJfSBol0ciyAFguLOiGv2Hw/MUMcaJAVzTFzK
	lVvF1Y1fVS7LAx3R05M1uYRKt9m+fOQTzD1/BltriPzL4Qoaei9Q7yr5W9R8Gam6
	2JBdhA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ehs9vwemm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 05:45:01 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2bf3636d6c0so45053385ad.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Jun 2026 22:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780465501; x=1781070301; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jD4EFN8Ib2vXd/ldbSvARuiM8o4JnTecmLZxDIIYI3o=;
        b=NOI3zf0qnClC6mQZBzdEMLTs9Z9+u7OW4Jm3EshGrziAfsKr8017P+TquUuyUltOCx
         GUy9gLcS3fe5h6XJEaA1e5mb1VeMj/s6gMuiXOUuITdOV08IfTFNUuy5tCWatQx+g2SO
         XvjIu9l9JOFgimWc3wxCvyYxUzCsFKz6piz5xNAWj5qlUL0tOAI2Qk7fB9d9T00PvQA4
         gTuzYKCT0xJRPPVItOgdoACO59hMe97tnc3yfyvzGXMzve6GInqaNkc8OK7gyLyjyT2X
         3rldxUmYP6nBHvbd3IfEK6/pht2Y3beIhXjN1br8D/4DA+tqrCxpouR05E0KdnL2s+vm
         SoYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780465501; x=1781070301;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jD4EFN8Ib2vXd/ldbSvARuiM8o4JnTecmLZxDIIYI3o=;
        b=s9zG6mQFwVuB91AKQ/tKtVJwCzg/x0WzcV7W0cHgkIUMn5+GfIYWAMIdZpgfQyPfdp
         b0x+UPZYUkXJPm3XMZvfbKderjkx4u9y+7bJIhO1B5CtsUbV6xZn6zsYcc1ANHIcpgBO
         TryCZe/4l6ciNfbIkXbGrAAmh0dmz65mdMt86gb6YTnTpZHgnCKmKwbaIQvtOA3tJbKz
         vJ4bFU2QbR2jxsFfFwOJ3XO8LD1KazSWck6aPdXwz+N1mx49tixT9Z/HfhSnMEukwHih
         rgDOVHq7/pWcr44jzENSdNWertlVGhpHiRFnTxm7Kbdp2Eo9Pjo10/FNJT6Me9BUocud
         eyIQ==
X-Forwarded-Encrypted: i=1; AFNElJ+zyb/H6ititshiutrli94FiMu9/zrkTqf3JPeb0H07ihVdEL4IbEpCzUUHefOX9mFqQJVcHCNuZn+8R3vQ@lists.linaro.org
X-Gm-Message-State: AOJu0YzFcSWBnreuwxocVNJXKiqXs6SE0fJbPZSsxayUAdJ9CL6fTFN2
	flOTHzjnrlkhZ+8V+oUHlO8bQYc5HDLDv1zzKcRjwTbjkPpg3qdIQAbjqbQBaiNIUXfvFhR5xjT
	oy5/MLw9tAi/ms4dn3AG7zcZah4xyCo6xr/+CNo/68RRwr9O5LFb1bFryGkmSHwj/3Yrj5w==
X-Gm-Gg: Acq92OEX2211YUhYQXyAQZz2UNT3KER3Lmw+m0sKO1CyVGQNcpKS43R1qUuurji55wT
	04SXA2LdwWHTMG5t6gkCK7rGiv9MyVb/Mi/qjrUsQkpkIL5/u/n+cAnsWBXLT8zynj8VnuB4F0j
	STQZ+4GOGyrgwV5VJao+3drMvg37U2ydeba/q+M9Q9UeJHR2phAE7kAPt8CBRmJNiawmcyNR452
	BhD5aM2BqxEDaL5bKOkVdULrzxpEdzwM1K3Zl6W4BwU3FLhfIYEQ3CapkUwiwKSWdufIoWjz2jJ
	lp6s+q5ccj2GStevQedtgTcsBbWKrlvpR1+vrg7nTSTvZ3ed8YGsaEtNkZL56CywxfwskNWq831
	/E6HIW9Nh9CC4Ut9ecVadQnxErYPo9M62ngTR0U1hbLvikfMQLHClOSz8PO9H
X-Received: by 2002:a17:903:19ef:b0:2c0:ca99:3d73 with SMTP id d9443c01a7336-2c163a28aa4mr20236005ad.8.1780465500695;
        Tue, 02 Jun 2026 22:45:00 -0700 (PDT)
X-Received: by 2002:a17:903:19ef:b0:2c0:ca99:3d73 with SMTP id d9443c01a7336-2c163a28aa4mr20235635ad.8.1780465500059;
        Tue, 02 Jun 2026 22:45:00 -0700 (PDT)
Received: from [10.204.78.54] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c16609e0bbsm11366185ad.50.2026.06.02.22.44.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 22:44:59 -0700 (PDT)
Message-ID: <2e66a50b-f392-4ce3-89d2-997e9fef0e6b@oss.qualcomm.com>
Date: Wed, 3 Jun 2026 11:14:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-7-b2d984c297f8@oss.qualcomm.com>
 <sbktzorprxvo5625zkqwjgsaj723xtbsgzyypbnbgdbbxdgnnh@do5rprsx4oxr>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <sbktzorprxvo5625zkqwjgsaj723xtbsgzyypbnbgdbbxdgnnh@do5rprsx4oxr>
X-Proofpoint-GUID: rbLUgQnz1VJodF_zcn7tL05-B6YwMi80
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDA1MiBTYWx0ZWRfX4AOPV9PJk3wD
 FJNU3s69WfaqPDG1SzbYCwq2Tp9r/mnU7VKaENp5o4MwBPg95t9QFQKEyYI2vRm1iOcFKZLnHkg
 IG0nTJptuOTKVqGM+x+wQppGl+PzlVHn+7YpipDXb4qk04GHunJBkHkauN45Mm+igopuAIz86c5
 Zg9NzCCMS+La52VJROKnXEy6bi1ZO7CcwFyQgTqiQyJQSRDxpMPgMq86N4IuYhMWJIVmLTybs5W
 iR75xXBFwkSEoY3UkpJZW1cIb5AUBRSubaMOC2qX0k+75lv1U5A8Q63ArhOahB70NeTU1dolvbe
 4w2kE3pCsYfTjSgUCKwq6QBGkVANTHpypaa3+txLJjQzw0S+cn8gMlvaP8gBcid4yepNbjTDt9x
 Rx6409XcJeZUm2W0KbttOrOhyzer8iQm19ChBElhdAe81YjjvEzQnRMauqogGv8S5l/9KdBG9d6
 gSiqydAisfxSFQiElQw==
X-Authority-Analysis: v=2.4 cv=NYfWEWD4 c=1 sm=1 tr=0 ts=6a1fbf5d cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=njyYu5vTmptnp6f7sR4A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: rbLUgQnz1VJodF_zcn7tL05-B6YwMi80
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_02,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606030052
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HSOJEL4TF5BXBK7P52DHMIBIWNZZKA5D
X-Message-ID-Hash: HSOJEL4TF5BXBK7P52DHMIBIWNZZKA5D
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:20:21 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 07/15] accel/qda: Add memory manager for CB devices
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HSOJEL4TF5BXBK7P52DHMIBIWNZZKA5D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[173];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:ogabbay@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:quic_bkumar@quicinc.com,m:quic_chennak@quicinc.com,m:srini@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ACD28668B1C

On 20-05-2026 19:56, Dmitry Baryshkov wrote:
> On Tue, May 19, 2026 at 11:45:57AM +0530, Ekansh Gupta via B4 Relay wrote:
>> From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>>
>> Introduce the QDA memory manager (qda_memory_manager) to track and
>> manage the IOMMU devices that back each compute context bank (CB).
>>
>> Each CB device registered on the qda-compute-cb bus is assigned a
>> unique ID via an XArray and wrapped in a qda_iommu_device descriptor
> 
> Why do you need an XArray? The number of devices is (more or less)
> fixed. You can use a normal array, allocated in the probe function after
> counting OF children nodes.
Normal array should be fine here, I'll check and remove this.>
>> that records the device pointer and its stream ID. This registry
>> allows the driver to look up the correct IOMMU domain for a given
>> session when mapping DSP buffers.
>>
>> The memory manager is initialised in qda_init_device() before CB
>> devices are populated and torn down in qda_deinit_device() after they
>> are destroyed, ensuring no dangling references remain in the XArray.
>>
>> qda_cb.c is extended with qda_cb_setup_device(), which is called
>> immediately after a CB device is registered on the bus. It allocates
>> a qda_iommu_device, registers it with the memory manager, and stores
>> it as the CB device's driver data so that qda_destroy_cb_device() can
>> retrieve and unregister it during teardown.
>>
>> Assisted-by: Claude:claude-4-6-sonnet
>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>> ---
>>  drivers/accel/qda/Makefile             |   1 +
>>  drivers/accel/qda/qda_cb.c             |  47 ++++++++++++++
>>  drivers/accel/qda/qda_drv.c            |  34 ++++++++++
>>  drivers/accel/qda/qda_drv.h            |   5 ++
>>  drivers/accel/qda/qda_memory_manager.c | 111 +++++++++++++++++++++++++++++++++
>>  drivers/accel/qda/qda_memory_manager.h |  49 +++++++++++++++
>>  drivers/accel/qda/qda_rpmsg.c          |   7 +++
>>  7 files changed, 254 insertions(+)
>>
>> diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
>> index 143c9e4e789e..701fad5ffb50 100644
>> --- a/drivers/accel/qda/Makefile
>> +++ b/drivers/accel/qda/Makefile
>> @@ -8,6 +8,7 @@ obj-$(CONFIG_DRM_ACCEL_QDA)	:= qda.o
>>  qda-y := \
>>  	qda_cb.o \
>>  	qda_drv.o \
>> +	qda_memory_manager.o \
>>  	qda_rpmsg.o
>>  
>>  obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda_compute_bus.o
>> diff --git a/drivers/accel/qda/qda_cb.c b/drivers/accel/qda/qda_cb.c
>> index 77caf8438c67..6d540bb0ec7b 100644
>> --- a/drivers/accel/qda/qda_cb.c
>> +++ b/drivers/accel/qda/qda_cb.c
>> @@ -8,11 +8,42 @@
>>  #include <linux/slab.h>
>>  #include <drm/drm_print.h>
>>  #include "qda_drv.h"
>> +#include "qda_memory_manager.h"
>>  #include "qda_cb.h"
>>  
>> +static int qda_cb_setup_device(struct qda_dev *qdev, struct device *cb_dev, u32 sid)
>> +{
>> +	struct qda_iommu_device *iommu_dev;
>> +	int rc;
>> +
>> +	drm_dbg_driver(&qdev->drm_dev, "Setting up CB device %s\n", dev_name(cb_dev));
>> +
>> +	iommu_dev = kzalloc_obj(*iommu_dev);
>> +	if (!iommu_dev)
>> +		return -ENOMEM;
>> +
>> +	iommu_dev->dev = cb_dev;
>> +	iommu_dev->qdev = qdev;
>> +	iommu_dev->sid = sid;
>> +
>> +	rc = qda_memory_manager_register_device(qdev->iommu_mgr, iommu_dev);
>> +	if (rc) {
>> +		drm_err(&qdev->drm_dev, "Failed to register IOMMU device: %d\n", rc);
>> +		kfree(iommu_dev);
>> +		return rc;
>> +	}
>> +
>> +	dev_set_drvdata(cb_dev, iommu_dev);
>> +
>> +	drm_dbg_driver(&qdev->drm_dev, "CB device setup complete - SID: %u\n", sid);
>> +
>> +	return 0;
>> +}
>> +
>>  int qda_create_cb_device(struct qda_dev *qdev, struct device_node *cb_node)
>>  {
>>  	struct device *cb_dev;
>> +	int ret;
>>  	u32 sid = 0;
>>  	char name[64];
>>  	struct qda_cb_dev *entry;
>> @@ -30,6 +61,13 @@ int qda_create_cb_device(struct qda_dev *qdev, struct device_node *cb_node)
>>  		return PTR_ERR(cb_dev);
>>  	}
>>  
>> +	ret = qda_cb_setup_device(qdev, cb_dev, sid);
>> +	if (ret) {
>> +		drm_err(&qdev->drm_dev, "CB device setup failed: %d\n", ret);
>> +		device_unregister(cb_dev);
>> +		return ret;
>> +	}
>> +
>>  	entry = kzalloc_obj(*entry);
>>  	if (!entry) {
>>  		device_unregister(cb_dev);
>> @@ -80,6 +118,7 @@ int qda_cb_populate(struct qda_dev *qdev, struct device_node *parent_node)
>>  void qda_destroy_cb_device(struct device *cb_dev)
>>  {
>>  	struct iommu_group *group;
>> +	struct qda_iommu_device *iommu_dev;
>>  
>>  	if (!cb_dev) {
>>  		pr_debug("qda: NULL CB device passed to destroy\n");
>> @@ -88,6 +127,14 @@ void qda_destroy_cb_device(struct device *cb_dev)
>>  
>>  	dev_dbg(cb_dev, "Destroying CB device %s\n", dev_name(cb_dev));
>>  
>> +	iommu_dev = dev_get_drvdata(cb_dev);
>> +	if (iommu_dev && iommu_dev->qdev && iommu_dev->qdev->iommu_mgr) {
>> +		dev_dbg(cb_dev, "Unregistering IOMMU device for %s\n",
>> +			dev_name(cb_dev));
>> +		qda_memory_manager_unregister_device(iommu_dev->qdev->iommu_mgr,
>> +						     iommu_dev);
>> +	}
>> +
>>  	group = iommu_group_get(cb_dev);
>>  	if (group) {
>>  		dev_dbg(cb_dev, "Removing %s from IOMMU group\n", dev_name(cb_dev));
>> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
>> index 6c20d6a2fc47..0ad5d9873d7e 100644
>> --- a/drivers/accel/qda/qda_drv.c
>> +++ b/drivers/accel/qda/qda_drv.c
>> @@ -57,6 +57,40 @@ struct qda_dev *qda_alloc_device(struct device *dev)
>>  	return qdev;
>>  }
>>  
>> +static void cleanup_memory_manager(struct qda_dev *qdev)
> 
> Prefixes...
ack>
>> +{
>> +	if (qdev->iommu_mgr) {
>> +		qda_memory_manager_exit(qdev->iommu_mgr);
>> +		kfree(qdev->iommu_mgr);
>> +		qdev->iommu_mgr = NULL;
>> +	}
>> +}
>> +
>> +static int init_memory_manager(struct qda_dev *qdev)
>> +{
>> +	qdev->iommu_mgr = kzalloc_obj(*qdev->iommu_mgr);
>> +	if (!qdev->iommu_mgr)
>> +		return -ENOMEM;
>> +
>> +	return qda_memory_manager_init(qdev->iommu_mgr);
>> +}
>> +
>> +void qda_deinit_device(struct qda_dev *qdev)
>> +{
>> +	cleanup_memory_manager(qdev);
> 
> Ugh, inline all your one-line wrappers.
ack>
>> +}
>> +
>> +int qda_init_device(struct qda_dev *qdev)
>> +{
>> +	int ret;
>> +
>> +	ret = init_memory_manager(qdev);
>> +	if (ret)
>> +		drm_err(&qdev->drm_dev, "Failed to initialize memory manager: %d\n", ret);
>> +
>> +	return ret;
>> +}
>> +
>>  void qda_unregister_device(struct qda_dev *qdev)
>>  {
>>  	drm_dev_unregister(&qdev->drm_dev);
>> diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
>> index 2715f378775d..eb089e586b17 100644
>> --- a/drivers/accel/qda/qda_drv.h
>> +++ b/drivers/accel/qda/qda_drv.h
>> @@ -13,6 +13,7 @@
>>  #include <drm/drm_device.h>
>>  #include <drm/drm_drv.h>
>>  #include <drm/drm_file.h>
>> +#include "qda_memory_manager.h"
>>  
>>  /* Driver identification */
>>  #define QDA_DRIVER_NAME "qda"
>> @@ -40,6 +41,8 @@ struct qda_dev {
>>  	struct device *dev;
>>  	/** @cb_devs: Compute context-bank (CB) child devices */
>>  	struct list_head cb_devs;
>> +	/** @iommu_mgr: IOMMU/memory manager instance */
>> +	struct qda_memory_manager *iommu_mgr;
>>  	/** @dsp_name: Name of the DSP domain (e.g. "cdsp", "adsp") */
>>  	const char *dsp_name;
>>  };
>> @@ -59,6 +62,8 @@ static inline struct qda_dev *qda_dev_from_drm(struct drm_device *dev)
>>  struct qda_dev *qda_alloc_device(struct device *dev);
>>  
>>  /* Core device lifecycle */
>> +int qda_init_device(struct qda_dev *qdev);
>> +void qda_deinit_device(struct qda_dev *qdev);
>>  int qda_register_device(struct qda_dev *qdev);
>>  void qda_unregister_device(struct qda_dev *qdev);
>>  
>> diff --git a/drivers/accel/qda/qda_memory_manager.c b/drivers/accel/qda/qda_memory_manager.c
>> new file mode 100644
>> index 000000000000..00a9c0ae4224
>> --- /dev/null
>> +++ b/drivers/accel/qda/qda_memory_manager.c
>> @@ -0,0 +1,111 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> +
>> +#include <linux/refcount.h>
>> +#include <linux/slab.h>
>> +#include <linux/spinlock.h>
>> +#include <linux/xarray.h>
>> +#include <drm/drm_file.h>
>> +#include "qda_drv.h"
>> +#include "qda_memory_manager.h"
>> +
>> +static void cleanup_all_memory_devices(struct qda_memory_manager *mem_mgr)
>> +{
>> +	unsigned long index;
>> +	void *entry;
>> +
>> +	pr_debug("qda: Starting cleanup of all memory devices\n");
> 
> pr_debug is a third way to debug. Stop it, please.
ack>
>> +
>> +	xa_for_each(&mem_mgr->device_xa, index, entry) {
>> +		struct qda_iommu_device *iommu_dev = entry;
>> +
>> +		pr_debug("qda: Cleaning up device id=%lu\n", index);
>> +
>> +		xa_erase(&mem_mgr->device_xa, index);
>> +		kfree(iommu_dev);
>> +	}
>> +
>> +	pr_debug("qda: Completed cleanup of all memory devices\n");
>> +}
>> +
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
