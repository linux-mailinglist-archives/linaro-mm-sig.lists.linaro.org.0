Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MP5uF70T4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:52:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1715D4120EE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:52:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 21D0244901
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:52:12 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 91A493F7DF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 21:17:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=YoFxN9xd;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="BYXCGB/O";
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NH4l9W910846
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 21:17:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1FKuQnvI/JR7GzRu2Av4diW6
	kuTld28E3cs1g9PwsAw=; b=YoFxN9xdqfbroHf6OUjrfeAF5dcbf7gSGyLivvOc
	kkug/Sl/B92VQYI6SW1xgHu+pHZXEwVdpTkCTlQ2jV4IZVg3iFKd6CRtcwcg/TzD
	KGu5qcchqKgXjob0deTMRKfqx51EqgZ7MVFOOGDWxJhYVCXFCRhnasQiB7JYdn2f
	BcAn6lh6U3TIpqUSSj89ZaraZmfqJeP7rR3nnLyt8S3Z8BSG29AeXYU80fRGVz+R
	GDnZgpU2jF1LHs6R2mFCn5srpSXKzfECXKj1HcmdrFZRYC6JZZYKgkH7nr2cya0q
	hhaLZGVnm3jJb9ybOYXaYiCDyCJZWBe98V42AThT0Zw7ug==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtyj8qmj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 21:17:49 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c882774f0dso4254103585a.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 13:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771881468; x=1772486268; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1FKuQnvI/JR7GzRu2Av4diW6kuTld28E3cs1g9PwsAw=;
        b=BYXCGB/OiqrcS2Vnj7tb2BwOJ2zasSZd+8oQldSL4WbzqUDNTMgtiJotN/BemP2Gb1
         FTvmoFpPldbfcF2D+GVp7CprJyt92qXIv2Y+46C8rgnCoFkofyr7YmR+3CQLbg1tnANP
         5Z55eHqTZdgXdhtmbOdw4wGK+g2wGV8kc0eyh3EAE8IG/SDzr7Bz2mWK2NgzP7SUWf/G
         9yZ0ZkIeYa3vdfZMFMTo9XAYiWRrNg5JrnAoIXGV2+iGNF4iy0IIUtzOApy8hGYQbxmy
         xuskF/juYuh8INyscas5tgM7bHNIcuQlzS4JW9mVbgnzudD/KIhpIIaBqXfQ26lXoxf5
         u+Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771881468; x=1772486268;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1FKuQnvI/JR7GzRu2Av4diW6kuTld28E3cs1g9PwsAw=;
        b=aWrcDAkX2FLp1hTRBvIHW/HI5/gyQOv7fP7klHTgRVLvmkOVKEE1Al1po8LIj0xjzV
         WLoHd4HBKPlk/KkAzOhubt1FL0Roe/k6oD3LHCN4iVOpLCUU9IRCOi7es2+6j79UaXRV
         f5xQcpcJ4nXUJTpWzWuyDEaGhXOAT0bMsE8122tuVPxi8DYf9Yi3IvCBLzwisiv+DW5Q
         htSqVruuhq5F4w2t6J1ZM4tkfamuk4EUq2zNVJzPpJEis9VxscZFMESHmrFaXkeiDS/L
         VGxPjXKmpKoWkVgSHTMYayo9K6WZMufuZPocYi1wNxz852cNqOqxgi7MH7WOFiabMQiN
         PEtA==
X-Forwarded-Encrypted: i=1; AJvYcCUJ/SobNb0bevlV2n0UJZ6X+gHIK0SKvgvQFYL62zQ7RjrxdRPat1DsGx10OCW1Yunyt3skhoQ5yTU6iVkY@lists.linaro.org
X-Gm-Message-State: AOJu0YwOCCm0XrL53F2HyqvYIaz712D4mLnThD1pIJ/23siGIj71xz/0
	hkM9LDKtTgVJitMklp66A2cMnJ9dmQ5mxzvLEw+CDBSFL5grqtKOSHZdpU1tQd4MqvUSWhXtzJd
	nsA3eRirEXPzhDOLuMnyFeWQlYncfVcXa4OLwJ/X9P4Jwg9sgAHtGOxV0S4kYrIU6YgSbnw==
