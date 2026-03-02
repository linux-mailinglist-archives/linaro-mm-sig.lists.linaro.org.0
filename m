Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MyyCrwZ4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:17:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 691DD41280C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:17:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7808D441DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:17:43 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 8B8283ED23
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 08:54:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=cBTYV64f;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=Kh9ySZ19;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62288uQ62399767
	for <linaro-mm-sig@lists.linaro.org>; Mon, 2 Mar 2026 08:54:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CDz70f1L8B8Gu44lcWuRhLGKdCPkERM+4Pdt4vJUy2Y=; b=cBTYV64fu14WrxBj
	j138PiY0A4Ouy0h2NRR0/2vV78wWIqVql1tgdbEmEqbHNbbO0vukNzKLSsfhajnI
	eCzDz68PiLu2KNg5kdkdovlZQMhSj0d72o2krp4MhU2MYLFes41ov7yLRtSMTcZE
	fA51ovhCDPTEK2jETrsF2suT/uAdYrbDhDXaQq0ZOwmif9pZkl5v/i4axpkNhl/M
	sX/lGjmnReqq0676r+1ZRAfKsaInbTK3YUUoKqaDokkeBtNE6uvj9p2TePJAmgFQ
	GNNN6vroFfT3JCnnQvQOKbScqhAI4uOHeUaHup9fyoQmFVQgpsyxJaKcZnq/j/xf
	2zZ9PQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksg74rnp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 08:54:36 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-354bc535546so3415539a91.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 00:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772441676; x=1773046476; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CDz70f1L8B8Gu44lcWuRhLGKdCPkERM+4Pdt4vJUy2Y=;
        b=Kh9ySZ19ZAnPa4kYIpyI5M+jiG2p/XFB22/ZLlSPoEuwvXi0/wEVZUMVL1Bl1XCbWc
         SKnjERDD/Xohqv9GgpELpYOIe+3f0wHuDsRwtGbaeXbvVXRogaG+YVsJgxnHWMN5nYUE
         +l8I9N/q3RjzOpq25i/nvh/hLsyv444TPgEtgQhQ/oeQFGigkEhE/flPiVJNOMpWrB0j
         IXeU2jrlhk6QLq4wBhZTEf3xRsIPKZ4Qu3no+AxeEOspnVAjgA4pHvMg0QJL5mH7dEAZ
         z9F4MGm75swvRrsZok4tpsddSAdF9c3ehll23eh4D4AJZuR6M2rCShunpZaTgj7FJIbR
         LyKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772441676; x=1773046476;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CDz70f1L8B8Gu44lcWuRhLGKdCPkERM+4Pdt4vJUy2Y=;
        b=knGuJGISiWkYgk9/pKhbviQ7+2Kwc9GiuSloM9IpfLEk4VO3EGjiJgVRsyFQxIJhIO
         Ia4OEPPgEecF6Ubzm6IT+WOuCWYmbGXw9UXIuSQR2i4S8ugnF1GkAw50epKBH78/CqvM
         8MChJtHHGsLmOi/Th5SB1aorQHglPrn668Hj1ymdJJ8P9n+0ZWLayygqh+RAm659UEH9
         u3SE26fox1e900SzpcT7Gk0JmYE7N4z0junhipoDHTdqDMt5aXx5/XZ46wRubyEJSbSX
         Mdt2NradwQOEWGl6lOTDqskewwqNWKp11HTH4m1hDQG0oGDTj3eqPt0wzerQnCCeM87W
         1a+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUtpAH96ZeGCckEyVjBNwC2Xy/IOyL1JO/XmPGVoqgsbA3R785bKowZahIHpbZl73B5UhQOpoyOZ5haYmZD@lists.linaro.org
X-Gm-Message-State: AOJu0YxkxrIPFTDnEaei/GAwy8BsPuxqsgjw729srF5kfk3V24cX/Ddb
	YY9BAwmWSlTUurRl9rSWxUTWNR8efWX3xo4nc7GCJ0OU42Ej6LkOpSXj6vsvYYUCMdFYNFB+9MT
	ZhAJZM1gAoMfLNqu9D0UyHxBUMGJpybuDvHZGnGEtYZFN0RFRl8OVv8NVjcY0p0ZWWRbXiw==
