Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5lHcFLRIKWpdTgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:21:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E032B668B0F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:21:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b="gFwvN/NT";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0132840A3F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:21:23 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 254B93F949
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 05:39:43 +0000 (UTC)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6535W9m51076723
	for <linaro-mm-sig@lists.linaro.org>; Wed, 3 Jun 2026 05:39:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oCMutz/MyDhFR2IPTdBR86gHzqmBqi9zc2xD34Nwwhs=; b=gFwvN/NT7sPgzj62
	CKGfx2dursqnvLzRufm2muLcqMueBJEB+BZxAbEt4edrnlERAoS6j0X4Ajqx+gaK
	CWje20/aKu6STz3GfeF6hjFnaNSqgsiDWLE4aL5QL+Zs3Nyr95e9wbpn/yte9H7r
	2A10xTZZRoPxz31s3zTCJURFa7fXLTWBwXHRSOTSoL9vLH4qSM8ZmKa3Ey9x5vtV
	87PG/GyLawCCKaQ0fBcHilkCoaFpapxASjXZH5D0QgtCf+z2Zlgmhi+yscU6KBwU
	GYq4ko++njlorEOxyUzmrBALO/wONWxVhQNTN2kGxiD3Nyw+qxUR+z3VHr3TF351
	eCOhHg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejckw0asy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 05:39:42 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-36d99333358so3130047a91.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Jun 2026 22:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780465181; x=1781069981; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oCMutz/MyDhFR2IPTdBR86gHzqmBqi9zc2xD34Nwwhs=;
        b=GSlcpybxoN2DJzrJauOObpGWsC1N5x/n0h1MbEVTPOiHIfzwEIdr2jQ+RfX/jrDCnJ
         SCA0f4PXPTyH1V/yFy1Ws2u+hDWYEpQk+SiUE5VizC3A7JlCcdVRn0rL8avf5DCoGxlp
         p3ocs4LgVPriMCGJ2tBoNGFMFBfSlsDbO1M5VCdbr/o7yEGcZxwJvkGcbOdiKOZCEnFW
         Q/f/nyf36ojekZD+nwlTtpJxbd5BuGdMQmyvdDgVupIWT2TmMvecKpPz9snMj4VMXuTc
         Uss+taGfs/euMbzBkmoQvdxm7s9Oi3tkTu/dQKCJsZsSv2CYWHbtNLqmrpBj9vkBTX3Q
         5d6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780465181; x=1781069981;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oCMutz/MyDhFR2IPTdBR86gHzqmBqi9zc2xD34Nwwhs=;
        b=MxALx074UxxY2Omty/LrCT9FyBHtTeQ0AMtTlwFldYrpOaA3VOPkWzzidqu5sVGekh
         KqvZr8gb0b8Tj31bzzzqi8V8z59paN8Os70acwsDJtWQdvg4agPeSD3CkToncpP7ZGUI
         CGzalYzOlnxsS0raWtoDxD+FYk4TnrZZo3W+fV8xDUC9hqa8LJS8UgNdxBYeUmAvibQN
         GfYbFOt6VgCfqC9TZN4GD6dqCiqONfYmk9NQF2P3vSjZg6i0tEWIWBMMMz7j3Euxgxpq
         ioshaEcHZkrlkqBzy0upopx9QoSEupawPiuuf3hKlYtmaG8xrdei6gEGjj27JZF6lcq8
         DFFQ==
X-Forwarded-Encrypted: i=1; AFNElJ9pa0KkvEIPonfR/+g0zF93cGCqpESpYguafgsg75VcwaRkWyKjKZOhzCgkbsMZZBVQF0eX1CFbrfNba5yx@lists.linaro.org
X-Gm-Message-State: AOJu0YyRZFeORhUs+cjBvUk248/61TsnoE4B15GJTvzL+tNzn/leYoHT
	B/cP11ZStViylZsOAIErN+Je1XmONM1hPix8GwiPeqUVk0RWoouP5yyoOrTI/DXeiRfoXJCnAOp
	CEHzc3QWGM1dpE8QHNLnwRBDOzpm+cb79xDgXgPxHIOHf6Q7WQalvxnUnuRBgjAK2cejPEA==
