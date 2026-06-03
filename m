Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id am/PG51IKWpTTgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:21:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BABF668AF2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:21:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=oWTLogLX;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1FFEC40A6A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:21:00 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id B42CE3F949
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 05:26:34 +0000 (UTC)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 652KJWZL2884587
	for <linaro-mm-sig@lists.linaro.org>; Wed, 3 Jun 2026 05:26:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m3YqEw6zmQVetKx6FqU85A3xswC4mhkwqjLvA/EaE9Y=; b=oWTLogLXHlBUieIp
	QeaN0yv1pxWQz460jHGVfJwyvC+ISSABgzq/NU2K2JZBMhdjIwkPZ7OAynwQWpsw
	sT5TrLSuvInxSSDqeiO5NPvdKlbpBa8ISSRRHoaF0TlRVhRMHwK0j/pDBqjah6R/
	oWN/446gEL9YJikmBnHmsG+zEQm+RUVhJcvwh8Hx+4LyaD1Rh8sfcCxWnMxy8N4O
	9jbHEnn3UfV45GWYcRJUqJmZiMCAQVJWfq3GhYivelnlh659geNxJ8Rp/yvqsiE8
	urL6JcbMCp6h9lfDmm4XyrUVEEQwPh5vXQ9cropBDJTEIKDdgv/DNqVUV3AfDz6U
	H7Xrig==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ehsu1579k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 05:26:34 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-36ba98cc003so4057789a91.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Jun 2026 22:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780464393; x=1781069193; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m3YqEw6zmQVetKx6FqU85A3xswC4mhkwqjLvA/EaE9Y=;
        b=LrInyGzos28WQ5x1wNbhfAXan29wDrMIY3kKpLJ+Mr+H0kJjcEL3AZ+xrQSOAqvUEu
         axb/0lFnAI7QLEnS72xZ/ja+fpnpaRndEAUC4MFHE+CW81d6f2X3dPuJ6pQe6bcT7qgH
         u+UnJf4wgPEcIeiKlNkAUWQ73vWscegq6CfNJYV75NH4kEB5sIAuXQ77H1sYf6ISFPGN
         7o9gnypbNUhC49zJMPzejXvuP0XTXmNr9JseBoYXv3P+xxXaRwMRgE33R/jBlTj680+Z
         bjP7oTyNooXxXNt55ROfJyoHJZeCIktBLlP0R21eXTtf+thlg+gQkBcIt5E9iK0uc7I9
         R//Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780464393; x=1781069193;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m3YqEw6zmQVetKx6FqU85A3xswC4mhkwqjLvA/EaE9Y=;
        b=CPu34L9RAbQoHswCG+WGaUo820EBYV4IFHq7WtVSvZhAREvNRCs6eSfmGjRf3PEr2i
         MVi+b0ghZxbj+kWVB4zPoB+jqzCP/Ik1s6sdEvvnEgaw/ttrtZpkyYFKqtCC9dYPBFYY
         DUCMPixyX6h+wAjHcJDk7RwNCjhC8O+P0Y8hQyjs3BRwBHe9YOuyLp7TnCyppKEy4LnU
         Uv6KbjsF/Yt5X0MrIi5PQF1hFmeoeXgTw0IlyAaEAX6jDYCBtngjTlMm5fpynCw54wbu
         oyZKaXAwE/WZvbHvx7MbVoaUsDF/+lvmMbqz5QQaSdtEd9Yo5Ppdjn51B2/CcJEkTdTK
         Vadw==
X-Forwarded-Encrypted: i=1; AFNElJ8zaDj/T+tp3+ec4O8o5JhMN3y/QgaGbYPS0/TPT5LtmfX4qR6smLNglVtN1C10UuRoofBFnVD6FIyQJVLP@lists.linaro.org
X-Gm-Message-State: AOJu0Yw93Rbm4Z9ClI9RVvHdJbwf0MA5CJ5/XfMWx9YPt2AjoCdn7JfK
	Ts4mGKb3MSOzQnaz55JDG0k2GtdqB+LekRB7uAYdJhjj1TvCFgDD2laz5qglluhcTuDXB6KnFdi
	N23ix188qzoE1ITH1qyWut7P/uI0kUWLNliXAMz1nlf3FkEw3IEDeySdIBE2y6EMbmlcMog==