X-Gm-Gg: ATEYQzyAhkatgxfgFjti7uQ5bLB4f0z7Bqhk2smyr1giStM4oYYJNZc3o/xwVD0q6AV
	sjKIhYIGrvdCudzi6p75/Eqdu3lKgGtrKtAoLgenCqa6d0VnqOlUemsz5BLKCpXo1zofKeWaU+a
	36DkFAx5RnHAzQeHr684bxP4j2x6AXO5MtfORyk2H2hrBJKgDUybexayMH5bJ/IMm/i4CqtVJcG
	R1r0tNsEWZG/D7X6NciFoqrjXrY2VYN4EEu4kKidTOjgOtONs7AAwYBuw+4UuZ9o57AJO6p8NA8
	SfP73npoqd2riXMZ7Z9xDNO2WMvlSHNMKWbRcWjR2BeqXUrb2I7FJh9k5TSVEShEY7sD7ltEfkS
	ey9ur47hyaLJEjdZ/C83j3n8K8mUvjLk08BoExkzwgurwnA+x6w==
X-Received: by 2002:a05:6a20:3ca8:b0:366:1a00:2dab with SMTP id adf61e73a8af0-395c39df032mr10540113637.3.1772441675776;
        Mon, 02 Mar 2026 00:54:35 -0800 (PST)
X-Received: by 2002:a05:6a20:3ca8:b0:366:1a00:2dab with SMTP id adf61e73a8af0-395c39df032mr10540069637.3.1772441675125;
        Mon, 02 Mar 2026 00:54:35 -0800 (PST)
Received: from [10.206.99.28] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa801963sm11245521a12.21.2026.03.02.00.54.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 00:54:34 -0800 (PST)
Message-ID: <7b7cf9ac-d05a-4558-9abe-698ec41a57e8@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 14:24:26 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bjorn Andersson <andersson@kernel.org>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <ysqmm2lfy5zfad2wplxihafwktmhldisddgpjqrqwyynhakmsi@deptrcggcptl>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <ysqmm2lfy5zfad2wplxihafwktmhldisddgpjqrqwyynhakmsi@deptrcggcptl>
X-Proofpoint-ORIG-GUID: OZ0qASjHw6G0eBTRyM_K1_CV_ULYia_3
X-Proofpoint-GUID: OZ0qASjHw6G0eBTRyM_K1_CV_ULYia_3
X-Authority-Analysis: v=2.4 cv=FaA6BZ+6 c=1 sm=1 tr=0 ts=69a5504c cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=D19gQVrFAAAA:8 a=4dRkgRR0srxH7tzqasIA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=cvBusfyB2V15izCimMoJ:22 a=W4TVW4IDbPiebHqcZpNg:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3NyBTYWx0ZWRfXy/6o7VcgADN1
 xd8tp1kzpkL0hOzYdRbajYIrUqXsINwT8em1DnR3Rxgyu7i/zEZYywEns/2sfcJpz/HB/vYHvrg
 +v3wCwZdMHR52PHZGCj3yYKBJPFm/V6bcw10HvA693O5aNFIfevOgLFgiLHxqj9Uar3odUcFP9C
 cqHW9GZ4L6bqKqAL6Ngn4Tq6VkFmPMkMJIy7d4aurbEB+msgigSX+2hFqFGcYbQ83Toy5BTUV1K
 LeGlX8ImRdElcLgTd7aZg/dCgq0QdrYAqDOeBmcLKzptF6GrL5pr/ZGZYt05EOXNGqz5HVIUsNg
 7aCTKLe6SwMRMvNV8pZrnhUKNZDFO2816nKYbKcLZcZW8sGxG8hJCBxTPLO0+A1JZ2DbdqaRVte
 Kh2cmaic+tOtJIN8bEtt5nIOJFUI5uC1WfdmklqGnHNkhdjXLd/ZGZRo2Bys0VRQ4kPOHN0emsL
 USvmd5GbrKg/h/mwZgQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020077
