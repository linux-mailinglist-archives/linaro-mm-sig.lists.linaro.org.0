Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJsAD3MZ4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:16:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E5F4127CB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:16:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD5A643C0C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:16:33 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 945F13F779
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 08:12:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=Zcdf6M3T;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=c9r6sWNu;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 621NQ4Nr2353289
	for <linaro-mm-sig@lists.linaro.org>; Mon, 2 Mar 2026 08:12:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YsoqRWEnmbezHwWXwK/cDOGeLeQ6w9y75yey82wwwm4=; b=Zcdf6M3TDZSqgLfi
	2fOACi2y03BjI9OAyOXRdu+xMXNoPtWdj6Ek1x0Qy/8C4fGtH76ZW/iXVF3mWHAA
	ztFRrpNZLG/8+C5HjF+ze1OXv5Y42H48tv31J8YAeKOdKDxcmE2vUM4XHdK1SH8N
	jqX0S6BVY+TTHOKa8leb4b0QIf0+mKpOvK/3mI1ThRJe9zUEqvEukp/XDr4nbxUA
	jTo+HvAOgYjTVPbYEgaxGiCkubU/Qs+Ysfngq2+QgLtFbQ/5LSG4vly1R6QsXvWS
	TMUF1Drizz87ppE9SsMzmlkgV+Ggb5Rd3yAQJTIXDHGPAD5hIZQufb/rTITsRA5J
	nkpwuA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksfd4me9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 08:12:39 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-82740488112so10926254b3a.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 00:12:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772439159; x=1773043959; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YsoqRWEnmbezHwWXwK/cDOGeLeQ6w9y75yey82wwwm4=;
        b=c9r6sWNueqHxoDjYtLd8zt2CyzS0VzreSWJmKxRU7qNOIEbGJq+c3JlVegpu6gQ1oY
         is3SQ3c1XNQKwrwvzsi6+x6I9yIoF/kAuFYKU9cX9Cnq1QGpnNzFm2JC0gjjW9KAdskG
         waZFijVuPlPixQ/cCOna3ftvfawqgIhHnlUMHWD3at/n2C/Dos5sioXvyTLCrN1G1spY
         3mGH3oMnKqhTdPdK+G6QndV2/y5OYF/y/PCI4l7lv3sk+ninCJ+DNBhPere60hhCI3Yk
         5SB2OuQcaYoNQT/t2VI83I/BjLfddz4ENkRenQLwK9Xzw0Pmh4ncsrnJBoY3qwCGJHFH
         Kp+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772439159; x=1773043959;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YsoqRWEnmbezHwWXwK/cDOGeLeQ6w9y75yey82wwwm4=;
        b=OgZk8VyAM9OGOX/SNP4G+pUIbvlpiccJMvU+0h7X/5fyOVI5GxOlHupf84WVuEMhxI
         Tf5XYD6DIbWj83JQJne+tkVzNKStboaBA2BIVmTdRPizAGGiaKXLhHwhfryuB/lYvW7L
         vWGESJm8EOHgENsK8mydZYuiO8Zy+05q4oC/uTGtnC/KX06pJMkhbXjqfZZmeJdEw7es
         BK60ddleICIKKNdZZwRsXy0E8WWmMlcDqb5+5/saF3HjYaLdJ/uvXyf4rzSxxstb6Bmn
         NsWRBCpTQzQ2AsmjJw1dDFA0JsdyiRjvJa/KDiwApOrDDJr89RqeZ/7OqsU1f49/mgtH
         9h2g==
X-Forwarded-Encrypted: i=1; AJvYcCXlRP5J4m6rCSb4BBpddZvtbh6U0jnvGMeHlF94h3RfxoSYc7dSV6sry1EG0hBlcq7CELXeoK74sSKZ0RV2@lists.linaro.org
X-Gm-Message-State: AOJu0YzIxzSj9Me5ootCzSIAlc1tCOOyEwrC74whXH8xVM2XiOGjDsuT
	/GHhYnSv8dcGDqKXQTmVAazxUjGQF6KoeyZyQpqLUalBuqnwoa8dwuu0HcdVdDqbLUyAF08eFln
	iUMffdgis4YarNNRCqWlf9ABT0is0nPzCrN0wwpkeispBWn727bvIOvf8tf/y3ui60EOb/Q==
X-Gm-Gg: ATEYQzzqcnWEFQfVa2n0nrd3ARXua8aVeEq2yZ06sXQNbPwf5hXyx1SenrMibtZ6duV
	B6fxTIjMFdKw9J18GuY4jS4+EdsFdSyj0Taeu5DphR+qpTLscbNuSdo4ICuhXnGOicVeGti2SGg
	ZwBTINEqxRMIOtRfKSuPobE376d1ccfascYn7U5j0UEEQXPsAf6ye7wbbNC0Al6/QWreq7N4vOJ
	IfG/p3EQTN6OrbPqFAOS+RSoPWFg0UC6MtiasacQHvgj96AMRZtNjwdhG2uz37MbwGIFys2OQXS
	v6JcNagqlW3et2bOukDEi3mKQhODW7JMripssl4E0rMLeO965WfDYEfCblJIPG3meCFj9aNhFuX
	d4qNeeb3l5DymhyJRnBhtw/7zvXTu4V6+7llxAyybmMVgTGIh6w==
X-Received: by 2002:a05:6a00:414a:b0:81b:8872:ae10 with SMTP id d2e1a72fcca58-8274d8090eemr11013995b3a.0.1772439158708;
        Mon, 02 Mar 2026 00:12:38 -0800 (PST)