X-Gm-Gg: AZuq6aIEp3LX+fHSj9NUmvXY9++guClDP8MUVpORpoLNsXL/GxsuNDRmJ0fXYQdkZbA
	vS4f908X1A4kncd2Szaej5DSGCsElSeOLgT718WJ+g3JwwYY7CH+KTPMyaGUNao4yUZ+WiqBCzA
	RIDMjl2zLXLkU+pwSVzg+DwObzCedoaboeIY+ncPb1X+F6bpsWYttF+ggXipBx7m1NE8ZwO1O2+
	ncF8ndkoPII+gdwTemzZVo9/N5yYSoXw5mzBjH/JfXewzzwNvL0JZDc6gEv+uwERirWwbbneEwk
	5dKqbhxi22pKVanympMahkNIXcmzVB476WOe1Sxq8rijghWm2Vmc+5WsW/BD7GTGaqQFS4YeB5m
	Uq93W275aXNgR/iAo44hfPVHBiiLsQvq/0lg7uoHfE86uolQ3TwEX4geHJgmrEea2VZHhfGnlHm
	aXW1Vn3wKCuxABDS3CFqkPy4cimI6TqIY2GSk=
X-Received: by 2002:a05:620a:294f:b0:8cb:54d6:7ba with SMTP id af79cd13be357-8cb8c9d1e69mr1226696785a.7.1771881468113;
        Mon, 23 Feb 2026 13:17:48 -0800 (PST)
X-Received: by 2002:a05:620a:294f:b0:8cb:54d6:7ba with SMTP id af79cd13be357-8cb8c9d1e69mr1226692085a.7.1771881467537;
        Mon, 23 Feb 2026 13:17:47 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a7aab220sm17369921fa.37.2026.02.23.13.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 13:17:46 -0800 (PST)
Date: Mon, 23 Feb 2026 23:17:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <jyd3ufisoz4xcfe2dvu26odesaz2czj22jn46qswkzz6ocg4zu@6krzvyvirkmo>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-1-fe46a9c1a046@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224-qda-firstpost-v1-1-fe46a9c1a046@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Jq/8bc4C c=1 sm=1 tr=0 ts=699cc3fd cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=KKZUDU7hoNn2ThC74tMA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 3D53iz8FDtm3hMFlCC_Z4pC-fb8ncuSh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE4NSBTYWx0ZWRfXz/BPw0qUhdFJ
 XKkbTNNeplrquqg/kQpaeVOJ3e+KjxNzL/wZps9VyHgTUCEFJP91Y91JZh13cBxoAa7hpe67pW+
 Jgp1CPQ9RL4fCJkQkMYfuqtTOqO2qPVJDJzaHmN9xKtKhJxw5NNeJLzdIRekwgvM9M0CRbBeDCI
 9td2CDMDJg9Oi9xiYzFeLTzd0ZnCv9xC5YezkijZ6y/6mUHkX+BDtKSb6TDUFa/fjzrUMGhen4R
 dT1PwMgR8bN/VDc45dsMJb/t3I8XbR9c3KC5sceRjqLxXNd00xNWAZowRk4mR70DpJucPCy3esO
 5cLHZN7nOd8oykAEo70eTwa2S8UKJpDiFTsKLVgJSLjkXGOSKhDrtf2GM621OWjgfZB8U9Fc3Zl
 crYe9itl7BKexwMC+0JuDmrhp+P1v9BjdOA96jKvKXo5EmrjfBx1pMC71uELEjdCd1x7WCQQiN2
 57XThBl/sBwdV0qSC8w==