X-Gm-Gg: Acq92OEopA3gR9K/KcfqOkejxxWiRYNbX7hGOi2M37fiYsoqGrdFtqUV7WWftaWmQWZ
	4fgA4yfzLMCIYcNnmFLR/cT5WX4CzRX86s71m5faqsr/KQ/PJoZzXa4VTrTbIgAI5xAm2Zo8N2d
	leSoPli0J52/BlnBXNckve15+CzcMbxA0ti7QjLqULV4ls8DaPefaJZjuYosSn1XX8IGP4BvpFH
	/RsXJvlIYXfsiplCEkYuDpjMC4OIJgvVfVLf/q2w1EdtMdEhVLrMXoGITdprJgPeeA8wrjgTzGi
	5KmWXauxVJcrScfmI7QimY7vL72EgDwSnQ7+Qaccc3vKB15WyyGNZ/nJu4okhc+W47hEJNWgFwl
	YkHhNlPxZO/oL9tJNAnI3Zq81J5fNINN7GcISYrHExvhpcxsr2i/GrHTaVDD/
X-Received: by 2002:a05:6a21:46c5:b0:3b4:7bcc:5227 with SMTP id adf61e73a8af0-3b4977ff33bmr2188805637.12.1780464392889;
        Tue, 02 Jun 2026 22:26:32 -0700 (PDT)
X-Received: by 2002:a05:6a21:46c5:b0:3b4:7bcc:5227 with SMTP id adf61e73a8af0-3b4977ff33bmr2188762637.12.1780464392345;
        Tue, 02 Jun 2026 22:26:32 -0700 (PDT)
Received: from [10.204.78.54] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8428221a7e9sm1964720b3a.11.2026.06.02.22.26.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 22:26:31 -0700 (PDT)
Message-ID: <8cdcca7f-7167-429b-b7ce-28e9b1f32256@oss.qualcomm.com>
Date: Wed, 3 Jun 2026 10:56:23 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-3-b2d984c297f8@oss.qualcomm.com>
 <wbrrredwk2id5ntjlvxhk66uxxa6elwbqg2sj2jmrydz7ss4qz@hsvwcj4iocsu>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <wbrrredwk2id5ntjlvxhk66uxxa6elwbqg2sj2jmrydz7ss4qz@hsvwcj4iocsu>
X-Proofpoint-ORIG-GUID: OsEOCcci2z_OTSBVyWDhsSecHWFUeuel
X-Proofpoint-GUID: OsEOCcci2z_OTSBVyWDhsSecHWFUeuel
X-Authority-Analysis: v=2.4 cv=MKFQXsZl c=1 sm=1 tr=0 ts=6a1fbb0a cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=vu9siaMUKByHOgeoVcYA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDA0OSBTYWx0ZWRfX8TGLQ1xZ9Kn1
 +4Lam7TJIElvCqDa1C7GGoAespvXmijxB0Ii9q0+duIRU3xvO4pNXtHIDf7XmfnFl2UP55vpFyT
 980dd2/qh8GpJgXvgwI3uDlvPSCv4v1hHllaI4bQtahkmY9xhPvmbzs5hDiwwSXb+eEoIgkdjnj
 wuaD1EubUzT1uiGsg2Vlpf/ry0JOf1tGLpkReFvW0FMiwZ0LvJl/T7XBXGrzBVsCeJyyjZitTmH
 f+A3v6mNokgp7lvA5xJzADPrm2SHTHXWV3DHr7fbbtP04tavTat6S9uU+ak9JbLLbE1+8pw3UP/
 gRrWSXUswZuIbxaYAkO9LpzGbJPa8xEKnGDmabciXTS8BMHk25rtJazFdG0JpugWIDm8mFL2abt
 hqO7FkNE4PaDIvhRn4fKnYavYQG8QzfYq49ugUMX2JMp091ze62HxP34NbBQ1BV1XGCS2sneUoi
 oN0idgGUnPqXnWDB1UQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_02,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606030049
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IN3LD3UJINOTB4ZQY4M6LLCKPA2KW4C3
X-Message-ID-Hash: IN3LD3UJINOTB4ZQY4M6LLCKPA2KW4C3
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:20:20 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 03/15] accel/qda: Add initial QDA DRM accelerator driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IN3LD3UJINOTB4ZQY4M6LLCKPA2KW4C3/>
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
X-Rspamd-Queue-Id: 0BABF668AF2

