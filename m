Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kO8XIvkZ4Wn3pAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:18:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 17613412873
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:18:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1EAFF40516
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:18:48 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id CDFE43F7DA
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 15:57:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=a+ZZvVYl;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=Zq3daP61;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (lists.linaro.org: domain of srinivas.kandagatla@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=srinivas.kandagatla@oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 622DoDtl2612430
	for <linaro-mm-sig@lists.linaro.org>; Mon, 2 Mar 2026 15:57:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8vyvR83xrrtCU77jvjKIBTD0soAKN/hIqxbrkw2O4Eg=; b=a+ZZvVYlo4wLtBeZ
	mODk+bsqfzDxlaQMCa5Nb/TM3dvekABo4uq/BUsHzK1Pb0vFDXQl9IDHpCrZrvan
	Gy+Oqm2ACVA27CW//s2cPoXfFPOUtdSrPpzsyN1BIONwz9MQl7n65UrxpQKhdCtZ
	paYzk8RKggGp0IvZ21Nf+jjsl87nnfG2fjcbI9h0HJ0zL0dak/Bg8uTF60f3gKE/
	GPsd/zyrYpqTjI7c0lZLm1vajjB4+vKhSXvoatUqNzV5GVigiMR8e8VLxiV9djHR
	RRgRIbLG/ROGR6wFZN1JGbb+MS1rSZiv5ndWd/iZ8dbVn6ji/sccvremCddphhnA
	QbMf/A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cmgbav2f0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 15:57:13 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb3fae6f60so4138544885a.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 07:57:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772467032; x=1773071832; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8vyvR83xrrtCU77jvjKIBTD0soAKN/hIqxbrkw2O4Eg=;
        b=Zq3daP61IJmzYbCmx4lZs0OeOaiaydHYiogvNp4+r8BPS/Xw6Z7vAi44U3So80VgDR
         nLPfqw7QAkHU+cqvQBFaXm1pS4IHyuQQvHpiYT252TnEakGFiIk4kuCySmJJQB4T4fdy
         F+MeDVGTlA+NiEcvRUkGmQTZoWCeJLviXz8Af6MfUGd5odZVnu3zVDyic9gbnIrs/lE9
         5zin9Xnbr1CAJ2C+M13YEyWN8IHbOUb1PnhMhxutlLeA1jQ3u5g99zLld8jW8XJ4W8sL
         DzkhM+694fB+/raOTi4OrFiPaOH0wxZPhHcaBlA8/ccj1ifSF3NgfsRX1FDitsDVdJ2l
         qDpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772467032; x=1773071832;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8vyvR83xrrtCU77jvjKIBTD0soAKN/hIqxbrkw2O4Eg=;
        b=E9DEJ5uqiyLw+i9CFU+3KH1ziJFTeoib0PAzmedhBRfAvanMSUwt0kvzKQLWgXpI7a
         W8E2mMpuNro/i8MROIYjXDkOrO/rSru9tWjl6VIlIB4vZXOo0Q8TLyX9yOHJDBi+OLRX
         gw6gBxLf9Y+5yQs+JDEuQclvSg/6R8pVsBwx5/T2V1Dok+3WEVZY5vl9+abRMSL3NKea
         1FoysGSANe0EDJEJ/WhywEzYN5WaPtVHcEw6A/WxMBjbBXCSj0XUFtsG7GAqCo7x2aiv
         CcNI/p+vyIEUssBlr52ouUEQAbQL7FX7Us/OuZlXPvTEv5bdbbqp1dlXYknwSkAnxqJc
         WSaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoOYI4yLgROiUsrJVV5GRJUI41vcZbaStx4EAXPEO4MFLTG+9fXrgr6c0KDI4h5QzRnuzE3eNBisYHue/6@lists.linaro.org
X-Gm-Message-State: AOJu0Yweyg4ce179jn3RdY62zNQ26+34GyQzjAxJW6cshSd0fbIEwPid
	ctqlTtpYGTcJ+BpDvLlWGS+uoPcAKlOsX6YA+KdWKZQKBL8aQ761s6NP2LABD+QvEc3u8f5Lut4
	5Ut1+d1tz4o3oWKk3NpjvcR0FrFW8XOJDV5d8CtDu94TCeO4MY6f0AWeD2uYal2k/VLtjzA==
X-Gm-Gg: ATEYQzy/dLmzydFEPBnW5Dl49ELK5rH4T/j8Hmms01O/vd/+HvVOBMdtrix/9IkOvZl
	GDQVf1qf7hQKZQcYIyiaW2tPNBlBcYxShkvjzBc8mA1H5ZJ2f9Bt2cMEZbsVncdJRunemTP/U2s
	xxFZ2kVOsOhSruN5aL4o9jT6AbKQIynjbGoim9RYzSNJNYWSpFWV1+ypeoGgwwgtTUT4Evd1Ct8
	CwySiWJHyNWt/ZKbbU6MGYLlNpN25wuZTBxvZx0zVVF+a6PROPB5qFxQy5+ExKLVHKBF38/h+ZT
	TaXEIM3j8qAr5HRO1E2mKah6MwCh3vb00tTueK188jPf8EKJm996ryTA6J7/4jFMCNSZvXYuJJa
	lo5FOzD326n5nfkBKDU99Se7iNigI6e4ifMN6YwWMCVOknlKp
X-Received: by 2002:a05:620a:2906:b0:8c7:1181:779f with SMTP id af79cd13be357-8cbbf3f540dmr1944224985a.35.1772467032112;
        Mon, 02 Mar 2026 07:57:12 -0800 (PST)
X-Received: by 2002:a05:620a:2906:b0:8c7:1181:779f with SMTP id af79cd13be357-8cbbf3f540dmr1944219785a.35.1772467031498;
        Mon, 02 Mar 2026 07:57:11 -0800 (PST)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-483bfb296bfsm163572955e9.0.2026.03.02.07.57.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 07:57:09 -0800 (PST)
Message-ID: <e60c6218-ff33-4603-afc1-28a9b891b61d@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 15:57:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>,
        Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
        Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDEzMyBTYWx0ZWRfXw7giG2umZhzq
 mO4uY4LxZAn3Dt3Keg+NALCTHsifMzmNV2h5a6CjLGY01/YW09qD4c0Du0rYCBoRNBbRKeAp4gu
 GN+WJ3ZGTZpV6C3nzSnYxyLnDx5+h1e1TR8CE2mPrFZ3B77R5R9XPZKNvhp6u0/ZmF7TVT696LM
 try1vR+kgm4mscecS8j5loty952TLaf4YDMNcxHPHLRLG5DAqfvXRnAb8ebtX/K+YgI8NiSA51E
 m0xpdDSltXj5LEsOkv5A+Vwo4SE5LPYZQgX2XnX6jXXBKo+N7RoWBtd7+SHD8i9fG9LTseZSqnd
 53kc4x+j12xlIpfMO81UMMUQloYjoLmsyqU9E/82/4gvpYNRHn01y6CKHkndxvAcwZSv3pNM++3
 cFiDBsF1s8AueJCeFqWDEu3F+Vuut+taa3GzTjYgZK6mGlH0K9gG9j2r4xud6sTNHhLtafsYeym
 7/BNPnZ6Cdb5JdlLrEQ==
X-Authority-Analysis: v=2.4 cv=QfVrf8bv c=1 sm=1 tr=0 ts=69a5b359 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=9YJduu4mqnAt5a5FaXIA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: Hd-hFemRt1qIfVt1zeKstvqW_wY1GZQw
X-Proofpoint-GUID: Hd-hFemRt1qIfVt1zeKstvqW_wY1GZQw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-03-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 clxscore=1011
 adultscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020133
X-Spamd-Bar: -----
X-MailFrom: srinivas.kandagatla@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Y52N3KG55NFWZRUKSLVWFU6BDV3RWZ7G
X-Message-ID-Hash: Y52N3KG55NFWZRUKSLVWFU6BDV3RWZ7G
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:24 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/18] accel/qda: Introduce Qualcomm DSP Accelerator driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y52N3KG55NFWZRUKSLVWFU6BDV3RWZ7G/>
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
	DATE_IN_PAST(1.00)[1081];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,oss.qualcomm.com:mid]
