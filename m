Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FsnMYIZ4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:16:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 476944127D9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:16:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 576C240AB8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:16:49 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 78F153F779
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 08:30:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=PfQOMN0q;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=gTM6Pxui;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6226hBsX2504642
	for <linaro-mm-sig@lists.linaro.org>; Mon, 2 Mar 2026 08:30:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	71RzyWdtt/jelNOKAvhWdj2tQ76mqCEosuyjd3bbpTQ=; b=PfQOMN0qGwtPnLCu
	Ko8FZIg0jPFnRTEmHFsFlHJe1NQzldDEbz3hQ+P+aaEqD6QmxBW35+ppM3DMk2aV
	v6CfOljFLknIggmQl6xVwQxgRIgYcumBhigeovnMHWjbXntnzdJEVp+6MBGLFuHa
	GuCc0xvHH56IwLkrX5+iULTG/+a2wApBd/qnkA08kpWcqtcL3zXHGhZzymaZjPRG
	smV0oIAL+Jr8CijaAA2gF48vbRf3QgFw3/75S8tJ4RzdzVpXcLDusl4Q+BvcV5ia
	SzWS5tlJuICPSI9d+f01t/MEsn2ltUUwmZdl+buxdyaZRpJ/vmghAH91R2o9sjXA
	IMTSqw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn5herbd4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 08:30:15 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae467f128fso11534375ad.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 00:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772440214; x=1773045014; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=71RzyWdtt/jelNOKAvhWdj2tQ76mqCEosuyjd3bbpTQ=;
        b=gTM6PxuidthXyKAI2JJEGbZoRb6uAoLo/Tb5VbZkJf65KG/2ZaE+OQ0LFyoEqRTz10
         YsI2C9fk4+98DaR9KYCXZjsXXamwiWdnnVy1imdH5ekHWEoULC0jaG0v/5wlmpTRHXW5
         Kvm5oUHOzpA5Jn7o4R2MVikmMj3t7joCA99tNSflml0K8Zyi3jdaur6LfHYApfEV69fL
         jyGIVQZNtlj8qzgydjsYv6hrhbip+5wHvvt2NcJ5GfbPPC6skxqeNFSK19+WE7MZ4bqT
         doycIDvJWTJhXrHZuNGzdn2Txg9EHhBWUMO9+NsimzpvwjxbkkGJ/ZkCPfsvvFeN/Xj1
         eIqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772440214; x=1773045014;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=71RzyWdtt/jelNOKAvhWdj2tQ76mqCEosuyjd3bbpTQ=;
        b=FKDgdKs34YcPxwidzQquMUiFTlo0EpKlHteZFn++aZWisuE3Ci/bZr52YJG8pt6M8P
         9NWMe74porE2daIuxVATIc6q8LOrXx0jZxCVX16e7vUK+5RHdsNgR3mMqCtKlSqdncTF
         f/IVT9QDBpCtadkhUxI8beRVK1sc8r75BjXc1j/mQBUAChn16i3gKfQAWvEZcuZMrnCk
         NOL4QMRUQHu7DRQ+pH3apuuHFSto7yCnsZHgxkLzD38tLf5WFuvGc/XfuE0GaWXtzfms
         eJX38PqeqkrmAnW+maZ1MB21qLmz0JB3ulBJq3sB7l3g4KYG7pi6iqbdcruADJEjyKF7
         Pb9g==
X-Forwarded-Encrypted: i=1; AJvYcCXg0o5j23cXXSJKyfNh2SPHMv3YM5JVLDOBdkVWgJUaozVey4bduZU1/okpDakFAepdkxXwwSC2UjyJ8V1b@lists.linaro.org
X-Gm-Message-State: AOJu0YwlumuKgBaI22pAJDPhc34wi4XwRnTbt+KL9i96JHGfV7BmYAj/
	mflSvI2cIAKoV7CjMdl0y/lt3l/1bOHMRBts8/yO8ntGo4yNIrjwpEgxfUf+XndcfgrN2BoYB9X
	Odg9jbnfb3KoSSFlybsOgSMz7Q6Fvn5RtBiUmTNfkUjOJ0hHXmEKW2pyqbWPzkHn892V87g==