X-Gm-Gg: Acq92OEnpmD9w0+qSrvLkpo5/Q/t2Xpghc8U3XRTeAEDnZ896n3mVadGmn4+BHTqliD
	UqOWUhYw4bUm2RXJoPykuB75k3ZgFYh+WBdjBNSKebUXM4MD2LdX1UNQCYaSZSD16HjOsxXcFUr
	9FMIf+n3A+j0c/Rsvtm+WHd/erwY+ZTMMEW/YawPCoi1E7SW9iyzweGM2E7YEoY41xZ76fW+DLQ
	j64mQwbEBK0dTqQh6KTZN5rmZxPV3BwOpSBjPQYsZGf2fOFVAwVXmi/jzgJXdpodOqQBA5QgIpv
	ZVb9OCFuxvGe9D+aaslPK37LAnh5kN45jgpGOndTGBJYAsT2+FnTaMXOHuN7OhGhTOu5VWdRpfY
	JT7jPqjQVsRRqFjwBAMcNiDmiLvEYNKHfjDayo6sLrO/t4fjfTMtR/J9F9387
X-Received: by 2002:a05:6a00:4fc9:b0:841:dcbf:e82b with SMTP id d2e1a72fcca58-84284e19ebamr2089901b3a.12.1780465181448;
        Tue, 02 Jun 2026 22:39:41 -0700 (PDT)
X-Received: by 2002:a05:6a00:4fc9:b0:841:dcbf:e82b with SMTP id d2e1a72fcca58-84284e19ebamr2089869b3a.12.1780465180927;
        Tue, 02 Jun 2026 22:39:40 -0700 (PDT)
Received: from [10.204.78.54] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842829188b9sm1687035b3a.59.2026.06.02.22.39.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 22:39:40 -0700 (PDT)
Message-ID: <37ae68ba-6639-4bd2-9483-5aa0156fd772@oss.qualcomm.com>
Date: Wed, 3 Jun 2026 11:09:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-6-b2d984c297f8@oss.qualcomm.com>
 <f527lflctqyqjrotd2qerlx4oikg6st6u2seqsjw6u5krkqrab@uhw33gnkp5c7>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <f527lflctqyqjrotd2qerlx4oikg6st6u2seqsjw6u5krkqrab@uhw33gnkp5c7>
X-Proofpoint-ORIG-GUID: _Z-oMj01Q09EfNoU4S3em9YoApxAJUvk
X-Authority-Analysis: v=2.4 cv=edUNubEH c=1 sm=1 tr=0 ts=6a1fbe1e cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=qYmJ1cgbGSsHLxxvYMEA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDA1MSBTYWx0ZWRfX19RgptzeekTi
 wjQGKPNf/DKXFnbwjS6eltT0y/Ddfg+lfyFZfo0rff9/2zwz2jbghPhzoXrVfFjpDz5kO4k2O4v
 aSJ6DINCGMZguOnnID9cDPVkOAdOmEn49oR5tvLEnNoenxbciSCAw6OHrhdDPHVwMEz3lfvrZHk
 f9kl7iQSQ3YD5SjNsAWxqdb6p1EWvIecdC60yO7OyPQLTCzVuvruAAXcyeFGpDA5Tzn13Rxy5Wf
 wbEoFw2xT+WvHaInutiyhM/u0hvU9J0qWudJSe/I1ve4977Gt4sx21PAv9Byreaa+tVJ2NVZJ+f
 +Nu56HQ/9EvbgZyH9SlrzZ7znZUr/HBOc+lOCqxT5rm4T/wwWkrWAS1IV6Mawc5Aph9ADO5+VS0
 9lwyysmRBsZN8ikUjwOu0qJA2VaVVIk/An49im605QQmTzJX9hwOEY1FSV/vnyeeUBH5PzB9g5I
 nirR4jH6tzpeS3F9qyg==
X-Proofpoint-GUID: _Z-oMj01Q09EfNoU4S3em9YoApxAJUvk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_02,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606030051
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KY6AFJG6SIXNSHS5J6LUOZWTBPFUZEGO
X-Message-ID-Hash: KY6AFJG6SIXNSHS5J6LUOZWTBPFUZEGO
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:20:21 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 06/15] accel/qda: Create compute context bank devices on QDA compute bus
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KY6AFJG6SIXNSHS5J6LUOZWTBPFUZEGO/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,qualcomm.com:email,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E032B668B0F