X-Received: by 2002:a05:6a00:414a:b0:81b:8872:ae10 with SMTP id d2e1a72fcca58-8274d8090eemr11013957b3a.0.1772439158150;
        Mon, 02 Mar 2026 00:12:38 -0800 (PST)
Received: from [10.206.99.28] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8273a060071sm12915292b3a.63.2026.03.02.00.12.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 00:12:37 -0800 (PST)
Message-ID: <7c795b4b-3a3f-47fb-9ef9-0b13601f584c@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 13:42:30 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-4-fe46a9c1a046@oss.qualcomm.com>
 <ox7jnqkjo3frhbgpp63sse7ram72obihe4qlbbn4z22wbw4szr@7pzoeecdvsyg>
 <e82443ff-f6c1-4b8e-b573-f4620dd0f17c@oss.qualcomm.com>
 <x6zseuf7g3ngtdlszf3vxj3nqexlkbtrp5kifo4tg4muzdef4n@5rngfg4gu47m>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <x6zseuf7g3ngtdlszf3vxj3nqexlkbtrp5kifo4tg4muzdef4n@5rngfg4gu47m>
X-Proofpoint-ORIG-GUID: PF86nERIC8hRZ4vIdSPSHQkPtk6mBjGg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3MCBTYWx0ZWRfXw/XtxsL0SSDL
 Y6pXxjrtQeQwwKrPcnmdSgzwEVCkiNxtkWBwnT77OJ8T0r/mOJxUpSanqiFlVorGr/I7u34dJo3
 JmQOYam1gzOdn+QK0OmhTWtVX6Qemkf1T2T2jfConLiFg4xPHTnQnDj2GDtijoC3fXY4x7cAgvs
 jJg/Klle48HFp1wxmYtJ6dY7ALSVq+IfobT77GwpP887VptFUEqaSNWUcjejnjBgqDPzWE+jkP1
 luZAukFANMqmQYEKltgtwR66JPp4xK3OpbN1EgKx9ugsP/WbkssMLL+iXGJPbar6wIT4M51VqQD
 UoSVk0WwSeRiv64OvZ5VQqg/mIIKci75ZbXpOtAT3ihuTqS11yn4ygnbYmlaeC5M+UzeNfmLa6Q
 NTvKKyXgaExw3N3enhN1g8piK2QhTX4bU1PbSgcBbbKwNnwDghtwNkDJsl9otrnkBEsviUTYhIm
 /4S0iC2nFl/GnshfGow==
X-Authority-Analysis: v=2.4 cv=HKDO14tv c=1 sm=1 tr=0 ts=69a54677 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=jwkSyuDCPDQl0KFoS7wA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: PF86nERIC8hRZ4vIdSPSHQkPtk6mBjGg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020070
X-Spamd-Bar: -----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FOFN6JVBSV65V4SIJ4O673AH3B3CHJK4
X-Message-ID-Hash: FOFN6JVBSV65V4SIJ4O673AH3B3CHJK4
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:15 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 04/18] accel/qda: Add built-in compute CB bus for QDA and integrate with IOMMU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FOFN6JVBSV65V4SIJ4O673AH3B3CHJK4/>
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: C2E5F4127CB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/26/2026 12:39 AM, Dmitry Baryshkov wrote:
> On Wed, Feb 25, 2026 at 11:26:52PM +0530, Ekansh Gupta wrote:
>>
>> On 2/24/2026 4:14 AM, Dmitry Baryshkov wrote:
>>> On Tue, Feb 24, 2026 at 12:38:58AM +0530, Ekansh Gupta wrote:
>>>> Introduce a built-in compute context-bank (CB) bus used by the Qualcomm
>>>> DSP accelerator (QDA) driver to represent DSP CB devices that require
>>>> IOMMU configuration. This separates the CB bus from the QDA driver and
>>>> allows QDA to remain a loadable module while the bus is always built-in.
>>> Why? What is the actual problem that you are trying to solve?
>> Bus needs to be built-in as it is being used by iommu driver. I'll add more details here.
> It's an implementation detail. Start your commit message with the
> description of the issue or a problem that you are solving.
Ack.
>
>>>> A new bool Kconfig symbol DRM_ACCEL_QDA_COMPUTE_BUS is added and is
>>> Don't describe the patch contents. Please.
>> Ack.
>>>> selected by the main DRM_ACCEL_QDA driver. The parent accel Makefile is
>>>> updated to descend into the QDA directory for both built-in and module
>>>> builds so that the CB bus is compiled into vmlinux while the driver
>>>> remains modular.
>>>>
>>>> The CB bus is registered at postcore_initcall() time and is exposed to
>>>> the IOMMU core through iommu_buses[] in the same way as the Tegra
>>>> host1x context-bus. This enables later patches to create CB devices on
>>>> this bus and obtain IOMMU domains for them.
>>> Note, there is nothing QDA-specific in this patch. Please explain, why
>>> the bus is QDA-specific? Can we generalize it?
>> I needed a custom bus here to use for the compute cb devices for iommu
>> configurations, I don't see any reason to keep it QDA-specific. The only requirement
>> is that this should be enabled built in whenever QDA is enabled.
> Why? FastRPC uses platform_bus. You need to explain, why it's not
> correct.
Ack.
>
>> But if I keep it generic, where should this be placed? Should it be accel(or drm?) specific?
> drivers/base? Or drivers/iommu? That would totally depend on the issue
> description. E.g. can we use the same code for host1x?
I'll evaluate and bring this change separately for fastrpc and host1x.
>
>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