X-Spamd-Bar: -----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4YFCMUGQDAG3OXM3FRP53SWTFEUWFPBI
X-Message-ID-Hash: 4YFCMUGQDAG3OXM3FRP53SWTFEUWFPBI
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:20 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/18] accel/qda: Introduce Qualcomm DSP Accelerator driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4YFCMUGQDAG3OXM3FRP53SWTFEUWFPBI/>
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
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,oss.qualcomm.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 691DD41280C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/24/2026 3:33 AM, Bjorn Andersson wrote:
> On Tue, Feb 24, 2026 at 12:38:54AM +0530, Ekansh Gupta wrote:
>> This patch series introduces the Qualcomm DSP Accelerator (QDA) driver,
>> a modern DRM-based accelerator implementation for Qualcomm Hexagon DSPs.
>> The driver provides a standardized interface for offloading computational
>> tasks to DSPs found on Qualcomm SoCs, supporting all DSP domains (ADSP,
>> CDSP, SDSP, GDSP).
>>
>> The QDA driver is designed as an alternative for the FastRPC driver
>> in drivers/misc/, offering improved resource management, better integration
>> with standard kernel subsystems, and alignment with the Linux kernel's
>> Compute Accelerators framework.
>>
> If I understand correctly, this is just the same FastRPC protocol but
> in the accel framework, and hence with a new userspace ABI?
>
> I don't fancy the name "QDA" as an acronym for "FastRPC Accel".
>
> I would much prefer to see this living in drivers/accel/fastrpc and be
> named some variation of "fastrpc" (e.g. fastrpc_accel). (Driver name can
> be "fastrpc" as the other one apparently is named "qcom,fastrpc").
Planning to stick with QDA as per the future plans where the driver might use some
other mechanism than fastrpc(signalling).
>
>> User-space staging branch
>> ============
>> https://github.com/qualcomm/fastrpc/tree/accel/staging
>>
>> Key Features
>> ============
>>
>> * Standard DRM accelerator interface via /dev/accel/accelN
>> * GEM-based buffer management with DMA-BUF import/export support
>> * IOMMU-based memory isolation using per-process context banks
>> * FastRPC protocol implementation for DSP communication
>> * RPMsg transport layer for reliable message passing
>> * Support for all DSP domains (ADSP, CDSP, SDSP, GDSP)
>> * Comprehensive IOCTL interface for DSP operations
>>
>> High-Level Architecture Differences with Existing FastRPC Driver
>> =================================================================
>>
>> The QDA driver represents a significant architectural departure from the
>> existing FastRPC driver (drivers/misc/fastrpc.c), addressing several key
>> limitations while maintaining protocol compatibility:
>>
>> 1. DRM Accelerator Framework Integration
>>   - FastRPC: Custom character device (/dev/fastrpc-*)
>>   - QDA: Standard DRM accel device (/dev/accel/accelN)
>>   - Benefit: Leverages established DRM infrastructure for device
>>     management.
>>
>> 2. Memory Management
>>   - FastRPC: Custom memory allocator with ION/DMA-BUF integration
>>   - QDA: Native GEM objects with full PRIME support
>>   - Benefit: Seamless buffer sharing using standard DRM mechanisms
>>
>> 3. IOMMU Context Bank Management
>>   - FastRPC: Direct IOMMU domain manipulation, limited isolation
>>   - QDA: Custom compute bus (qda_cb_bus_type) with proper device model
>>   - Benefit: Each CB device is a proper struct device with IOMMU group
>>     support, enabling better isolation and resource tracking.
>>   - https://lore.kernel.org/all/245d602f-3037-4ae3-9af9-d98f37258aae@oss.qualcomm.com/
>>
>> 4. Memory Manager Architecture
>>   - FastRPC: Monolithic allocator
>>   - QDA: Pluggable memory manager with backend abstraction
>>   - Benefit: Currently uses DMA-coherent backend, easily extensible for
>>     future memory types (e.g., carveout, CMA)
>>
>> 5. Transport Layer
>>   - FastRPC: Direct RPMsg integration in core driver
>>   - QDA: Abstracted transport layer (qda_rpmsg.c)
>>   - Benefit: Clean separation of concerns, easier to add alternative
>>     transports if needed
>>
>> 8. Code Organization
>>   - FastRPC: ~3000 lines in single file
>>   - QDA: Modular design across multiple files (~4600 lines total)
> "Now 50% more LOC and you need 6 tabs open in your IDE!"
>
> Might be better, but in itself it provides no immediate value.
I added this as a point because I think separating/abstracting sensible parts to different files
might improve readability and maintainability. But if that doesn't make sense, then I can
remove this point.