On 20-05-2026 19:48, Dmitry Baryshkov wrote:
> On Tue, May 19, 2026 at 11:45:53AM +0530, Ekansh Gupta via B4 Relay wrote:
>> From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>>
>> Add the foundational driver files for the Qualcomm DSP Accelerator
>> (QDA), a DRM accel driver for Qualcomm DSPs. The driver integrates
>> with the DRM accel subsystem (drivers/accel/) and provides:
>>
>>   - A standard /dev/accel/accel* character device node via DRM.
>>   - GEM-based buffer management with DMA-BUF import/export (PRIME).
>>   - IOMMU context bank management for per-session memory isolation.
>>   - Standard DRM IOCTLs for device management and job submission.
>>
>> qda_drv.c / qda_drv.h: Core DRM driver registration. Defines the
>> drm_driver ops table, per-file private state (qda_file_priv), and the
>> main device structure (qda_dev) which embeds drm_device.
>>
>> qda_rpmsg.c / qda_rpmsg.h: RPMsg transport layer. Registers an
>> rpmsg_driver matching the "qcom,fastrpc" compatible string. On probe
>> it allocates a qda_dev, reads the DSP domain name from the "label" DT
>> property, and registers the DRM device.
>>
>> Assisted-by: Claude:claude-4-6-sonnet
>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>> ---
>>  drivers/accel/Kconfig         |  1 +
>>  drivers/accel/Makefile        |  1 +
>>  drivers/accel/qda/Kconfig     | 30 +++++++++++++
>>  drivers/accel/qda/Makefile    | 10 +++++
>>  drivers/accel/qda/qda_drv.c   | 97 ++++++++++++++++++++++++++++++++++++++++++
>>  drivers/accel/qda/qda_drv.h   | 62 +++++++++++++++++++++++++++
>>  drivers/accel/qda/qda_rpmsg.c | 99 +++++++++++++++++++++++++++++++++++++++++++
>>  drivers/accel/qda/qda_rpmsg.h | 13 ++++++
>>  8 files changed, 313 insertions(+)
>>
>> diff --git a/drivers/accel/Kconfig b/drivers/accel/Kconfig
>> index bdf48ccafcf2..74ac0f71bc9d 100644
>> --- a/drivers/accel/Kconfig
>> +++ b/drivers/accel/Kconfig
>> @@ -29,6 +29,7 @@ source "drivers/accel/ethosu/Kconfig"
>>  source "drivers/accel/habanalabs/Kconfig"
>>  source "drivers/accel/ivpu/Kconfig"
>>  source "drivers/accel/qaic/Kconfig"
>> +source "drivers/accel/qda/Kconfig"
>>  source "drivers/accel/rocket/Kconfig"
>>  
>>  endif
>> diff --git a/drivers/accel/Makefile b/drivers/accel/Makefile
>> index 1d3a7251b950..58c08dd5f389 100644
>> --- a/drivers/accel/Makefile
>> +++ b/drivers/accel/Makefile
>> @@ -5,4 +5,5 @@ obj-$(CONFIG_DRM_ACCEL_ARM_ETHOSU)	+= ethosu/
>>  obj-$(CONFIG_DRM_ACCEL_HABANALABS)	+= habanalabs/
>>  obj-$(CONFIG_DRM_ACCEL_IVPU)		+= ivpu/
>>  obj-$(CONFIG_DRM_ACCEL_QAIC)		+= qaic/
>> +obj-$(CONFIG_DRM_ACCEL_QDA)		+= qda/
>>  obj-$(CONFIG_DRM_ACCEL_ROCKET)		+= rocket/
>> \ No newline at end of file
>> diff --git a/drivers/accel/qda/Kconfig b/drivers/accel/qda/Kconfig
>> new file mode 100644
>> index 000000000000..484d21ff1b55
>> --- /dev/null
>> +++ b/drivers/accel/qda/Kconfig
>> @@ -0,0 +1,30 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +#
>> +# Qualcomm DSP accelerator driver
>> +#
>> +
>> +config DRM_ACCEL_QDA
>> +	tristate "Qualcomm DSP accelerator"
>> +	depends on DRM_ACCEL
>> +	depends on ARCH_QCOM || COMPILE_TEST
>> +	depends on RPMSG
>> +	help
>> +	  Enables the DRM-based accelerator driver for Qualcomm's Hexagon DSPs.
>> +	  This driver provides a standardized interface for offloading computational
>> +	  tasks to the DSP, including audio processing, sensor offload, computer
>> +	  vision, and AI inference workloads.
>> +
>> +	  The driver supports all DSP domains (ADSP, CDSP, SDSP, GDSP) and
>> +	  implements the FastRPC protocol for communication between the application
>> +	  processor and DSP. It integrates with the Linux kernel's Compute
>> +	  Accelerators subsystem (drivers/accel/) and provides a modern alternative
>> +	  to the legacy FastRPC driver found in drivers/misc/.
>> +
>> +	  Key features include DMA-BUF interoperability for seamless buffer sharing
> 
> Key features of what? Consider distro maintainers reading your help text
> in order to identify whether to enable it or not.
ack>
>> +	  with other multimedia subsystems, IOMMU-based memory isolation, and
>> +	  standard DRM IOCTLs for device management and job submission.
>> +
>> +	  If unsure, say N.
>> +
>> +	  To compile this driver as a module, choose M here: the
>> +	  module will be called qda.
>> diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
>> new file mode 100644
>> index 000000000000..dbe809067a8b
>> --- /dev/null
>> +++ b/drivers/accel/qda/Makefile
>> @@ -0,0 +1,10 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +#
>> +# Makefile for Qualcomm DSP accelerator driver
>> +#
>> +
>> +obj-$(CONFIG_DRM_ACCEL_QDA)	:= qda.o
>> +
>> +qda-y := \
>> +	qda_drv.o \
>> +	qda_rpmsg.o
>> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
>> new file mode 100644
>> index 000000000000..1c1bab68d445
>> --- /dev/null
>> +++ b/drivers/accel/qda/qda_drv.c
>> @@ -0,0 +1,97 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> +#include <linux/module.h>
>> +#include <linux/slab.h>
>> +#include <drm/drm_accel.h>
>> +#include <drm/drm_drv.h>
>> +#include <drm/drm_file.h>
>> +#include <drm/drm_gem.h>
>> +#include <drm/drm_ioctl.h>
>> +#include <drm/drm_print.h>
>> +
>> +#include "qda_drv.h"
>> +#include "qda_rpmsg.h"
>> +
>> +static int qda_open(struct drm_device *dev, struct drm_file *file)
>> +{
>> +	struct qda_file_priv *qda_file_priv;
>> +
>> +	qda_file_priv = kzalloc_obj(*qda_file_priv);
>> +	if (!qda_file_priv)
>> +		return -ENOMEM;
>> +
>> +	qda_file_priv->qda_dev = qda_dev_from_drm(dev);
>> +	file->driver_priv = qda_file_priv;
>> +
>> +	return 0;
>> +}
>> +
>> +static void qda_postclose(struct drm_device *dev, struct drm_file *file)
>> +{
>> +	struct qda_file_priv *qda_file_priv = file->driver_priv;
>> +
>> +	kfree(qda_file_priv);
>> +	file->driver_priv = NULL;
>> +}
>> +
>> +DEFINE_DRM_ACCEL_FOPS(qda_accel_fops);
>> +
>> +static const struct drm_driver qda_drm_driver = {
>> +	.driver_features = DRIVER_COMPUTE_ACCEL,
>> +	.fops = &qda_accel_fops,
>> +	.open = qda_open,
>> +	.postclose = qda_postclose,
>> +	.name = QDA_DRIVER_NAME,
>> +	.desc = "Qualcomm DSP Accelerator Driver",
>> +};
>> +
>> +struct qda_dev *qda_alloc_device(struct device *dev)
>> +{
>> +	struct qda_dev *qdev;
>> +
>> +	qdev = devm_drm_dev_alloc(dev, &qda_drm_driver, struct qda_dev, drm_dev);
>> +	if (IS_ERR(qdev))
>> +		return ERR_CAST(qdev);
>> +
>> +	return qdev;
>> +}
>> +
>> +void qda_unregister_device(struct qda_dev *qdev)
>> +{
>> +	drm_dev_unregister(&qdev->drm_dev);
>> +}
>> +
>> +int qda_register_device(struct qda_dev *qdev)
>> +{
>> +	int ret;
>> +
>> +	ret = drm_dev_register(&qdev->drm_dev, 0);
>> +	if (ret)
>> +		drm_err(&qdev->drm_dev, "Failed to register DRM device: %d\n", ret);
>> +
>> +	return ret;
>> +}
>> +
>> +static int __init qda_core_init(void)
>> +{
>> +	int ret;
>> +
>> +	ret = qda_rpmsg_register();
>> +	if (ret)
>> +		return ret;
>> +
>> +	pr_info("qda: QDA driver initialization complete\n");
>> +	return 0;
>> +}
>> +
>> +static void __exit qda_core_exit(void)
>> +{
>> +	qda_rpmsg_unregister();
>> +}
>> +
>> +module_init(qda_core_init);
>> +module_exit(qda_core_exit);
>> +
>> +MODULE_AUTHOR("Qualcomm AI Infra Team");
>> +MODULE_DESCRIPTION("Qualcomm DSP Accelerator Driver");
>> +MODULE_LICENSE("GPL");
>> diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
>> new file mode 100644
>> index 000000000000..7ba2ef19a411
>> --- /dev/null
>> +++ b/drivers/accel/qda/qda_drv.h
>> @@ -0,0 +1,62 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#ifndef __QDA_DRV_H__
>> +#define __QDA_DRV_H__
>> +
>> +#include <linux/device.h>
>> +#include <linux/rpmsg.h>
>> +#include <linux/types.h>
>> +#include <drm/drm_device.h>
>> +#include <drm/drm_drv.h>
>> +#include <drm/drm_file.h>
>> +
>> +/* Driver identification */
>> +#define QDA_DRIVER_NAME "qda"
>> +
>> +/**
>> + * struct qda_file_priv - Per-process private data for DRM file
>> + */
>> +struct qda_file_priv {
>> +	/** @qda_dev: Back-pointer to device structure */
>> +	struct qda_dev *qda_dev;
>> +};
>> +
>> +/**
>> + * struct qda_dev - Main device structure for QDA driver
>> + *
>> + * The DRM device is embedded as the first member so that container_of()
>> + * can recover the qda_dev from any drm_device pointer.
>> + */
>> +struct qda_dev {
>> +	/** @drm_dev: Embedded DRM device; recover via qda_dev_from_drm() */
>> +	struct drm_device drm_dev;
>> +	/** @rpdev: RPMsg device for communication with the remote processor */
>> +	struct rpmsg_device *rpdev;
>> +	/** @dev: Underlying Linux device */
>> +	struct device *dev;
>> +	/** @dsp_name: Name of the DSP domain (e.g. "cdsp", "adsp") */
>> +	const char *dsp_name;
>> +};
>> +
>> +/**
>> + * qda_dev_from_drm - Recover qda_dev from an embedded drm_device pointer
>> + * @dev: Pointer to the embedded drm_device
>> + *
>> + * Return: Pointer to the enclosing qda_dev.
>> + */
>> +static inline struct qda_dev *qda_dev_from_drm(struct drm_device *dev)
>> +{
>> +	return container_of(dev, struct qda_dev, drm_dev);
>> +}
>> +
>> +/* Device allocation (uses devm_drm_dev_alloc internally) */
>> +struct qda_dev *qda_alloc_device(struct device *dev);
>> +
>> +/* Core device lifecycle */
>> +int qda_register_device(struct qda_dev *qdev);
>> +void qda_unregister_device(struct qda_dev *qdev);
>> +
>> +#endif /* __QDA_DRV_H__ */
>> diff --git a/drivers/accel/qda/qda_rpmsg.c b/drivers/accel/qda/qda_rpmsg.c
>> new file mode 100644
>> index 000000000000..6eaf1b145f8a
>> --- /dev/null
>> +++ b/drivers/accel/qda/qda_rpmsg.c
>> @@ -0,0 +1,99 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> +#include <linux/module.h>
>> +#include <linux/of.h>
>> +#include <linux/rpmsg.h>
>> +#include <drm/drm_print.h>
>> +
>> +#include "qda_drv.h"
>> +#include "qda_rpmsg.h"
>> +
>> +static struct qda_dev *alloc_and_init_qdev(struct rpmsg_device *rpdev)
> 
> Use the prefix uniformly.
> 
ack>> +{
>> +	struct qda_dev *qdev;
>> +
>> +	qdev = qda_alloc_device(&rpdev->dev);
>> +	if (IS_ERR(qdev))
>> +		return qdev;
>> +
>> +	qdev->dev = &rpdev->dev;
>> +	qdev->rpdev = rpdev;
>> +	dev_set_drvdata(&rpdev->dev, qdev);
>> +
>> +	return qdev;
>> +}
>> +
>> +static int qda_rpmsg_cb(struct rpmsg_device *rpdev, void *data, int len,
>> +			void *priv, u32 src)
>> +{
>> +	/* Placeholder: responses will be dispatched here */
>> +	return 0;
>> +}
>> +
>> +static void qda_rpmsg_remove(struct rpmsg_device *rpdev)
>> +{
>> +	struct qda_dev *qdev = dev_get_drvdata(&rpdev->dev);
>> +
>> +	drm_dev_unplug(&qdev->drm_dev);
>> +	qdev->rpdev = NULL;
>> +	qda_unregister_device(qdev);
>> +	dev_info(qdev->dev, "RPMsg device removed\n");
> 
> Drop the spamming. And useless (where it is useless) drm_dbg() / dev_dbg() spamming too.
ack>
>> +}
>> +
>> +static int qda_rpmsg_probe(struct rpmsg_device *rpdev)
>> +{
>> +	struct qda_dev *qdev;
>> +	const char *label;
>> +	int ret;
>> +
>> +	dev_dbg(&rpdev->dev, "QDA RPMsg probe starting\n");
>> +
>> +	qdev = alloc_and_init_qdev(rpdev);
>> +	if (IS_ERR(qdev))
>> +		return PTR_ERR(qdev);
>> +
>> +	ret = of_property_read_string(rpdev->dev.of_node, "label", &label);
>> +	if (ret) {
>> +		dev_err(qdev->dev, "Missing 'label' property in DT node: %d\n", ret);
>> +		return ret;
>> +	}
>> +	qdev->dsp_name = label;
> 
> Why not just of_property_read_string(...., &qdev->dsp_name)?
> 
>> +
>> +	ret = qda_register_device(qdev);
> 
> return qda_register_device();
ack>
>> +	if (ret)
>> +		return ret;
>> +
>> +	drm_info(&qdev->drm_dev, "QDA RPMsg probe complete for %s\n", qdev->dsp_name);
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
>> +		pr_err("qda: Failed to register RPMsg driver: %d\n", ret);
>> +
>> +	return ret;
>> +}
>> +
>> +void qda_rpmsg_unregister(void)
>> +{
>> +	unregister_rpmsg_driver(&qda_rpmsg_driver);
>> +}
> 
> Just use module_rpmsg_driver(), drop all the wrappers and module_init()
> / exit().
I'll check and update this.>
>> diff --git a/drivers/accel/qda/qda_rpmsg.h b/drivers/accel/qda/qda_rpmsg.h
>> new file mode 100644
>> index 000000000000..5229d834b34b
>> --- /dev/null
>> +++ b/drivers/accel/qda/qda_rpmsg.h
>> @@ -0,0 +1,13 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#ifndef __QDA_RPMSG_H__
>> +#define __QDA_RPMSG_H__
>> +
>> +/* RPMsg transport layer registration */
>> +int qda_rpmsg_register(void);
>> +void qda_rpmsg_unregister(void);
>> +
>> +#endif /* __QDA_RPMSG_H__ */
>>
>> -- 
>> 2.34.1
>>
>>
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