On 20-05-2026 19:53, Dmitry Baryshkov wrote:
> On Tue, May 19, 2026 at 11:45:56AM +0530, Ekansh Gupta via B4 Relay wrote:
>> From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>>
>> Introduce the CB (compute context bank) device management layer for the
>> QDA driver. Each DSP domain node in the device tree may contain child
>> nodes with compatible "qcom,fastrpc-compute-cb", each representing one
>> IOMMU context bank. The driver enumerates those child nodes during
>> RPMsg probe and creates a corresponding device on the qda-compute-cb
>> bus for each one.
>>
>> The CB devices are created via create_qda_cb_device(), which registers
>> them on the qda-compute-cb bus so that the IOMMU subsystem assigns each
>> device its own IOMMU domain, enabling per-session address space
>> isolation for DSP buffer mapping.
>>
>> The new qda_cb.c file provides two functions:
>>
>>   qda_create_cb_device()
>>     Reads the "reg" property from the DT child node to obtain the
>>     stream ID, constructs a unique device name of the form
>>     "qda-cb-<dsp>-<sid>", and registers the device on the compute bus.
>>     A qda_cb_dev entry is allocated and appended to qdev->cb_devs so
>>     that the list can be walked during teardown.
>>
>>   qda_destroy_cb_device()
>>     Removes the device from its IOMMU group before calling
>>     device_unregister(), ensuring the IOMMU domain is released cleanly.
>>
>> CB devices are populated before the DRM device is registered and
>> destroyed before it is unplugged, so no DRM operation can race with
>> CB teardown. On probe failure after population, qda_cb_unpopulate()
>> is called to clean up any CBs that were successfully created before
>> the error.
>>
>> Assisted-by: Claude:claude-4-6-sonnet
>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>> ---
>>  drivers/accel/qda/Makefile    |  1 +
>>  drivers/accel/qda/qda_cb.c    | 99 +++++++++++++++++++++++++++++++++++++++++++
>>  drivers/accel/qda/qda_cb.h    | 32 ++++++++++++++
>>  drivers/accel/qda/qda_drv.c   |  1 +
>>  drivers/accel/qda/qda_drv.h   |  3 ++
>>  drivers/accel/qda/qda_rpmsg.c | 12 +++++-
>>  6 files changed, 147 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
>> index 424176f652a5..143c9e4e789e 100644
>> --- a/drivers/accel/qda/Makefile
>> +++ b/drivers/accel/qda/Makefile
>> @@ -6,6 +6,7 @@
>>  obj-$(CONFIG_DRM_ACCEL_QDA)	:= qda.o
>>  
>>  qda-y := \
>> +	qda_cb.o \
>>  	qda_drv.o \
>>  	qda_rpmsg.o
>>  
>> diff --git a/drivers/accel/qda/qda_cb.c b/drivers/accel/qda/qda_cb.c
>> new file mode 100644
>> index 000000000000..77caf8438c67
>> --- /dev/null
>> +++ b/drivers/accel/qda/qda_cb.c
>> @@ -0,0 +1,99 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> +#include <linux/dma-mapping.h>
>> +#include <linux/device.h>
>> +#include <linux/of.h>
>> +#include <linux/iommu.h>
>> +#include <linux/qda_compute_bus.h>
>> +#include <linux/slab.h>
>> +#include <drm/drm_print.h>
>> +#include "qda_drv.h"
>> +#include "qda_cb.h"
>> +
>> +int qda_create_cb_device(struct qda_dev *qdev, struct device_node *cb_node)
>> +{
>> +	struct device *cb_dev;
>> +	u32 sid = 0;
>> +	char name[64];
>> +	struct qda_cb_dev *entry;
>> +
>> +	drm_dbg_driver(&qdev->drm_dev, "Creating CB device for node: %s\n", cb_node->name);
>> +
>> +	of_property_read_u32(cb_node, "reg", &sid);
>> +
>> +	snprintf(name, sizeof(name), "qda-cb-%s-%u", qdev->dsp_name, sid);
>> +
>> +	cb_dev = create_qda_cb_device(qdev->dev, name, DMA_BIT_MASK(32), cb_node);
> 
> Wrong prefix. Pass the name format and the params to this function. Use
> kasprintf in it.
ack>
>> +	if (IS_ERR(cb_dev)) {
>> +		drm_err(&qdev->drm_dev, "Failed to create CB device for SID %u: %ld\n",
>> +			sid, PTR_ERR(cb_dev));
>> +		return PTR_ERR(cb_dev);
>> +	}
>> +
>> +	entry = kzalloc_obj(*entry);
>> +	if (!entry) {
>> +		device_unregister(cb_dev);
>> +		return -ENOMEM;
>> +	}
>> +
>> +	entry->dev = cb_dev;
>> +	list_add_tail(&entry->node, &qdev->cb_devs);
>> +
>> +	drm_dbg_driver(&qdev->drm_dev, "Successfully created CB device for SID %u\n", sid);
>> +	return 0;
>> +}
>> +
>> +void qda_cb_unpopulate(struct qda_dev *qdev)
>> +{
>> +	struct qda_cb_dev *entry, *tmp;
>> +
>> +	list_for_each_entry_safe(entry, tmp, &qdev->cb_devs, node) {
>> +		list_del(&entry->node);
>> +		qda_destroy_cb_device(entry->dev);
>> +		kfree(entry);
>> +	}
>> +}
>> +
>> +int qda_cb_populate(struct qda_dev *qdev, struct device_node *parent_node)
>> +{
>> +	struct device_node *child;
>> +	int count = 0, success = 0;
>> +
>> +	for_each_child_of_node(parent_node, child) {
>> +		if (of_device_is_compatible(child, "qcom,fastrpc-compute-cb")) {
>> +			count++;
>> +			if (qda_create_cb_device(qdev, child) == 0) {
>> +				success++;
>> +				dev_dbg(qdev->dev, "Created CB device for node: %s\n",
>> +					child->name);
> 
> Stop counting successes.
> 
>> +			} else {
>> +				dev_err(qdev->dev, "Failed to create CB device for: %s\n",
>> +					child->name);
> 
> Unwind, return error.
> 
ack>> +			}
>> +		}
>> +	}
>> +	if (count == 0)
>> +		return 0;
>> +	return success > 0 ? 0 : -ENODEV;
>> +}
>> +
>> +void qda_destroy_cb_device(struct device *cb_dev)
>> +{
>> +	struct iommu_group *group;
>> +
>> +	if (!cb_dev) {
> 
> How can it be?
I'll remove this.>
>> +		pr_debug("qda: NULL CB device passed to destroy\n");
>> +		return;
>> +	}
>> +
>> +	dev_dbg(cb_dev, "Destroying CB device %s\n", dev_name(cb_dev));
>> +
>> +	group = iommu_group_get(cb_dev);
>> +	if (group) {
>> +		dev_dbg(cb_dev, "Removing %s from IOMMU group\n", dev_name(cb_dev));
> 
> Be uniform. It's either drm_dbg_foo() or dev_dbg() all over the place.
> Don't mix them.
ack>
>> +		iommu_group_remove_device(cb_dev);
>> +		iommu_group_put(group);
>> +	}
>> +
>> +	device_unregister(cb_dev);
>> +}
>> @@ -59,9 +61,17 @@ static int qda_rpmsg_probe(struct rpmsg_device *rpdev)
>>  	}
>>  	qdev->dsp_name = label;
>>  
>> +	ret = qda_cb_populate(qdev, rpdev->dev.of_node);
>> +	if (ret) {
>> +		dev_err(qdev->dev, "Failed to populate child devices: %d\n", ret);
>> +		return ret;
>> +	}
>> +
>>  	ret = qda_register_device(qdev);
>> -	if (ret)
>> +	if (ret) {
>> +		qda_cb_unpopulate(qdev);
>>  		return ret;
> 
> Unwinding registration?
did I miss something here? The intention to free up the CB devices in
case the device registration fails.>
>> +	}
>>  
>>  	drm_info(&qdev->drm_dev, "QDA RPMsg probe complete for %s\n", qdev->dsp_name);
>>  	return 0;
>>
>> -- 
>> 2.34.1
>>
>>
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
