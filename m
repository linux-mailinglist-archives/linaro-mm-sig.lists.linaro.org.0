Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJzsLMcZ4Wn3pAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:17:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 250A041282B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:17:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3AE7E445A4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:17:58 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 294683ED23
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 09:07:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=KxEzbdGC;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=QFSgwsGS;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6227e2VU2318643
	for <linaro-mm-sig@lists.linaro.org>; Mon, 2 Mar 2026 09:07:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kXwg+e8w3nJ4trgH31uq0Czj0o2II8vsG1Y2JNLZRpM=; b=KxEzbdGCs4hAdRn4
	vsYCcuDDN+XEaSmt5f3FIsF1ze23z72sfGKzX+E92H/HfsKiVVmq/fDrNZZ03m0s
	x8JmTmx60LFfn7HIQ5BxWKFfp3cYkt1aE/B5hfHfFF3eIPQVtMV/uN9Sejb55VV8
	2JYNilAlhSQHpf8WrYvjxrhsYehGM3CQdd/QbHNDMe482Btm2Uz+Uxm2EbenrDgi
	ngK93U9CD2xEggZoMGI9bD4i9FSYZHe2Uqbxok9z4zKS0vKCBqXBFZXnMnoS2z1j
	A8fQNOLa5d92YUwXaADpaAOnk5QDWtx96q2gHnq52vUcKlAnLz8kwAL9phBi4JJz
	05OKyQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksgrvxpf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 09:07:12 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35842aa350fso22199771a91.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 01:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772442431; x=1773047231; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kXwg+e8w3nJ4trgH31uq0Czj0o2II8vsG1Y2JNLZRpM=;
        b=QFSgwsGSNqfDbyiwZSXrqTx7LUaN7quZUKRvlRVl9qrzL/kty6C204RyjjKu5VzRcO
         iyFHpZnM4WHHFPgMPbMgajLzmQzLkYrwiq7zYgfkLt6rbOWTfpxSr7w6oLqlRjivyVGs
         yn61iW5HsACSfr7a73yAH9XdbGWOY+dgoZHUIQX9ha0MdocRrbVTKdnT3lGHmpsvn3L8
         wvbz6T+wp2iugF/Z+qy/8jSQbnKDMGfzYeCqff39Wpdo+y+NOl3ZH/VO4K7sem9vxmOp
         dU8Llf46uvfk+jDdoLFhASeJQTtR26P5jNpcmwkU0+AN0/M022N3bJm6rB3ohP/PSrKA
         3WUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772442431; x=1773047231;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kXwg+e8w3nJ4trgH31uq0Czj0o2II8vsG1Y2JNLZRpM=;
        b=NKICdcKfyWbW+KbLRDeE4fuItjcFXMntIBN70RLYAnF2C6UvpSDjVQhlj4nQhnWPyi
         EUxZGZLEMoMYWIBRa/yTSO4hsrUKxkjg9mhfIEQ+OlBcLBTcpp7Mqt2Ca2lXNya32z7r
         sr2jrcnlQWdCPnb0yMiW0LXvZgQ17VZ6MH9jbIpPH/8W6iu5X32L3bQGkVy8favysCla
         m5PPmzfXGCXZpJxfREUWVUmDH+kakIHXYv30qDiOHgLuxVqNzRcucuFsZ6EQo/buQ5hb
         u58WnGRTWU/LzfFuj73RDRKJGUaEvno+SxYPHG3XDtyi8ws96/J+WgbPhSiVBbsaLSEb
         BCzg==
X-Forwarded-Encrypted: i=1; AJvYcCUn5NyDCcTJ8cExeWwlE7E7RbpOBKZjleUrVrBbaVkOPGJfbm+XyRqfKNxRzfToLxKmFEccxhbRKPMdtX7A@lists.linaro.org
X-Gm-Message-State: AOJu0YyBlz/nmLc5CF8SkM81rfI57U5fMn9ajyXZ32QXVmI2wMKx7ISm
	r4EavK7rnrfkuZ/kjS7+pT04K2X94OazN7/LpzRJ9uew6BOaJ8cZwLtlluiKobNeZKskrVzARSM
	G5MGu1lkY3rlVTNcORfqEC+A8Ls7ywd7XS/sv+pr/njpB56bx4KasSDxPU+IXauDg6PKozg==