https://lore.kernel.org/all/c007308b-4641-44a5-9e64-fb085cced2b0@linaro.org/
>
>>     * qda_drv.c: Core driver and DRM integration
>>     * qda_gem.c: GEM object management
>>     * qda_memory_manager.c: Memory and IOMMU management
>>     * qda_fastrpc.c: FastRPC protocol implementation
>>     * qda_rpmsg.c: Transport layer
>>     * qda_cb.c: Context bank device management
>>   - Benefit: Better maintainability, clearer separation of concerns
>>
>> 9. UAPI Design
>>   - FastRPC: Custom IOCTL interface
>>   - QDA: DRM-style IOCTLs with proper versioning support
>>   - Benefit: Follows DRM conventions, easier userspace integration
>>
>> 10. Documentation
>>   - FastRPC: Minimal in-tree documentation
>>   - QDA: Comprehensive documentation in Documentation/accel/qda/
>>   - Benefit: Better developer experience, clearer API contracts
>>
>> 11. Buffer Reference Mechanism
>>   - FastRPC: Uses buffer file descriptors (FDs) for all book-keeping
>>     in both kernel and DSP
>>   - QDA: Uses GEM handles for kernel-side management, providing better
>>     integration with DRM subsystem
>>   - Benefit: Leverages DRM GEM infrastructure for reference counting,
>>     lifetime management, and integration with other DRM components
>>
> This is all good, but what is the plan regarding /dev/fastrpc-*?
>
> The idea here clearly is to provide an alternative implementation, and
> they seem to bind to the same toplevel compatible - so you can only
> compile one into your kernel at any point in time.
>
> So if I understand correctly, at some point in time we need to say
> CONFIG_DRM_ACCEL_QDA=m and CONFIG_QCOM_FASTRPC=n, which will break all
> existing user space applications? That's not acceptable.
>
>
> Would it be possible to have a final driver that is implemented as a
> accel, but provides wrappers for the legacy misc and ioctl interface to
> the applications?
As per the discussions on other thread, I believe compat driver would be the way to
go for this. When I send the actual driver changes, I can include compat driver as well
to the patches.

