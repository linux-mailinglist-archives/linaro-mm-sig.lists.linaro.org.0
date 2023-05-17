Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C9B70F2CA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:31:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9404F41407
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:31:16 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 64FBC3EA46
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 15:12:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b=BaPb7vls;
	spf=pass (lists.linaro.org: domain of quic_jhugo@quicinc.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=quic_jhugo@quicinc.com;
	dmarc=pass (policy=none) header.from=quicinc.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34HEnFSu004022;
	Wed, 17 May 2023 15:12:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=Eh6DM2BXuzdEiz/5380GZOi/7cYP/Y43A1Uy0AUkQRU=;
 b=BaPb7vlsCcXw2eRy2akSBCY6au8GLkYB0VwPboCBvwNineXYnXL9vQZ4aurnEjJ6X3Wf
 Ag60Teum3xMOjRxMGnSwRrKNu1ifwUfbd3/qzVtreIhdUZU3nUrSleZPbqXNQa66nBVh
 eJmL+N7vTpJBybTVCwdK/kftHtD6O34qrmp6Rc6g5DtuHV61fpMFQjOvYY4s11mb7PhJ
 D/Se+zPk7OXfGz5LdNhENqjuk91yMGjR7+hdGs4YwZeP7GzushmQUmTOuC73jkQzkHWi
 dl/XHmw2XIr9jOrli1GH/5+vOy1ZhIADhszjFKNJ+TzlvQPZRnTMJ/8ZwIVsWHmL+3D1 Ig==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qmwnr8m00-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 17 May 2023 15:12:12 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34HFCBsO010993
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 17 May 2023 15:12:12 GMT
Received: from [10.226.59.182] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Wed, 17 May
 2023 08:12:10 -0700
Message-ID: <d0807fe4-dba2-8244-f655-d04e80973572@quicinc.com>
Date: Wed, 17 May 2023 09:12:09 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-US
To: Alexandre Bailon <abailon@baylibre.com>, <airlied@gmail.com>,
        <daniel@ffwll.ch>, <maarten.lankhorst@linux.intel.com>,
        <mripard@kernel.org>, <tzimmermann@suse.de>
References: <20230517145237.295461-1-abailon@baylibre.com>
From: Jeffrey Hugo <quic_jhugo@quicinc.com>
In-Reply-To: <20230517145237.295461-1-abailon@baylibre.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: xdufAva3TRcFfqBsoaM5Jab-1ErNBgGj
X-Proofpoint-ORIG-GUID: xdufAva3TRcFfqBsoaM5Jab-1ErNBgGj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-17_02,2023-05-17_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=999
 clxscore=1011 malwarescore=0 priorityscore=1501 spamscore=0 phishscore=0
 adultscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2304280000
 definitions=main-2305170122
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.168.131];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[24];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:26211, ipnet:205.220.168.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[quicinc.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,baylibre.com,lists.freedesktop.org,amd.com,lists.linaro.org,lists.infradead.org,linaro.org,gmail.com,collabora.com];
	HAS_XOIP(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[baylibre.com:url];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 64FBC3EA46
X-Spamd-Bar: --
X-MailFrom: quic_jhugo@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DFVJVZN6YPZJGFHAL6NUV36NT2UKEKDL
X-Message-ID-Hash: DFVJVZN6YPZJGFHAL6NUV36NT2UKEKDL
X-Mailman-Approved-At: Wed, 24 May 2023 09:31:14 +0000
CC: devicetree@vger.kernel.org, conor+dt@kernel.org, bero@baylibre.com, khilman@baylibre.com, jstephan@baylibre.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, robh+dt@kernel.org, linux-mediatek@lists.infradead.org, nbelin@baylibre.com, krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com, linux-media@vger.kernel.org, sumit.semwal@linaro.org, linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/7] Add a DRM driver to support AI Processing Unit (APU)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DFVJVZN6YPZJGFHAL6NUV36NT2UKEKDL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 5/17/2023 8:52 AM, Alexandre Bailon wrote:
> This adds a DRM driver that implements communication between the CPU and an
> APU. The driver target embedded device that usually run inference using some
> prebuilt models. The goal is to provide common infrastructure that could be
> re-used to support many accelerators. Both kernel, userspace and firmware tries
> to use standard and existing to leverage the development and maintenance effort.
> The series implements two platform drivers, one for simulation and another one for
> the mt8183 (compatible with mt8365).

This looks like the 3 existing Accel drivers.  Why is this in DRM?

> For the people interested by the firmware or userspace library,
> the sources are available here:
> https://gitlab.baylibre.com/baylibre/libapu/libapu

I don't see a compiler.  What am I missing?

> The support of APU has to be upstreamed to libdrm.
> Until this is done, you could find the source here:
> https://gitlab.baylibre.com/baylibre/libapu/libdrm/-/tree/abailon/main
> 
> The driver for mt8183 depends on this series (which is currently blocked):
> https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=620429
> 
> Alexandre Bailon (5):
>    drm: Add support of AI Processor Unit (APU)
>    drm/apu: Add memory allocator
>    drm/apu: Add support of requests
>    drm/apu: Add support of IOMMU
>    dt-bindings: Add bidings for mtk,apu-drm
> 
> Julien Stephan (2):
>    drm/apu: allow platform driver to implement their own mmap function
>    drm/apu: Add support for a simulated APU
> 
>   .../devicetree/bindings/gpu/mtk,apu-drm.yaml  |  38 ++
>   drivers/gpu/drm/Kconfig                       |   2 +
>   drivers/gpu/drm/Makefile                      |   1 +
>   drivers/gpu/drm/apu/Kconfig                   |  22 +
>   drivers/gpu/drm/apu/Makefile                  |  10 +
>   drivers/gpu/drm/apu/apu_drv.c                 | 282 +++++++++
>   drivers/gpu/drm/apu/apu_gem.c                 | 230 +++++++
>   drivers/gpu/drm/apu/apu_internal.h            | 205 ++++++
>   drivers/gpu/drm/apu/apu_sched.c               | 592 ++++++++++++++++++
>   drivers/gpu/drm/apu/simu_apu.c                | 313 +++++++++
>   include/uapi/drm/apu_drm.h                    |  81 +++

"apu" seems too generic.  We already have 3 "AI processing units" over 
in drivers/accel already...

>   11 files changed, 1776 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
>   create mode 100644 drivers/gpu/drm/apu/Kconfig
>   create mode 100644 drivers/gpu/drm/apu/Makefile
>   create mode 100644 drivers/gpu/drm/apu/apu_drv.c
>   create mode 100644 drivers/gpu/drm/apu/apu_gem.c
>   create mode 100644 drivers/gpu/drm/apu/apu_internal.h
>   create mode 100644 drivers/gpu/drm/apu/apu_sched.c
>   create mode 100644 drivers/gpu/drm/apu/simu_apu.c
>   create mode 100644 include/uapi/drm/apu_drm.h
> 

I feel like device/driver based documentation in Documentation/ would 
really help in reviews.

-Jeff

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
