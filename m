Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOEGDi0U4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:54:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F1A412178
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:54:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BABEA45097
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:03 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 436DB3F70C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 03:37:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=GkItp+hZ;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=KfTqSY7i;
	spf=pass (lists.linaro.org: domain of trilokkumar.soni@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=trilokkumar.soni@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O3KnH91680304
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 03:37:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e2l9aRmZj0T3UtEEuTkL5ERwtdDS5Px9+WLhMqRSs00=; b=GkItp+hZuCm7WH05
	9p964bScqVkdP7mpzqpRQLQpf6CKx9M6RASUUONCZqsfXbXjSLY/wugfcwq25HhN
	GJr8i5wbmron6tpNfiCF1I5DahUpqDmzP2dmecvuqESQXN11VWXOiwmE7k5swyQ5
	bL3ZGB02wgHrrW9vjmixmHXiiHZUHNX8TINyPjDBmQl9KJX2BDnO/zk1sH0OCYLC
	EU4qe5eOClK3cB/QgD7xTsQ3Wjr8tGHNNLCtBpPYqr8+WgmVgQiO3GujLr71Wxol
	H5QcqwC/FGetiJ5KEdKbJC4Tx5aS4glANr33tMSKfhOe0Yxg9ZlShES6wyYEnKb7
	0bSg8Q==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn7taqmk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 03:37:04 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-124a95b6f61so1154261c88.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:37:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771904224; x=1772509024; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e2l9aRmZj0T3UtEEuTkL5ERwtdDS5Px9+WLhMqRSs00=;
        b=KfTqSY7itwAl1dm4Y9tq9OUmGPVPd22pQ5CM7tdiRxq2JUFtNgsbcVCk3zyxNwNuAo
         kQ1PZ+nqlgvTVqdhs/k0joXkZcpHeQJvQ9UgcCkAtsoWX+K2tnreVvWddEWsj79tGnW+
         oO3qD6IRVHovCDtuLhKKFqrZHEP7p/2RFF3A/sBCT4KxXx/nTDRca3cIPB8LITB9OncC
         G5imLoveeTbYGOoVm1B7ArdBNWASQm0+G6wf5isnOt21SBt6tBFVX9/rX8y084DMCVmg
         4wTYyzHhCEwW4GTg6eNd74kqpbaLrydwWzVpdU/oq0ayBqGabjtY+pF07KesJb2Ji8Wv
         AlHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771904224; x=1772509024;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e2l9aRmZj0T3UtEEuTkL5ERwtdDS5Px9+WLhMqRSs00=;
        b=hY+j/ZlN2S0FvZsVUs6UeMeS28vkn3AQMr8Y6vDjX6BffKRBmSP80NPijOw9CcCEGy
         LRTZvMqS3Zy3Wu6nGu24ljAYfRQHDefthKdXhjtr/76aMcrsw7c4pNPOnC/tVhDiW6VE
         63+TDmdn3ZLwULubjBLKjzohusZled2FM5bgZ1CwSiswr/bSbYXp5p568CS3ED+Usxgl
         oK5Z9U+hVOWrQoAHIX6lR3PRBKHjgE/w3tFAkNU8xdwUad8gZ/9/nEvIFQhgXhVga4Kc
         Uyuk7CV6DwujhbHkOgtJQ8253fdik4suy8t112HoXSqndJng1JUyhmIjHLQY9ILPUhlz
         y9HQ==
X-Forwarded-Encrypted: i=1; AJvYcCWufWUXs0Bj4Y0pwFBmAgp5IxlUnvkrseqUpJcLAesQEJHKqRkD5p+TPN2GzuMVpINAYQq7vtMPYv0N9gx9@lists.linaro.org
X-Gm-Message-State: AOJu0YwKRFa1QuAihPCRMiF98Mv6rLxwSuMsBjX1dD3z/ct8VED+h5Yb
	OrnL1czcD6//Tpt5zVAopidHWxUYAh+FZkl0Kgnb+sBmsWcfN9MRFz1JPVyOun9d8YrgRWtvdgx
	gTUWv8LhwKkzWfunewYyVZieBwHQOghyFObp6upg0yaWce3eQGOchKQJGpFFeAUqKoo0jqw==
X-Gm-Gg: AZuq6aI2iosMd6cQQSkGp2QX1AMYEee9HWnuZbs44sF4VUmOQ+8CKtQYRXVMb0LOunW
	jKkHTMK3jsyEu7MBft0qAZ0xCcaYzboY8e8cnDzQS00rvwy3jNZ8yiltxfJhznGRAxPlhlJcX4Q
	W+88RyqRM2DlFaRPj04paehrE03vJPqpCArQpsJ3X+hSH7vyB5ERUf35eHzPhpEF62JFkZO9qzn
	5ZrLui+NO4ZQxnDryQ8QpSmWtMNS67PHW07Z0uF8lstHj8v0hkseMk9wVRc6Tm1phNDOa91jY3m
	eV8aVsPAQTahQ2UShRFCZ59PTOtysrRdpprRnuaiYjGrBt1j2Haq0an1+mCrnFtiUW66CV/r9GR
	NVmDJGMTVaWyFU2ZRU9yCy23i+wN8KeY8TRIssKfqHihuJYuYwr8aosM=
X-Received: by 2002:a05:7022:50b:b0:123:3461:99be with SMTP id a92af1059eb24-1276ad1a7e6mr5039313c88.21.1771904223575;
        Mon, 23 Feb 2026 19:37:03 -0800 (PST)
X-Received: by 2002:a05:7022:50b:b0:123:3461:99be with SMTP id a92af1059eb24-1276ad1a7e6mr5039276c88.21.1771904222879;
        Mon, 23 Feb 2026 19:37:02 -0800 (PST)
Received: from [192.168.86.165] ([76.176.48.107])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af2edd7sm10169712c88.8.2026.02.23.19.37.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 19:37:02 -0800 (PST)
Message-ID: <333632f8-7cb5-419c-ba46-4dbe4d21ea60@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 19:37:00 -0800
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
From: Trilok Soni <trilokkumar.soni@oss.qualcomm.com>
In-Reply-To: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=c5OmgB9l c=1 sm=1 tr=0 ts=699d1ce0 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=lsoD3MMNObdLvy1227ExmA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=D19gQVrFAAAA:8
 a=hgqkG84HdUBTOHwo2Y0A:9 a=QEXdDO2ut3YA:10 a=vr4QvYf-bLy2KjpDp97w:22
 a=W4TVW4IDbPiebHqcZpNg:22
X-Proofpoint-GUID: mX_OUec3xKdBGF-TGlbq8SleCd84roqV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDAyOCBTYWx0ZWRfX5u8jOsvipI5k
 +pJft/59qxA49IHRHx4N+9v1CPR8RbKezjKorxAW0L2FetKfzXHN+Pk7QvGFvKuxkx3GTJKaoFM
 6agGAAwPaNQ/XybQ0RC8MCOR7OY2W7X1LT1Wmyk8IDLUwSg1wXCSZNV5AILP566PrdMgCOillrJ
 zUPis+QN+gEMDjNoc9s2g17/vXr5wesGsWJe6zZLNtuVmgWksKfUbecexB5CkQc+IRcK0YKgWKv
 TNl869/UsPkEWKBLUk7Xyx3C9KtlccFivC7t6kGxb+5bnLphDCGozEFTv0v8to5FnhiZ2FN52GO
 BkunmpqHSRoAWHKJSnIiG2cOobotH1FaQ9I79ZAkiH9k/2Uxs4LvToIhtFTEzw/CovA7jQFzc1U
 guTpZGzXhMaosewgPaCwRO6bbY73zLaOdjn3QuzgeEXg1IZJR0V+wCZ//X/77f+sWOWpq00j4P9
 3Xa1ARBw2fUayIkze+Q==
X-Proofpoint-ORIG-GUID: mX_OUec3xKdBGF-TGlbq8SleCd84roqV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 clxscore=1011 bulkscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240028
X-Spamd-Bar: ----
X-MailFrom: trilokkumar.soni@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CU2MYI3CBP3ZIZ5I5TAJJRZBJ6NF2D5D
X-Message-ID-Hash: CU2MYI3CBP3ZIZ5I5TAJJRZBJ6NF2D5D
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:58 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/18] accel/qda: Introduce Qualcomm DSP Accelerator driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CU2MYI3CBP3ZIZ5I5TAJJRZBJ6NF2D5D/>
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
	DATE_IN_PAST(1.00)[1237];
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
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[trilokkumar.soni@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.976];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email,lkml.org:url]
X-Rspamd-Queue-Id: B1F1A412178
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2/23/2026 11:08 AM, Ekansh Gupta wrote:
> This patch series introduces the Qualcomm DSP Accelerator (QDA) driver,
> a modern DRM-based accelerator implementation for Qualcomm Hexagon DSPs.
> The driver provides a standardized interface for offloading computational
> tasks to DSPs found on Qualcomm SoCs, supporting all DSP domains (ADSP,
> CDSP, SDSP, GDSP).
> 
> The QDA driver is designed as an alternative for the FastRPC driver