X-Proofpoint-GUID: 3D53iz8FDtm3hMFlCC_Z4pC-fb8ncuSh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_05,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 adultscore=0 phishscore=0 suspectscore=0 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230185
X-Spamd-Bar: -----
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4PXF6UAR77PXRHPT5DQHMMINUQLO62P7
X-Message-ID-Hash: 4PXF6UAR77PXRHPT5DQHMMINUQLO62P7
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:49 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] accel/qda: Add Qualcomm QDA DSP accelerator driver docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4PXF6UAR77PXRHPT5DQHMMINUQLO62P7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[1243];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,oss.qualcomm.com,quicinc.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 1715D4120EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Feb 24, 2026 at 12:38:55AM +0530, Ekansh Gupta wrote:
> Add initial documentation for the Qualcomm DSP Accelerator (QDA) driver
> integrated in the DRM accel subsystem.
> 
> The new docs introduce QDA as a DRM/accel-based implementation of
> Hexagon DSP offload that is intended as a modern alternative to the
> legacy FastRPC driver in drivers/misc. The text describes the driver
> motivation, high-level architecture and interaction with IOMMU context
> banks, GEM-based buffer management and the RPMsg transport.
> 
> The user-space facing section documents the main QDA IOCTLs used to
> establish DSP sessions, manage GEM buffer objects and invoke remote
> procedures using the FastRPC protocol, along with a typical lifecycle
> example for applications.
> 
> Finally, the driver is wired into the Compute Accelerators
> documentation index under Documentation/accel, and a brief debugging
> section shows how to enable dynamic debug for the QDA implementation.
> 
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  Documentation/accel/index.rst     |   1 +
>  Documentation/accel/qda/index.rst |  14 +++++
>  Documentation/accel/qda/qda.rst   | 129 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 144 insertions(+)
> 
> diff --git a/Documentation/accel/index.rst b/Documentation/accel/index.rst
> index cbc7d4c3876a..5901ea7f784c 100644
> --- a/Documentation/accel/index.rst
> +++ b/Documentation/accel/index.rst
> @@ -10,4 +10,5 @@ Compute Accelerators
>     introduction
>     amdxdna/index
>     qaic/index
> +   qda/index
>     rocket/index
> diff --git a/Documentation/accel/qda/index.rst b/Documentation/accel/qda/index.rst
> new file mode 100644
> index 000000000000..bce188f21117
> --- /dev/null
> +++ b/Documentation/accel/qda/index.rst
> @@ -0,0 +1,14 @@
> +.. SPDX-License-Identifier: GPL-2.0-only
> +
> +==============================
> + accel/qda Qualcomm DSP Driver
> +==============================
> +
> +The **accel/qda** driver provides support for Qualcomm Hexagon DSPs (Digital
> +Signal Processors) within the DRM accelerator framework. It serves as a modern
> +replacement for the legacy FastRPC driver, offering improved resource management
> +and standard subsystem integration.
> +
> +.. toctree::
> +
> +   qda
> diff --git a/Documentation/accel/qda/qda.rst b/Documentation/accel/qda/qda.rst
> new file mode 100644
> index 000000000000..742159841b95
> --- /dev/null
> +++ b/Documentation/accel/qda/qda.rst
> @@ -0,0 +1,129 @@
> +.. SPDX-License-Identifier: GPL-2.0-only
> +
> +==================================
> +Qualcomm Hexagon DSP (QDA) Driver
> +==================================
> +
> +Introduction
> +============
> +
> +The **QDA** (Qualcomm DSP Accelerator) driver is a new DRM-based
> +accelerator driver for Qualcomm's Hexagon DSPs. It provides a standardized
> +interface for user-space applications to offload computational tasks ranging
> +from audio processing and sensor offload to computer vision and AI
> +inference to the Hexagon DSPs found on Qualcomm SoCs.
> +
> +This driver is designed to align with the Linux kernel's modern **Compute
> +Accelerators** subsystem (`drivers/accel/`), providing a robust and modular
> +alternative to the legacy FastRPC driver in `drivers/misc/`, offering
> +improved resource management and better integration with standard kernel
> +subsystems.
> +
> +Motivation
> +==========
> +
> +The existing FastRPC implementation in the kernel utilizes a custom character
> +device and lacks integration with modern kernel memory management frameworks.
> +The QDA driver addresses these limitations by:
> +
> +1.  **Adopting the DRM accel Framework**: Leveraging standard uAPIs for device
> +    management, job submission, and synchronization.
> +2.  **Utilizing GEM for Memory**: Providing proper buffer object management,
> +    including DMA-BUF import/export capabilities.
> +3.  **Improving Isolation**: Using IOMMU context banks to enforce memory
> +    isolation between different DSP user sessions.
> +
> +Key Features
> +============
> +
> +*   **Standard Accelerator Interface**: Exposes a standard character device
> +    node (e.g., `/dev/accel/accel0`) via the DRM subsystem.
> +*   **Unified Offload Support**: Supports all DSP domains (ADSP, CDSP, SDSP,
> +    GDSP) via a single driver architecture.
> +*   **FastRPC Protocol**: Implements the reliable Remote Procedure Call
> +    (FastRPC) protocol for communication between the application processor
> +    and DSP.
> +*   **DMA-BUF Interop**: Seamless sharing of memory buffers between the DSP
> +    and other multimedia subsystems (GPU, Camera, Video) via standard DMA-BUFs.
> +*   **Modular Design**: Clean separation between the core DRM logic, the memory
> +    manager, and the RPMsg-based transport layer.
> +
> +Architecture
> +============
> +
> +The QDA driver is composed of several modular components:
> +
> +1.  **Core Driver (`qda_drv`)**: Manages device registration, file operations,
> +    and bridges the driver with the DRM accelerator subsystem.
> +2.  **Memory Manager (`qda_memory_manager`)**: A flexible memory management
> +    layer that handles IOMMU context banks. It supports pluggable backends
> +    (such as DMA-coherent) to adapt to different SoC memory architectures.
> +3.  **GEM Subsystem**: Implements the DRM GEM interface for buffer management:
> +
> +    * **`qda_gem`**: Core GEM object management, including allocation, mmap
> +      operations, and buffer lifecycle management.
> +    * **`qda_prime`**: PRIME import functionality for DMA-BUF interoperability,
> +      enabling seamless buffer sharing with other kernel subsystems.
> +
> +4.  **Transport Layer (`qda_rpmsg`)**: Abstraction over the RPMsg framework
> +    to handle low-level message passing with the DSP firmware.
> +5.  **Compute Bus (`qda_compute_bus`)**: A custom virtual bus used to
> +    enumerate and manage the specific compute context banks defined in the
> +    device tree.