I'm assuming a compat driver will live in the same QDA directory and will translate misc/fastrpc
calls to accel/qda calls if QDA is enabled.
>
> Regards,
> Bjorn
>
>> Key Technical Improvements
>> ===========================
>>
>> * Proper device model: CB devices are real struct device instances on a
>>   custom bus, enabling proper IOMMU group management and power management
>>   integration
>>
>> * Reference-counted IOMMU devices: Multiple file descriptors from the same
>>   process share a single IOMMU device, reducing overhead
>>
>> * GEM-based buffer lifecycle: Automatic cleanup via DRM GEM reference
>>   counting, eliminating many resource leak scenarios
>>
>> * Modular memory backends: The memory manager supports pluggable backends,
>>   currently implementing DMA-coherent allocations with SID-prefixed
>>   addresses for DSP firmware
>>
>> * Context-based invocation tracking: XArray-based context management with
>>   proper synchronization and cleanup
>>
>> Patch Series Organization
>> ==========================
>>
>> Patches 1-2:   Driver skeleton and documentation
>> Patches 3-6:   RPMsg transport and IOMMU/CB infrastructure
>> Patches 7-9:   DRM device registration and basic IOCTL
>> Patches 10-12: GEM buffer management and PRIME support
>> Patches 13-17: FastRPC protocol implementation (attach, invoke, create,
>>                map/unmap)
>> Patch 18:      MAINTAINERS entry
>>
>> Open Items
>> ===========
>>
>> The following items are identified as open items:
>>
>> 1. Privilege Level Management
>>   - Currently, daemon processes and user processes have the same access
>>     level as both use the same accel device node. This needs to be
>>     addressed as daemons attach to privileged DSP PDs and require
>>     higher privilege levels for system-level operations
>>   - Seeking guidance on the best approach: separate device nodes,
>>     capability-based checks, or DRM master/authentication mechanisms
>>
>> 2. UAPI Compatibility Layer
>>   - Add UAPI compat layer to facilitate migration of client applications
>>     from existing FastRPC UAPI to the new QDA accel driver UAPI,
>>     ensuring smooth transition for existing userspace code
>>   - Seeking guidance on implementation approach: in-kernel translation
>>     layer, userspace wrapper library, or hybrid solution
>>
>> 3. Documentation Improvements
>>   - Add detailed IOCTL usage examples
>>   - Document DSP firmware interface requirements
>>   - Create migration guide from existing FastRPC
>>
>> 4. Per-Domain Memory Allocation
>>   - Develop new userspace API to support memory allocation on a per
>>     domain basis, enabling domain-specific memory management and
>>     optimization
>>
>> 5. Audio and Sensors PD Support
>>   - The current patch series does not handle Audio PD and Sensors PD
>>     functionalities. These specialized protection domains require
>>     additional support for real-time constraints and power management
>>
>> Interface Compatibility
>> ========================
>>
>> The QDA driver maintains compatibility with existing FastRPC infrastructure:
>>
>> * Device Tree Bindings: The driver uses the same device tree bindings as
>>   the existing FastRPC driver, ensuring no changes are required to device
>>   tree sources. The "qcom,fastrpc" compatible string and child node
>>   structure remain unchanged.
>>
>> * Userspace Interface: While the driver provides a new DRM-based UAPI,
>>   the underlying FastRPC protocol and DSP firmware interface remain
>>   compatible. This ensures that DSP firmware and libraries continue to
>>   work without modification.
>>
>> * Migration Path: The modular design allows for gradual migration, where
>>   both drivers can coexist during the transition period. Applications can
>>   be migrated incrementally to the new UAPI with the help of the planned
>>   compatibility layer.
>>
>> References
>> ==========
>>
>> Previous discussions on this migration:
>> - https://lkml.org/lkml/2024/6/24/479
>> - https://lkml.org/lkml/2024/6/21/1252
>>
>> Testing
>> =======
>>
>> The driver has been tested on Qualcomm platforms with:
>> - Basic FastRPC attach/release operations
>> - DSP process creation and initialization
>> - Memory mapping/unmapping operations
>> - Dynamic invocation with various buffer types
>> - GEM buffer allocation and mmap
>> - PRIME buffer import from other subsystems
>>
>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>> ---
>> Ekansh Gupta (18):
>>       accel/qda: Add Qualcomm QDA DSP accelerator driver docs
>>       accel/qda: Add Qualcomm DSP accelerator driver skeleton
>>       accel/qda: Add RPMsg transport for Qualcomm DSP accelerator
>>       accel/qda: Add built-in compute CB bus for QDA and integrate with IOMMU
>>       accel/qda: Create compute CB devices on QDA compute bus
>>       accel/qda: Add memory manager for CB devices
>>       accel/qda: Add DRM accel device registration for QDA driver
>>       accel/qda: Add per-file DRM context and open/close handling
>>       accel/qda: Add QUERY IOCTL and basic QDA UAPI header
>>       accel/qda: Add DMA-backed GEM objects and memory manager integration
>>       accel/qda: Add GEM_CREATE and GEM_MMAP_OFFSET IOCTLs
>>       accel/qda: Add PRIME dma-buf import support
>>       accel/qda: Add initial FastRPC attach and release support
>>       accel/qda: Add FastRPC dynamic invocation support
>>       accel/qda: Add FastRPC DSP process creation support
>>       accel/qda: Add FastRPC-based DSP memory mapping support
>>       accel/qda: Add FastRPC-based DSP memory unmapping support
>>       MAINTAINERS: Add MAINTAINERS entry for QDA driver
>>
>>  Documentation/accel/index.rst          |    1 +
>>  Documentation/accel/qda/index.rst      |   14 +
>>  Documentation/accel/qda/qda.rst        |  129 ++++
>>  MAINTAINERS                            |    9 +
>>  arch/arm64/configs/defconfig           |    2 +
>>  drivers/accel/Kconfig                  |    1 +
>>  drivers/accel/Makefile                 |    2 +
>>  drivers/accel/qda/Kconfig              |   35 ++
>>  drivers/accel/qda/Makefile             |   19 +
>>  drivers/accel/qda/qda_cb.c             |  182 ++++++
>>  drivers/accel/qda/qda_cb.h             |   26 +
>>  drivers/accel/qda/qda_compute_bus.c    |   23 +
>>  drivers/accel/qda/qda_drv.c            |  375 ++++++++++++
>>  drivers/accel/qda/qda_drv.h            |  171 ++++++
>>  drivers/accel/qda/qda_fastrpc.c        | 1002 ++++++++++++++++++++++++++++++++
>>  drivers/accel/qda/qda_fastrpc.h        |  433 ++++++++++++++
>>  drivers/accel/qda/qda_gem.c            |  211 +++++++
>>  drivers/accel/qda/qda_gem.h            |  103 ++++
>>  drivers/accel/qda/qda_ioctl.c          |  271 +++++++++
>>  drivers/accel/qda/qda_ioctl.h          |  118 ++++
>>  drivers/accel/qda/qda_memory_dma.c     |   91 +++
>>  drivers/accel/qda/qda_memory_dma.h     |   46 ++
>>  drivers/accel/qda/qda_memory_manager.c |  382 ++++++++++++
>>  drivers/accel/qda/qda_memory_manager.h |  148 +++++
>>  drivers/accel/qda/qda_prime.c          |  194 +++++++
>>  drivers/accel/qda/qda_prime.h          |   43 ++
>>  drivers/accel/qda/qda_rpmsg.c          |  327 +++++++++++
>>  drivers/accel/qda/qda_rpmsg.h          |   57 ++
>>  drivers/iommu/iommu.c                  |    4 +
>>  include/linux/qda_compute_bus.h        |   22 +
>>  include/uapi/drm/qda_accel.h           |  224 +++++++
>>  31 files changed, 4665 insertions(+)
>> ---
>> base-commit: d4906ae14a5f136ceb671bb14cedbf13fa560da6
>> change-id: 20260223-qda-firstpost-4ab05249e2cc
>>
>> Best regards,
>> -- 
>> Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>>
>>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