X-Gm-Gg: ATEYQzyz+LcSidOy3MY3ZQtPW2JjKvxV2yHCV83G55xS5KKUvMa3ABFXB9RKYBt398s
	j0rBWZ2YP4rdNI/dp5/PopuQ2+m2LwwwO/T4QTq1waJp5nwBDUSYo8BaIPHSw6k0ca6aCd95cc8
	O4CZPI+hjjyqM9Chnqa2qyuMHDE3VcAhLf4++odMGFXCayDN4a6m44A6Y/YHUbtcBVjWhESzQyr
	hrGGld8H8PCj/BBgnfk9Nyg9tkJfgbCxKJ3BRj23rKcSQf1ilx5J7XV6b5AK7WDkGVZ78TmGinY
	lia95w0kjGkYuwM+I889EB13xVS+vlb7eDSfq03gA3kOrfFE5wRRyb7JIlaZBVKSkbgolkVIm+z
	iW675La0/2JUY8lm9Br0W3llzxfM9uE++xMaOzAmbYfjeCEec1g==
X-Received: by 2002:a17:90b:2507:b0:359:8230:abcc with SMTP id 98e67ed59e1d1-3598230ace5mr3362794a91.8.1772442431317;
        Mon, 02 Mar 2026 01:07:11 -0800 (PST)
X-Received: by 2002:a17:90b:2507:b0:359:8230:abcc with SMTP id 98e67ed59e1d1-3598230ace5mr3362753a91.8.1772442430727;
        Mon, 02 Mar 2026 01:07:10 -0800 (PST)
Received: from [10.206.99.28] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3593ddd737fsm17419480a91.13.2026.03.02.01.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 01:07:10 -0800 (PST)
Message-ID: <741c681d-b496-4dff-be2b-06dbe13acb21@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 14:37:02 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-11-fe46a9c1a046@oss.qualcomm.com>
 <mkrwav44qxt66ojxvs2mh5jsjqirrm4sk653uglha3cjefevk6@fobon6vj7fhr>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <mkrwav44qxt66ojxvs2mh5jsjqirrm4sk653uglha3cjefevk6@fobon6vj7fhr>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3OCBTYWx0ZWRfX/aZIbSkwu6tS
 FHzQHjVT8uzF00kt88VKUiD/QEXsIWvP+QpPTW8TRKxaDac4eE9RVnKUz4HerlHnphCS4P4QrMy
 K55gXxOAtm741UrFr4kGN/qTSCGK2BPhlHtd0SaDFcLnW19b+0zN8/XwEcnJhgj9fAv0Iz8GjIk
 rKzVySh0CQaCVe6zGn+NKSI3/pgqyQe4m6yNgqnf1MWpSrOcuPfEGJ6b/WH7jDMrBWf3qk0Vo5K
 qcyjFDezjspjv+gXuzMMJszq9O1+RUQaXQLZApHjcla/2U0eWSCRcYKk/cehgNyOC1aVNv83XP1
 oYNRB1dFa3sHBaZjmJUvaDxtJR4prf9VD7GtdlrFjsNVKTI5ZYsnbHb5JkbIhvfp1Wvmkye7Kn7
 9UOl3EzrKqAbh10mn70xTqjI7o80cioGcgwOgWnszvEmQQN0BVeipmDMBlZPCCphZVEqoA0oouY
 ynP1ywi5tHovgrV5CNw==
X-Proofpoint-GUID: 1Ta1SNUsn2Ob4W6aVsQIHb5tPiRA3i25
X-Proofpoint-ORIG-GUID: 1Ta1SNUsn2Ob4W6aVsQIHb5tPiRA3i25
X-Authority-Analysis: v=2.4 cv=Zqzg6t7G c=1 sm=1 tr=0 ts=69a55340 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=AnjHHbesreVsCw1LpdIA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 priorityscore=1501 phishscore=0
 suspectscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020078