I'm really not sure if it's a bonus or not. I'm waiting for iommu-map
improvements to land to send patches reworking FastRPC CB from using
probe into being created by the main driver: it would remove some of the
possible race conditions between main driver finishing probe and the CB
devices probing in the background.

What's the actual benefit of the CB bus?

> +6.  **FastRPC Core (`qda_fastrpc`)**: Implements the protocol logic for
> +    marshalling arguments and handling remote invocations.
> +
> +User-Space API
> +==============
> +
> +The driver exposes a set of DRM-compliant IOCTLs. Note that these are designed
> +to be familiar to existing FastRPC users while adhering to DRM standards.
> +
> +*   `DRM_IOCTL_QDA_QUERY`: Query DSP type (e.g., "cdsp", "adsp")
> +    and capabilities.
> +*   `DRM_IOCTL_QDA_INIT_ATTACH`: Attach a user session to the DSP's protection
> +    domain.
> +*   `DRM_IOCTL_QDA_INIT_CREATE`: Initialize a new process context on the DSP.

You need to explain the difference between these two.

> +*   `DRM_IOCTL_QDA_INVOKE`: Submit a remote method invocation (the primary
> +    execution unit).
> +*   `DRM_IOCTL_QDA_GEM_CREATE`: Allocate a GEM buffer object for DSP usage.
> +*   `DRM_IOCTL_QDA_GEM_MMAP_OFFSET`: Retrieve mmap offsets for memory mapping.
> +*   `DRM_IOCTL_QDA_MAP` / `DRM_IOCTL_QDA_MUNMAP`: Map or unmap buffers into the
> +    DSP's virtual address space.

Do we need to make this separate? Can we map/unmap buffers on their
usage? Or when they are created? I'm thinking about that the
virtualization. An alternative approach would be to merge
GET_MMAP_OFFSET with _MAP: once you map it to the DSP memory, you will
get the offset. 

> +
> +Usage Example
> +=============
> +
> +A typical lifecycle for a user-space application:
> +
> +1.  **Discovery**: Open `/dev/accel/accel*` and check
> +    `DRM_IOCTL_QDA_QUERY` to find the desired DSP (e.g., CDSP for
> +    compute workloads).
> +2.  **Initialization**: Call `DRM_IOCTL_QDA_INIT_ATTACH` and
> +    `DRM_IOCTL_QDA_INIT_CREATE` to establish a session.
> +3.  **Memory**: Allocate buffers via `DRM_IOCTL_QDA_GEM_CREATE` or import
> +    DMA-BUFs (PRIME fd) from other drivers using `DRM_IOCTL_PRIME_FD_TO_HANDLE`.
> +4.  **Execution**: Use `DRM_IOCTL_QDA_INVOKE` to pass arguments and execute
> +    functions on the DSP.
> +5.  **Cleanup**: Close file descriptors to automatically release resources and
> +    detach the session.
> +
> +Internal Implementation
> +=======================
> +
> +Memory Management
> +-----------------
> +The driver's memory manager creates virtual "IOMMU devices" that map to
> +hardware context banks. This allows the driver to manage multiple isolated
> +address spaces. The implementation currently uses a **DMA-coherent backend**
> +to ensure data consistency between the CPU and DSP without manual cache
> +maintenance in most cases.
> +
> +Debugging
> +=========
> +The driver includes extensive dynamic debug support. Enable it via the
> +kernel's dynamic debug control:
> +
> +.. code-block:: bash
> +
> +    echo "file drivers/accel/qda/* +p" > /sys/kernel/debug/dynamic_debug/control

Please add documentation on how to build the test apps and how to load
them to the DSP.

> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