X-Rspamd-Queue-Id: 17613412873
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 2/23/26 7:08 PM, Ekansh Gupta wrote:
Thanks Ekansh for this this one out.

> Key Features
> ============
> 
> * Standard DRM accelerator interface via /dev/accel/accelN> * GEM-based buffer management with DMA-BUF import/export support
> * IOMMU-based memory isolation using per-process context banks

> * FastRPC protocol implementation for DSP communication
> * RPMsg transport layer for reliable message passing
> * Support for all DSP domains (ADSP, CDSP, SDSP, GDSP)

To what extent is this support expected ?

> * Comprehensive IOCTL interface for DSP operations
> 
> High-Level Architecture Differences with Existing FastRPC Driver
> =================================================================
> 
> The QDA driver represents a significant architectural departure from the
> existing FastRPC driver (drivers/misc/fastrpc.c), addressing several key
> limitations while maintaining protocol compatibility:
> 
> 3. IOMMU Context Bank Management
> 
> 
> 9. UAPI Design
>   - FastRPC: Custom IOCTL interface
>   - QDA: DRM-style IOCTLs with proper versioning support
>   - Benefit: Follows DRM conventions, easier userspace integration

Can you elaborate this.

Are we really getting leverage from any  of the standard libraries that
are available for drm accel?

In general I would like to understand how standardization of this kernel
driver is helping userspace side of things.

Does this mean that there will be no libfastrpc requirements in future?

If that is not the case then I see no point.

> 
> Open Items
> ===========
> 
> The following items are identified as open items:
> 
> 1. Privilege Level Management
>   - Currently, daemon processes and user processes have the same access
>     level as both use the same accel device node. This needs to be
>     addressed as daemons attach to privileged DSP PDs and require
>     higher privilege levels for system-level operations
>   - Seeking guidance on the best approach: separate device nodes,
>     capability-based checks, or DRM master/authentication mechanisms
> 
> 2. UAPI Compatibility Layer

Simple rule! you can not break anything that is already working with
existing UAPI.

>   - Add UAPI compat layer to facilitate migration of client applications
>     from existing FastRPC UAPI to the new QDA accel driver UAPI,
>     ensuring smooth transition for existing userspace code

What will happen to long term supported devices?

>   - Seeking guidance on implementation approach: in-kernel translation
>     layer, userspace wrapper library, or hybrid solution

> 
> 3. Documentation Improvements
>   - Add detailed IOCTL usage examples
>   - Document DSP firmware interface requirements
>   - Create migration guide from existing FastRPC
> 
> 4. Per-Domain Memory Allocation
>   - Develop new userspace API to support memory allocation on a per
>     domain basis, enabling domain-specific memory management and
>     optimization
> 
> 5. Audio and Sensors PD Support
>   - The current patch series does not handle Audio PD and Sensors PD
>     functionalities. These specialized protection domains require
>     additional support for real-time constraints and power management
Please elaborate, fastrpc support is incomplete without audiopd support.

--srini
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
