Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6G4qOHkZ4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:16:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 92ADA4127D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:16:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC2334050A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:16:40 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 4D0613F9BF
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 08:15:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=ipmP+1UO;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=A9hUj9AG;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6227l9RK536909
	for <linaro-mm-sig@lists.linaro.org>; Mon, 2 Mar 2026 08:15:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1nxlvKtWHlixlnWM7lk5L+nk5CDxPToMPWa0ATJIt+U=; b=ipmP+1UOIkbkHrz5
	4Zh5zcejX0AEK4qWy0UQjcCFbrK7VJKAgWA2ZJ+yrMI1JZRb+MYGUxihgsBrJdvu
	dvEsH9Lyyh56EIP2l2/7mw5OHLnTHNZqC10WkhgzC74NlRMcT0BEoBinGtL5Dj9H
	eGrnwxMXT/K9CL7f6sG8CgdUghPuGyzXdkJMoFw04R/N2URMbdxQtDe9in8qrJ51
	tbqk52bdQkuOU+H9AxehKcQ/pjSxjsfc1xNC/DvenXdB2VqfLs3YaYnqy5eG5C/u
	wenPMG+sP7wp9rocb3lxPS5efhm3jHsVbc3cG9Lrok2jOZnioUctBTMXKlsf5411
	Q9pBtw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksfyvkpg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 08:15:19 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-354c44bf176so3990440a91.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 00:15:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772439319; x=1773044119; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1nxlvKtWHlixlnWM7lk5L+nk5CDxPToMPWa0ATJIt+U=;
        b=A9hUj9AGotZLaac1efolu7MEtZdf/+d+BoVn/4pMSXN/cdImhkDRpKhPpXogYkjRUE
         kZj/flKLKDytmxJStaUp0PHaoo1Lp3rQ0FkkFdgvPrDyz2fNC69WexMnYBIXOo7Z3KXo
         1FROtaHEwc+tbr25KRaJRPoOw5ZqV0Ka5Qx6cKrVNiE4ugeieLjPdum1D4QF5kN+hrUb
         Vpb9bjIa2kk3p85DI+emQabZBIJchMBkHVw8c/yc9wIeJ/WBQndTUqvxHhAcLWF/2XT3
         H0mZ6vJLHAzfgIS8x+Uh/0c1Na8V1vAau33Yvcb9j1TItV6XXCcByNODCXptEJVJbfHk
         9eMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772439319; x=1773044119;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1nxlvKtWHlixlnWM7lk5L+nk5CDxPToMPWa0ATJIt+U=;
        b=c/Sdb+//sai86Ufkl4f/LKdd5AxlQ7MpALGHYy3xTu2OG9o0xjflqTheeucIt3486g
         rt9wH/EHEcnn7aoPDHt5SJqrEKZ72urqYoBsBfXmQHSRFkLV8Ze19Jf5GDkjxF97LCYP
         wklZiENR8o8NPih2tYwD0RRgI92uWAE5C+lPoYletr+9iwVXE/u+k1Bh0iDk4wY3Oqj0
         kBkcVB6e6Af5JY1ZlWxttByJZgPDN75KS0h3TwzS9frnumX49tCScjEf7UgjKNVMZv/G
         UawpVlwVDdXkm9J+KuJdtUSXQ9qZN0/GspgR07+YLxuCpIcWVlhZnXjdDRHA3G5zEc4x
         Iiig==
X-Forwarded-Encrypted: i=1; AJvYcCWob7OHfeRLGQ2W4qnPS2Fvu33T7fdwtA5TxsCx2HaTUI93Ii9kpjdmAx2kpsEucSdefqXGqpJdrUntekZ5@lists.linaro.org
X-Gm-Message-State: AOJu0YzDoiRUeM1DiMRPDZkLgBOIqrQWfoV1d448eEslJtoi1sNcPLVp
	pFvNhv5KRAbkdqnUVpvOxppfveorJG3vAR18/Ar9R/cpM37x3wLk1XtykG91NI3qPgpUak/Te2U
	MoeLkQ8c7I8vZdq2XADfWIfHXVEVsmzAr2d9ZrPPsTPi7Xfv4FIpjJ/L24Y8CZy3MBQtAXQ==
X-Gm-Gg: ATEYQzzPxBSmeSx7JepYaJDmsJx4MOYpZEJg/ZLN+oWaSSzgzQ0C+MlyrMtNrCF1m0a
	umMZtu5Xdi93qd6fNE0IjBeJY2XkdT3dnBQCy+h8pCVBd8je0ig7Y1WfLmqvQRdgbQ6WE/0YdH0
	wpNmqo0m76eSeh3kW0aK3fsh5I5m4pkdoK3mInOCcfOFY0DTtORlL2TtHvWEuWNyKPgslf6YSoS
	YVvP2v1ZBoqP+reKPj0a+9h3mu2KKxOBjSy/LpvElMldH3YJk0BDH42tAqdUkcxGqb8nyBmUvnI
	84oEQFI96DKgHLGjbGDQzpz5nQvjVsoyZ3MDonDSUHwoUPphgT3uXqs/dvqe/W9T4nRi8D/y5mt
	1fYZfhNRY2QN09sHvqk5qr7PpgDHLOm49+2pjq58K+LzLTuSooA==