X-Spamd-Bar: ------
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ESOZL3RBAGQUAU3YGEFLE5H66KCUHGNX
X-Message-ID-Hash: ESOZL3RBAGQUAU3YGEFLE5H66KCUHGNX
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:21 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 11/18] accel/qda: Add GEM_CREATE and GEM_MMAP_OFFSET IOCTLs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ESOZL3RBAGQUAU3YGEFLE5H66KCUHGNX/>
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
X-Rspamd-Queue-Id: 250A041282B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/24/2026 4:09 AM, Dmitry Baryshkov wrote:
> On Tue, Feb 24, 2026 at 12:39:05AM +0530, Ekansh Gupta wrote:
>> Add two GEM-related IOCTLs for the QDA accelerator driver and hook
>> them into the DRM accel driver. DRM_IOCTL_QDA_GEM_CREATE allocates
>> a DMA-backed GEM buffer object via qda_gem_create_object() and
>> returns a GEM handle to userspace, while
>> DRM_IOCTL_QDA_GEM_MMAP_OFFSET returns a valid mmap offset for a
>> given GEM handle using drm_gem_create_mmap_offset() and the
>> vma_node in the GEM object.
>>
>> The QDA driver is updated to advertise DRIVER_GEM in its
>> driver_features, and the new IOCTLs are wired through the QDA
>> GEM and memory-manager backend. These IOCTLs allow userspace to
>> allocate buffers and map them into its address space as a first
>> step toward full compute buffer management and integration with
>> DSP workloads.
>>
>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>> ---
>>  drivers/accel/qda/qda_drv.c   |  5 ++++-
>>  drivers/accel/qda/qda_gem.h   | 30 ++++++++++++++++++++++++++++++
>>  drivers/accel/qda/qda_ioctl.c | 35 +++++++++++++++++++++++++++++++++++
>>  include/uapi/drm/qda_accel.h  | 36 ++++++++++++++++++++++++++++++++++++
>>  4 files changed, 105 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
>> index 19798359b14e..0dd0e2bb2c0f 100644
>> --- a/drivers/accel/qda/qda_drv.c
>> +++ b/drivers/accel/qda/qda_drv.c
>> @@ -12,6 +12,7 @@
>>  #include <drm/qda_accel.h>
>>  
>>  #include "qda_drv.h"
>> +#include "qda_gem.h"
>>  #include "qda_ioctl.h"
>>  #include "qda_rpmsg.h"
>>  
>> @@ -154,10 +155,12 @@ DEFINE_DRM_ACCEL_FOPS(qda_accel_fops);
>>  
>>  static const struct drm_ioctl_desc qda_ioctls[] = {
>>  	DRM_IOCTL_DEF_DRV(QDA_QUERY, qda_ioctl_query, 0),
>> +	DRM_IOCTL_DEF_DRV(QDA_GEM_CREATE, qda_ioctl_gem_create, 0),
>> +	DRM_IOCTL_DEF_DRV(QDA_GEM_MMAP_OFFSET, qda_ioctl_gem_mmap_offset, 0),
>>  };
>>  
>>  static struct drm_driver qda_drm_driver = {
>> -	.driver_features = DRIVER_COMPUTE_ACCEL,
>> +	.driver_features = DRIVER_GEM | DRIVER_COMPUTE_ACCEL,
>>  	.fops			= &qda_accel_fops,
>>  	.open			= qda_open,
>>  	.postclose		= qda_postclose,
>> diff --git a/drivers/accel/qda/qda_gem.h b/drivers/accel/qda/qda_gem.h
>> index caae9cda5363..cbd5d0a58fa4 100644
>> --- a/drivers/accel/qda/qda_gem.h
>> +++ b/drivers/accel/qda/qda_gem.h
>> @@ -47,6 +47,36 @@ struct drm_gem_object *qda_gem_create_object(struct drm_device *drm_dev,
>>  void qda_gem_free_object(struct drm_gem_object *gem_obj);
>>  int qda_gem_mmap_obj(struct drm_gem_object *gem_obj, struct vm_area_struct *vma);
>>  
>> +/*
>> + * GEM IOCTL handlers
>> + */
>> +
>> +/**
>> + * qda_ioctl_gem_create - Create a GEM buffer object
>> + * @dev: DRM device structure
>> + * @data: User-space data containing buffer creation parameters
>> + * @file_priv: DRM file private data
>> + *
>> + * This IOCTL handler creates a new GEM buffer object with the specified
>> + * size and returns a handle to the created buffer.
>> + *
>> + * Return: 0 on success, negative error code on failure
>> + */
>> +int qda_ioctl_gem_create(struct drm_device *dev, void *data, struct drm_file *file_priv);
>> +
>> +/**
>> + * qda_ioctl_gem_mmap_offset - Get mmap offset for a GEM buffer object
>> + * @dev: DRM device structure
>> + * @data: User-space data containing buffer handle and offset result
>> + * @file_priv: DRM file private data
>> + *
>> + * This IOCTL handler retrieves the mmap offset for a GEM buffer object,
>> + * which can be used to map the buffer into user-space memory.
>> + *
>> + * Return: 0 on success, negative error code on failure
>> + */
>> +int qda_ioctl_gem_mmap_offset(struct drm_device *dev, void *data, struct drm_file *file_priv);
>> +
>>  /*
>>   * Helper functions for GEM object allocation and cleanup
>>   * These are used internally and by the PRIME import code
>> diff --git a/drivers/accel/qda/qda_ioctl.c b/drivers/accel/qda/qda_ioctl.c
>> index 9fa73ec2dfce..ef3c9c691cb7 100644
>> --- a/drivers/accel/qda/qda_ioctl.c
>> +++ b/drivers/accel/qda/qda_ioctl.c
>> @@ -43,3 +43,38 @@ int qda_ioctl_query(struct drm_device *dev, void *data, struct drm_file *file_pr
>>  
>>  	return 0;
>>  }
>> +
>> +int qda_ioctl_gem_create(struct drm_device *dev, void *data, struct drm_file *file_priv)
>> +{
>> +	struct drm_qda_gem_create *args = data;
>> +	struct drm_gem_object *gem_obj;
>> +	struct qda_drm_priv *drm_priv;
>> +
>> +	drm_priv = get_drm_priv_from_device(dev);
>> +	if (!drm_priv || !drm_priv->iommu_mgr)
>> +		return -EINVAL;
>> +
>> +	gem_obj = qda_gem_create_object(dev, drm_priv->iommu_mgr, args->size, file_priv);
>> +	if (IS_ERR(gem_obj))
>> +		return PTR_ERR(gem_obj);
>> +
>> +	return qda_gem_create_handle(file_priv, gem_obj, &args->handle);
>> +}
>> +
>> +int qda_ioctl_gem_mmap_offset(struct drm_device *dev, void *data, struct drm_file *file_priv)
>> +{
>> +	struct drm_qda_gem_mmap_offset *args = data;
>> +	struct drm_gem_object *gem_obj;
>> +	int ret;
>> +
>> +	gem_obj = qda_gem_lookup_object(file_priv, args->handle);
>> +	if (IS_ERR(gem_obj))
>> +		return PTR_ERR(gem_obj);
>> +
>> +	ret = drm_gem_create_mmap_offset(gem_obj);
>> +	if (ret == 0)
>> +		args->offset = drm_vma_node_offset_addr(&gem_obj->vma_node);
>> +
>> +	drm_gem_object_put(gem_obj);
>> +	return ret;
>> +}
>> diff --git a/include/uapi/drm/qda_accel.h b/include/uapi/drm/qda_accel.h
>> index 0aad791c4832..ed24a7f5637e 100644
>> --- a/include/uapi/drm/qda_accel.h
>> +++ b/include/uapi/drm/qda_accel.h
>> @@ -19,6 +19,8 @@ extern "C" {
>>   * They are used with DRM_COMMAND_BASE to create the full IOCTL numbers.
>>   */
>>  #define DRM_QDA_QUERY	0x00
>> +#define DRM_QDA_GEM_CREATE		0x01
>> +#define DRM_QDA_GEM_MMAP_OFFSET	0x02
>>  /*
>>   * QDA IOCTL definitions
>>   *
>> @@ -27,6 +29,10 @@ extern "C" {
>>   * data structure and direction (read/write) for each IOCTL.
>>   */
>>  #define DRM_IOCTL_QDA_QUERY	DRM_IOR(DRM_COMMAND_BASE + DRM_QDA_QUERY, struct drm_qda_query)
>> +#define DRM_IOCTL_QDA_GEM_CREATE	DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_GEM_CREATE, \
>> +						 struct drm_qda_gem_create)
>> +#define DRM_IOCTL_QDA_GEM_MMAP_OFFSET	DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_GEM_MMAP_OFFSET, \
>> +						 struct drm_qda_gem_mmap_offset)
>>  
>>  /**
>>   * struct drm_qda_query - Device information query structure
>> @@ -40,6 +46,36 @@ struct drm_qda_query {
>>  	__u8 dsp_name[16];
>>  };
>>  
>> +/**
>> + * struct drm_qda_gem_create - GEM buffer object creation parameters
>> + * @size: Size of the GEM object to create in bytes (input)
>> + * @handle: Allocated GEM handle (output)
>> + *
>> + * This structure is used with DRM_IOCTL_QDA_GEM_CREATE to allocate
>> + * a new GEM buffer object.
>> + */
>> +struct drm_qda_gem_create {
>> +	__u32 handle;
>> +	__u32 pad;
>> +	__u64 size;
> If you put size before handle, you would not need padding.
ack
>
>> +};
>> +
>> +/**
>> + * struct drm_qda_gem_mmap_offset - GEM object mmap offset query
>> + * @handle: GEM handle (input)
>> + * @pad: Padding for 64-bit alignment
>> + * @offset: mmap offset for the GEM object (output)
>> + *
>> + * This structure is used with DRM_IOCTL_QDA_GEM_MMAP_OFFSET to retrieve
>> + * the mmap offset that can be used with mmap() to map the GEM object into
>> + * user space.
>> + */
>> +struct drm_qda_gem_mmap_offset {
>> +	__u32 handle;
>> +	__u32 pad;
>> +	__u64 offset;
> I'm really not a fan of the pad field in the middle of the structure.
ack
>
>> +};
>> +
>>  #if defined(__cplusplus)
>>  }
>>  #endif
>>
>> -- 
>> 2.34.1
>>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