alternative or replacement? are you going to keep both drivers? 

> in drivers/misc/, offering improved resource management, better integration
> with standard kernel subsystems, and alignment with the Linux kernel's
> Compute Accelerators framework.
> 
> User-space staging branch
> ============
> https://github.com/qualcomm/fastrpc/tree/accel/staging
> 
> Key Features
> ============
> 
> * Standard DRM accelerator interface via /dev/accel/accelN
> * GEM-based buffer management with DMA-BUF import/export support
> * IOMMU-based memory isolation using per-process context banks
> * FastRPC protocol implementation for DSP communication
> * RPMsg transport layer for reliable message passing
> * Support for all DSP domains (ADSP, CDSP, SDSP, GDSP)
> * Comprehensive IOCTL interface for DSP operations
> 
> High-Level Architecture Differences with Existing FastRPC Driver
> =================================================================
> 
> The QDA driver represents a significant architectural departure from the
> existing FastRPC driver (drivers/misc/fastrpc.c), addressing several key
> limitations while maintaining protocol compatibility:
> 
> 1. DRM Accelerator Framework Integration
>   - FastRPC: Custom character device (/dev/fastrpc-*)
>   - QDA: Standard DRM accel device (/dev/accel/accelN)
>   - Benefit: Leverages established DRM infrastructure for device
>     management.
> 
> 2. Memory Management
>   - FastRPC: Custom memory allocator with ION/DMA-BUF integration
>   - QDA: Native GEM objects with full PRIME support
>   - Benefit: Seamless buffer sharing using standard DRM mechanisms
> 
> 3. IOMMU Context Bank Management
>   - FastRPC: Direct IOMMU domain manipulation, limited isolation
>   - QDA: Custom compute bus (qda_cb_bus_type) with proper device model
>   - Benefit: Each CB device is a proper struct device with IOMMU group
>     support, enabling better isolation and resource tracking.
>   - https://lore.kernel.org/all/245d602f-3037-4ae3-9af9-d98f37258aae@oss.qualcomm.com/
> 
> 4. Memory Manager Architecture
>   - FastRPC: Monolithic allocator
>   - QDA: Pluggable memory manager with backend abstraction
>   - Benefit: Currently uses DMA-coherent backend, easily extensible for
>     future memory types (e.g., carveout, CMA)
> 
> 5. Transport Layer
>   - FastRPC: Direct RPMsg integration in core driver
>   - QDA: Abstracted transport layer (qda_rpmsg.c)
>   - Benefit: Clean separation of concerns, easier to add alternative
>     transports if needed
> 
> 8. Code Organization
>   - FastRPC: ~3000 lines in single file
>   - QDA: Modular design across multiple files (~4600 lines total)
>     * qda_drv.c: Core driver and DRM integration
>     * qda_gem.c: GEM object management
>     * qda_memory_manager.c: Memory and IOMMU management
>     * qda_fastrpc.c: FastRPC protocol implementation
>     * qda_rpmsg.c: Transport layer
>     * qda_cb.c: Context bank device management
>   - Benefit: Better maintainability, clearer separation of concerns
> 
> 9. UAPI Design
>   - FastRPC: Custom IOCTL interface
>   - QDA: DRM-style IOCTLs with proper versioning support
>   - Benefit: Follows DRM conventions, easier userspace integration
> 
> 10. Documentation
>   - FastRPC: Minimal in-tree documentation
>   - QDA: Comprehensive documentation in Documentation/accel/qda/
>   - Benefit: Better developer experience, clearer API contracts
> 
> 11. Buffer Reference Mechanism
>   - FastRPC: Uses buffer file descriptors (FDs) for all book-keeping
>     in both kernel and DSP
>   - QDA: Uses GEM handles for kernel-side management, providing better
>     integration with DRM subsystem
>   - Benefit: Leverages DRM GEM infrastructure for reference counting,
>     lifetime management, and integration with other DRM components
> 
> Key Technical Improvements
> ===========================
> 
> * Proper device model: CB devices are real struct device instances on a
>   custom bus, enabling proper IOMMU group management and power management
>   integration
> 
> * Reference-counted IOMMU devices: Multiple file descriptors from the same
>   process share a single IOMMU device, reducing overhead
> 
> * GEM-based buffer lifecycle: Automatic cleanup via DRM GEM reference
>   counting, eliminating many resource leak scenarios
> 
> * Modular memory backends: The memory manager supports pluggable backends,
>   currently implementing DMA-coherent allocations with SID-prefixed
>   addresses for DSP firmware
> 
> * Context-based invocation tracking: XArray-based context management with
>   proper synchronization and cleanup
> 
> Patch Series Organization
> ==========================
> 
> Patches 1-2:   Driver skeleton and documentation
> Patches 3-6:   RPMsg transport and IOMMU/CB infrastructure
> Patches 7-9:   DRM device registration and basic IOCTL
> Patches 10-12: GEM buffer management and PRIME support
> Patches 13-17: FastRPC protocol implementation (attach, invoke, create,
>                map/unmap)
> Patch 18:      MAINTAINERS entry
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
>   - Add UAPI compat layer to facilitate migration of client applications
>     from existing FastRPC UAPI to the new QDA accel driver UAPI,
>     ensuring smooth transition for existing userspace code
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
> 
> Interface Compatibility
> ========================
> 
> The QDA driver maintains compatibility with existing FastRPC infrastructure:
> 
> * Device Tree Bindings: The driver uses the same device tree bindings as
>   the existing FastRPC driver, ensuring no changes are required to device
>   tree sources. The "qcom,fastrpc" compatible string and child node
>   structure remain unchanged.
> 
> * Userspace Interface: While the driver provides a new DRM-based UAPI,
>   the underlying FastRPC protocol and DSP firmware interface remain
>   compatible. This ensures that DSP firmware and libraries continue to
>   work without modification.
> 
> * Migration Path: The modular design allows for gradual migration, where
>   both drivers can coexist during the transition period. Applications can
>   be migrated incrementally to the new UAPI with the help of the planned
>   compatibility layer.
> 
> References
> ==========
> 
> Previous discussions on this migration:
> - https://lkml.org/lkml/2024/6/24/479
> - https://lkml.org/lkml/2024/6/21/1252
> 
> Testing
> =======
> 
> The driver has been tested on Qualcomm platforms with:
> - Basic FastRPC attach/release operations
> - DSP process creation and initialization
> - Memory mapping/unmapping operations
> - Dynamic invocation with various buffer types
> - GEM buffer allocation and mmap
> - PRIME buffer import from other subsystems
> 
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
> Ekansh Gupta (18):
>       accel/qda: Add Qualcomm QDA DSP accelerator driver docs
>       accel/qda: Add Qualcomm DSP accelerator driver skeleton
>       accel/qda: Add RPMsg transport for Qualcomm DSP accelerator
>       accel/qda: Add built-in compute CB bus for QDA and integrate with IOMMU
>       accel/qda: Create compute CB devices on QDA compute bus
>       accel/qda: Add memory manager for CB devices
>       accel/qda: Add DRM accel device registration for QDA driver
>       accel/qda: Add per-file DRM context and open/close handling
>       accel/qda: Add QUERY IOCTL and basic QDA UAPI header
>       accel/qda: Add DMA-backed GEM objects and memory manager integration
>       accel/qda: Add GEM_CREATE and GEM_MMAP_OFFSET IOCTLs
>       accel/qda: Add PRIME dma-buf import support
>       accel/qda: Add initial FastRPC attach and release support
>       accel/qda: Add FastRPC dynamic invocation support
>       accel/qda: Add FastRPC DSP process creation support
>       accel/qda: Add FastRPC-based DSP memory mapping support
>       accel/qda: Add FastRPC-based DSP memory unmapping support
>       MAINTAINERS: Add MAINTAINERS entry for QDA driver
> 
>  Documentation/accel/index.rst          |    1 +
>  Documentation/accel/qda/index.rst      |   14 +
>  Documentation/accel/qda/qda.rst        |  129 ++++
>  MAINTAINERS                            |    9 +
>  arch/arm64/configs/defconfig           |    2 +
>  drivers/accel/Kconfig                  |    1 +
>  drivers/accel/Makefile                 |    2 +
>  drivers/accel/qda/Kconfig              |   35 ++
>  drivers/accel/qda/Makefile             |   19 +
>  drivers/accel/qda/qda_cb.c             |  182 ++++++
>  drivers/accel/qda/qda_cb.h             |   26 +
>  drivers/accel/qda/qda_compute_bus.c    |   23 +
>  drivers/accel/qda/qda_drv.c            |  375 ++++++++++++
>  drivers/accel/qda/qda_drv.h            |  171 ++++++
>  drivers/accel/qda/qda_fastrpc.c        | 1002 ++++++++++++++++++++++++++++++++
>  drivers/accel/qda/qda_fastrpc.h        |  433 ++++++++++++++
>  drivers/accel/qda/qda_gem.c            |  211 +++++++
>  drivers/accel/qda/qda_gem.h            |  103 ++++
>  drivers/accel/qda/qda_ioctl.c          |  271 +++++++++
>  drivers/accel/qda/qda_ioctl.h          |  118 ++++
>  drivers/accel/qda/qda_memory_dma.c     |   91 +++
>  drivers/accel/qda/qda_memory_dma.h     |   46 ++
>  drivers/accel/qda/qda_memory_manager.c |  382 ++++++++++++
>  drivers/accel/qda/qda_memory_manager.h |  148 +++++
>  drivers/accel/qda/qda_prime.c          |  194 +++++++
>  drivers/accel/qda/qda_prime.h          |   43 ++
>  drivers/accel/qda/qda_rpmsg.c          |  327 +++++++++++
>  drivers/accel/qda/qda_rpmsg.h          |   57 ++
>  drivers/iommu/iommu.c                  |    4 +
>  include/linux/qda_compute_bus.h        |   22 +
>  include/uapi/drm/qda_accel.h           |  224 +++++++
>  31 files changed, 4665 insertions(+)
> ---
> base-commit: d4906ae14a5f136ceb671bb14cedbf13fa560da6
> change-id: 20260223-qda-firstpost-4ab05249e2cc
> 
> Best regards,

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