X-Received: by 2002:a05:6300:85:b0:350:fa56:3f45 with SMTP id adf61e73a8af0-395c3b03cc5mr10176293637.35.1772439318625;
        Mon, 02 Mar 2026 00:15:18 -0800 (PST)
X-Received: by 2002:a05:6300:85:b0:350:fa56:3f45 with SMTP id adf61e73a8af0-395c3b03cc5mr10176246637.35.1772439317962;
        Mon, 02 Mar 2026 00:15:17 -0800 (PST)
Received: from [10.206.99.28] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa806295sm11137313a12.16.2026.03.02.00.15.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 00:15:17 -0800 (PST)
Message-ID: <5448e807-2435-42f4-b98e-2beb6b66a6f4@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 13:45:09 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-6-fe46a9c1a046@oss.qualcomm.com>
 <d7s4e7xzfqfbcf5o3grc6xqm74dzwpck6ge7hyrwewmyacpuez@lcd6nhzyjr55>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <d7s4e7xzfqfbcf5o3grc6xqm74dzwpck6ge7hyrwewmyacpuez@lcd6nhzyjr55>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3MiBTYWx0ZWRfX8mAHbargSk2I
 CURkaOGJI6qNeQWs4GE9SYEM3JaGae9tNb3HcwEMRapQ06xLHiswnH21LuRRfp8TTAJ4r6fAbhf
 wu3NqZkjNtntkfGNwT1ADop/I8bVeyLa1SrZh1kyyMsZB9Z3/7H7NgxM5mgEK3Q3MGOZAgz1BMB
 +szXpqfgoYIUSUxuaGdOjGYOEdNedJrlkfj85jUNdPfxkaPUJ5pombgzdiQjqgioBMSzAAm7RDQ
 8y9iUE4dwU8jstFxluHs7DHuQQ+6g4bXRKaKcjnKmKa1iHcikuG9As3hFHsEdwj4/1vSmZ7Z36U
 6+OWv9wiyu4ewg+Zkye4pnSE8tdB+Fvmk8ovM/rcY+LxS/K/QU9iqvqnhMe4+xLwWroW4YHSplk
 MSH/MOIfqKCU0Jn+kajxevHFpC0lUwz4CVwAfO6VOD5dtF+kxROzuMzwMZbnrrunibEg7UJUdGF
 sOI8KAlOJRfE1t6gdnA==
X-Authority-Analysis: v=2.4 cv=avS/yCZV c=1 sm=1 tr=0 ts=69a54717 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=Dp_If50ftEsHmqaufPoA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: 8P8j6XfVMm9heAOeeqmA1gT5y_sCkbTy
X-Proofpoint-ORIG-GUID: 8P8j6XfVMm9heAOeeqmA1gT5y_sCkbTy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020072
X-Spamd-Bar: -----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2JXKYFRL4T5LWZTB27HB2NHZXCHE3GWE
X-Message-ID-Hash: 2JXKYFRL4T5LWZTB27HB2NHZXCHE3GWE
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:16 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 06/18] accel/qda: Add memory manager for CB devices
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2JXKYFRL4T5LWZTB27HB2NHZXCHE3GWE/>
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
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,oss.qualcomm.com:mid]
X-Rspamd-Queue-Id: 92ADA4127D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/24/2026 4:20 AM, Dmitry Baryshkov wrote:
> On Tue, Feb 24, 2026 at 12:39:00AM +0530, Ekansh Gupta wrote:
>> Introduce a per-device memory manager for the QDA driver that tracks
>> IOMMU-capable compute context-bank (CB) devices. Each CB device is
>> represented by a qda_iommu_device and registered with a central
>> qda_memory_manager instance owned by qda_dev.
>>
>> The memory manager maintains an xarray of devices and assigns a
>> unique ID to each CB. It also provides basic lifetime management
> Sounds like IDR.
I was planning to stick with xarray accross QDA as IDR gives checkpatch warnings.
>
>> and a workqueue for deferred device removal. qda_cb_setup_device()
> What is deferred device removal? Why do you need it?
This is not needed, I was trying some experiment in my initial design(CB aggregation),
but it's not needed now, I'll remove this.
>
>> now allocates a qda_iommu_device for each CB and registers it with
>> the memory manager after DMA configuration succeeds.
>>
>> qda_init_device() is extended to allocate and initialize the memory
>> manager, while qda_deinit_device() will tear it down in later
>> patches. This prepares the QDA driver for fine-grained memory and
>> IOMMU domain management tied to individual CB devices.
>>
>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>> ---
>>  drivers/accel/qda/Makefile             |   1 +
>>  drivers/accel/qda/qda_cb.c             |  32 +++++++
>>  drivers/accel/qda/qda_drv.c            |  46 ++++++++++
>>  drivers/accel/qda/qda_drv.h            |   3 +
>>  drivers/accel/qda/qda_memory_manager.c | 152 +++++++++++++++++++++++++++++++++
>>  drivers/accel/qda/qda_memory_manager.h | 101 ++++++++++++++++++++++
>>  6 files changed, 335 insertions(+)
>>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