X-Gm-Gg: ATEYQzwMYKuecuwisRAr6vvpT0UDKgC30ZPLRa8XKHRzyfK2kG0oFr5n/qQxQwQHrRr
	ZfIX7fQ+S/9xH5Ws2hlyrjVAeDlYvXX2e5P6KeRQBOI7nb12Dk91Uj+lEPpzPD3BAmU0BAo4kWJ
	Ar2StruMkYb0bc+9LA4Y4zDyj16mQc/I8Xj49HU4hYY+TWqCOViFhyAX3Y3c+s64QpZFGY87sWv
	kndUEIw/dZFalDkakfv1yaMrOWlG1cGwDt59mSn85q0e6HsC/nI9rKE3BWMh16VuGxwpYuudddp
	sibR7ch7tl/KeIWEXxtNJ01/CiV6liiRBnqmfbCiyqVHMDwzfGVcm2o7n3tbzf5Tk3MHQUxWLrm
	R3DN+cPCp3Pzpj/y4PbpXOOzUgc0xBoYXOGIC1tmR2MzXaFIHhQ==
X-Received: by 2002:a17:903:1b03:b0:2aa:d60c:d48a with SMTP id d9443c01a7336-2ae2e251b3dmr111196545ad.7.1772440214174;
        Mon, 02 Mar 2026 00:30:14 -0800 (PST)
X-Received: by 2002:a17:903:1b03:b0:2aa:d60c:d48a with SMTP id d9443c01a7336-2ae2e251b3dmr111195675ad.7.1772440213484;
        Mon, 02 Mar 2026 00:30:13 -0800 (PST)
Received: from [10.206.99.28] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae4cd40e4dsm33020545ad.92.2026.03.02.00.30.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 00:30:12 -0800 (PST)
Message-ID: <22d81284-ff95-401d-b9ae-05f3b776036f@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 14:00:04 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bjorn Andersson <andersson@kernel.org>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-6-fe46a9c1a046@oss.qualcomm.com>
 <rvi6cqi343yoc3qyabtb72zsedtruktfba6dxstvgw4k7bzyt5@4ofj5pdmkhw6>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <rvi6cqi343yoc3qyabtb72zsedtruktfba6dxstvgw4k7bzyt5@4ofj5pdmkhw6>
X-Authority-Analysis: v=2.4 cv=BI++bVQG c=1 sm=1 tr=0 ts=69a54a97 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=57SDT3_LIDrlxEhfML8A:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: jVKVdRjAyYhZd001xjOk8gU_OyKnQlv-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3NCBTYWx0ZWRfX9WdVu9DZKuIu
 mGyeRSyeZwu4rR0vaF2mNSK6x01K+2qRd2Ffx6hmV6FFeGr5AGZG+HRkCaDEPtx4tMru3esLxm4
 air/rziLBshuWYhbOvbhjAefXX9p4Gn3vLylo5ahQbsFMmY2zPaFPDtNFVPA13jjfSP03L4Khos
 44oZn1SCgH2Mb9S7WYxQPkLA7sGIiRHPcbdDlmviMF9bpfVNogl03phHeFBQnvXRN6vzeadcJZl
 pebT7zOcyOTL9LewcgUyx/mxJ5tng+rZ+j6GUcr75vsVD4WnAY5gmu00YdXs2+X8se5Y5TKsSMV
 utfcJsj2tfC/jHvAOvFAAGjL9z33uhper83eX35iR9Mj9hOY0+1/1HyvV7CqY0COjTY6sRL0jKd
 D7KGlwbjzRLMvlQhlQCKsQXNy2yg+rzPMxMk2mAguEO6vPXKOLIF014s43s6O1BicYYZSYZUbQN
 CqM0VvLQW09c6dDlNdA==
X-Proofpoint-ORIG-GUID: jVKVdRjAyYhZd001xjOk8gU_OyKnQlv-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 phishscore=0
 spamscore=0 adultscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020074
X-Spamd-Bar: ------
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4OR7O7GPUIR5SNOAUF7VG4MITBQYUJNQ
X-Message-ID-Hash: 4OR7O7GPUIR5SNOAUF7VG4MITBQYUJNQ
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:16 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 06/18] accel/qda: Add memory manager for CB devices
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4OR7O7GPUIR5SNOAUF7VG4MITBQYUJNQ/>
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
	RCPT_COUNT_TWELVE(0.00)[25];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,oss.qualcomm.com:mid,qualcomm.com:email]
X-Rspamd-Queue-Id: 476944127D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/24/2026 4:41 AM, Bjorn Andersson wrote:
> On Tue, Feb 24, 2026 at 12:39:00AM +0530, Ekansh Gupta wrote:
>> Introduce a per-device memory manager for the QDA driver that tracks
>> IOMMU-capable compute context-bank (CB) devices. Each CB device is
>> represented by a qda_iommu_device and registered with a central
>> qda_memory_manager instance owned by qda_dev.
>>
> The name makes me expect that this manages memory, but it seems to
> manage devices and context banks...
>
>> The memory manager maintains an xarray of devices and assigns a
>> unique ID to each CB. It also provides basic lifetime management
>> and a workqueue for deferred device removal. qda_cb_setup_device()
>> now allocates a qda_iommu_device for each CB and registers it with
>> the memory manager after DMA configuration succeeds.
>>
>> qda_init_device() is extended to allocate and initialize the memory
>> manager, while qda_deinit_device() will tear it down in later
>> patches.
> "in later patches" makes this extremely hard to review. I had to apply
> the series to try to navigate the code...
Thanks for highlighting. I'll update this.
>
>> This prepares the QDA driver for fine-grained memory and
>> IOMMU domain management tied to individual CB devices.
>>
>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> [..]
>>  obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda_compute_bus.o
>> diff --git a/drivers/accel/qda/qda_cb.c b/drivers/accel/qda/qda_cb.c
> [..]
>> @@ -46,6 +52,18 @@ static int qda_cb_setup_device(struct qda_dev *qdev, struct device *cb_dev)
>>  	rc = dma_set_mask(cb_dev, DMA_BIT_MASK(pa_bits));
>>  	if (rc) {
>>  		qda_err(qdev, "%d bit DMA enable failed: %d\n", pa_bits, rc);
>> +		kfree(iommu_dev);
>> +		return rc;
>> +	}
>> +
>> +	iommu_dev->dev = cb_dev;
>> +	iommu_dev->sid = sid;
>> +	snprintf(iommu_dev->name, sizeof(iommu_dev->name), "qda_iommu_dev_%u", sid);
> It's not easy to follow, when you have scattered the code across so many
> patches and so many files. But I don't think iommu_dev->name is ever
> used.
I'll remove this.
>
>> +
>> +	rc = qda_memory_manager_register_device(qdev->iommu_mgr, iommu_dev);
>> +	if (rc) {
>> +		qda_err(qdev, "Failed to register IOMMU device: %d\n", rc);
>> +		kfree(iommu_dev);
>>  		return rc;
>>  	}
>>  
>> @@ -127,6 +145,8 @@ int qda_create_cb_device(struct qda_dev *qdev, struct device_node *cb_node)
>>  void qda_destroy_cb_device(struct device *cb_dev)
>>  {
>>  	struct iommu_group *group;
>> +	struct qda_iommu_device *iommu_dev;
>> +	struct qda_dev *qdev;
>>  
>>  	if (!cb_dev) {
>>  		qda_dbg(NULL, "NULL CB device passed to destroy\n");
>> @@ -135,6 +155,18 @@ void qda_destroy_cb_device(struct device *cb_dev)
>>  
>>  	qda_dbg(NULL, "Destroying CB device %s\n", dev_name(cb_dev));
>>  
>> +	iommu_dev = dev_get_drvdata(cb_dev);
> I'm not sure, but I think cb_dev is the struct device allocated in
> qda_create_cb_device(), but I can not find a place where you set drvdata
> for this device.
It should be updated with iommu_dev in qda_cb_setup_device. I believe I missed
adding this and it didn't give me any functional failure. Thanks for highlighting this,
I'll fix this in the next spin.
>
>> +	if (iommu_dev) {
>> +		if (cb_dev->parent) {
>> +			qdev = dev_get_drvdata(cb_dev->parent);
>> +			if (qdev && qdev->iommu_mgr) {
>> +				qda_dbg(NULL, "Unregistering IOMMU device for %s\n",
>> +					dev_name(cb_dev));
>> +				qda_memory_manager_unregister_device(qdev->iommu_mgr, iommu_dev);
>> +			}
>> +		}
>> +	}
>> +
>>  	group = iommu_group_get(cb_dev);
>>  	if (group) {
>>  		qda_dbg(NULL, "Removing %s from IOMMU group\n", dev_name(cb_dev));
>> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
> [..]
>> @@ -25,12 +37,46 @@ static void init_device_resources(struct qda_dev *qdev)
>>  	atomic_set(&qdev->removing, 0);
>>  }
>>  
>> +static int init_memory_manager(struct qda_dev *qdev)
>> +{
>> +	int ret;
>> +
>> +	qda_dbg(qdev, "Initializing IOMMU manager\n");
>> +
>> +	qdev->iommu_mgr = kzalloc_obj(*qdev->iommu_mgr, GFP_KERNEL);
>> +	if (!qdev->iommu_mgr)
>> +		return -ENOMEM;
>> +
>> +	ret = qda_memory_manager_init(qdev->iommu_mgr);
>> +	if (ret) {
>> +		qda_err(qdev, "Failed to initialize memory manager: %d\n", ret);
> qda_memory_manager_init() already logged 1 error and 1 debug prints if
> you get here.
ack.
>
>> +		kfree(qdev->iommu_mgr);
>> +		qdev->iommu_mgr = NULL;
> We're going to fail probe, you shouldn't have to clear this.
>
>> +		return ret;
>> +	}
>> +
>> +	qda_dbg(qdev, "IOMMU manager initialized successfully\n");
>> +	return 0;
>> +}
>> +
>>  int qda_init_device(struct qda_dev *qdev)
>>  {
>> +	int ret;
>> +
>>  	init_device_resources(qdev);
>>  
>> +	ret = init_memory_manager(qdev);
>> +	if (ret) {
>> +		qda_err(qdev, "IOMMU manager initialization failed: %d\n", ret);
> And now we have 2 debug prints and two error prints in the log.
I'll clean the duplicate/unnecessary logs at at places
>
>> +		goto err_cleanup_resources;
>> +	}
>> +
>>  	qda_dbg(qdev, "QDA device initialized successfully\n");
> Or, if we get here, you have 8 debug prints.
>
> Please learn how to use kprobe/kretprobe instead of reimplementing it
> using printk().
ack.
>
>>  	return 0;
>> +
>> +err_cleanup_resources:
>> +	cleanup_device_resources(qdev);
>> +	return ret;
>>  }
>>  
>>  static int __init qda_core_init(void)
>> diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
>> index eb732b7d8091..2cb97e4eafbf 100644
>> --- a/drivers/accel/qda/qda_drv.h
>> +++ b/drivers/accel/qda/qda_drv.h
>> @@ -11,6 +11,7 @@
>>  #include <linux/mutex.h>
>>  #include <linux/rpmsg.h>
>>  #include <linux/xarray.h>
>> +#include "qda_memory_manager.h"
>>  
>>  /* Driver identification */
>>  #define DRIVER_NAME "qda"
>> @@ -23,6 +24,8 @@ struct qda_dev {
>>  	struct device *dev;
>>  	/* Mutex protecting device state */
>>  	struct mutex lock;
>> +	/* IOMMU/memory manager */
>> +	struct qda_memory_manager *iommu_mgr;
>>  	/* Flag indicating device removal in progress */
>>  	atomic_t removing;
>>  	/* Name of the DSP (e.g., "cdsp", "adsp") */
>> diff --git a/drivers/accel/qda/qda_memory_manager.c b/drivers/accel/qda/qda_memory_manager.c
> [..]
>> +int qda_memory_manager_register_device(struct qda_memory_manager *mem_mgr,
>> +				       struct qda_iommu_device *iommu_dev)
>> +{
>> +	int ret;
>> +	u32 id;
>> +
>> +	if (!mem_mgr || !iommu_dev || !iommu_dev->dev) {
> How could this happen? You call this function from one place, that looks
> like this:
>
> iommu_dev->dev = cb_dev;
> iommu_dev->sid = sid;
> rc = qda_memory_manager_register_device(qdev->iommu_mgr, iommu_dev);
>
> You just allocated in filled out iommu_dev.
>
> Looking up the callstack, we're coming from qda_rpmsg_probe() which just
> did qda_init_device() which created the qsdev->iommu_mgr.
>
> In other words, these can't possibly be NULL.
I'll recheck this and remove redundant checks.
>
>> +		qda_err(NULL, "Invalid parameters for device registration\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	init_iommu_device_fields(iommu_dev, mem_mgr);
>> +
>> +	ret = allocate_device_id(mem_mgr, iommu_dev, &id);
>> +	if (ret) {
>> +		qda_err(NULL, "Failed to allocate device ID: %d (sid=%u)\n", ret, iommu_dev->sid);
>> +		return ret;
>> +	}
>> +
>> +	iommu_dev->id = id;
>> +
>> +	qda_dbg(NULL, "Registered device id=%u (sid=%u)\n", id, iommu_dev->sid);
>> +
>> +	return 0;
>> +}
>> +
>> +void qda_memory_manager_unregister_device(struct qda_memory_manager *mem_mgr,
>> +					  struct qda_iommu_device *iommu_dev)
>> +{
>> +	if (!mem_mgr || !iommu_dev) {
> The one call to this function is wrapped in:
>
> if (iommu_dev) {
> 	if (qdev->iommu_mgr) {
> 		qda_dbg(NULL, ...);
> 		qda_memory_manager_unregister_device(qdev->iommu_mgr, iommu_dev);
> 	}
> }
>
>> +		qda_err(NULL, "Attempted to unregister invalid device/manager\n");
>> +		return;
>> +	}
>> +
>> +	qda_dbg(NULL, "Unregistering device id=%u (refcount=%u)\n", iommu_dev->id,
>> +		refcount_read(&iommu_dev->refcount));
> And just before the call to qda_memory_manager_unregister_device() you
> print a debug log, saying you will call this function.
>
>> +
>> +	if (refcount_read(&iommu_dev->refcount) == 0) {
>> +		xa_erase(&mem_mgr->device_xa, iommu_dev->id);
>> +		kfree(iommu_dev);
>> +		return;
>> +	}
>> +
>> +	if (refcount_dec_and_test(&iommu_dev->refcount)) {
>> +		qda_info(NULL, "Device id=%u refcount reached zero, queuing removal\n",
>> +			 iommu_dev->id);
>> +		queue_work(mem_mgr->wq, &iommu_dev->remove_work);
>> +	}
>> +}
>> +
> [..]
>> diff --git a/drivers/accel/qda/qda_memory_manager.h b/drivers/accel/qda/qda_memory_manager.h
> [..]
>> +
>> +/**
> This says "kernel-doc"
>
>> + * struct qda_iommu_device - IOMMU device instance for memory management
>> + *
>> + * This structure represents a single IOMMU-enabled device managed by the
>> + * memory manager. Each device can be assigned to a specific process.
>> + */
>> +struct qda_iommu_device {
>> +	/* Unique identifier for this IOMMU device */
> But this doesn't follow kernel-doc style.
>
> At the end of the series, 
>
> ./scripts/kernel-doc -none -vv -Wall drivers/accel/qda/
>
> reports 270 warnings.
I'll resolve the warnings in next version.
>
>> +	u32 id;
>> +	/* Pointer to the underlying device */
>> +	struct device *dev;
>> +	/* Name for the device */
>> +	char name[32];
>> +	/* Spinlock protecting concurrent access to device */
>> +	spinlock_t lock;
>> +	/* Reference counter for device */
>> +	refcount_t refcount;
>> +	/* Work structure for deferred device removal */
>> +	struct work_struct remove_work;
>> +	/* Stream ID for IOMMU transactions */
>> +	u32 sid;
>> +	/* Pointer to parent memory manager */
>> +	struct qda_memory_manager *manager;
>> +};
> Regards,
> Bjorn

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
