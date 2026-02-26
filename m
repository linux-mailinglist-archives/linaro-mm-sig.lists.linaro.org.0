Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kK7wEe0U4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:57:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DC17041229C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:57:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 035BA406A1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:16 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 5083A3F987
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 10:46:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=C1liJdau;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=DFzBNrQS;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61QAL1Pi288643
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 10:46:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zwCZAKTqPxoAPp//XCVoK8Lk
	kN9XjJo3gF5cOknkSTU=; b=C1liJdauVkvXUPdz9x3HsYm8gc/a5RB/NKVhsVYK
	SykF8PnuqWMn/B6ChdB94munsY3p5MRzDGHWRf1gr/FtBV+TCNu1GRMZaIkWu1SR
	aWlke4e7iWwkqQ+Tb2dI89FBFpR9bGHyr6PKk+t73OIh9DATfiKmi0gd5eCUvrJ5
	05ZLuogLemIBdseCQdKoOfZF/NYjBpcNC/t3HunV03G7Z8jITBNYt/afGHdcrowM
	K1YB5UbJTdwwW6fRI6kLaylwsB1pFToENxXJy0/XnOcOedpUioyM5anP9CQEvPxW
	WsVmxUvoKrTeZssoLuYaJQq4PMdgbfprUmepih4wFY9gVg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjm8u02pc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 10:46:27 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb4a241582so412657285a.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 02:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772102786; x=1772707586; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zwCZAKTqPxoAPp//XCVoK8LkkN9XjJo3gF5cOknkSTU=;
        b=DFzBNrQSkTY4TV2jKO0uLYMD/a8NMhdIPJWW+pZdlAjywfZrn6biVn7O2AMn6yX0q/
         85a0sH8ydyl1TJDobuVGFcFOZQHSG6C2hIVnYURwCLHbygIFASXA6HfwRadUosHTgr3H
         hqCqZ9FVeMH43wos/5ieBfemv+XLKX4jChvCUe4jpQlGo0YxzYe0qFvB0yS9cRrMZV4e
         ZRYbiRrTe33HWygdRf0WfwG5pqp7FKXkSNcUC5piqcLzGPBt7+knKinMRfRw5QRUaq2D
         TmlVNuwRw3MtXsC/25LOEuXnfMudilGZDIkM7U+7m5nu6t65jpAEi5RCKBz2LCEbK5Kw
         C+JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772102786; x=1772707586;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zwCZAKTqPxoAPp//XCVoK8LkkN9XjJo3gF5cOknkSTU=;
        b=EPjH7G/GFNklN4+fns3vwHNmAjWorzl2cN7v5maxk6HQ/7Vhgjw+3ICjmX3v8s+ESA
         jequI4voQtqZNBDV1OnxasObKlWPDWvb2aSRz01f5u9X3fzD+/eP1qBXatC/j82AV5vs
         pHoq1vIIHbQJO3cFVo6mHyGXAg8DNqQXEwuqred/BWb2PBKTdsjiVZPdvySmBBUc+gIM
         pIFgl/Jpp29/uR1JoyCRtdC3wxnFvWbVQmOtV+a4koYpYGp3kjUZExwbglMqjaFccFg2
         yi+ysT0o8mEAHt29YRAdNts5TRiOkw6J1rF1vTWAKkSunbfIPlUsE1eDHnTq93L7LcSU
         IaIg==
X-Forwarded-Encrypted: i=1; AJvYcCUfShJf5V8wA+Ce0hMtl1U9Y1P4KUrmAgiJTJ42AuTvNffKqVZFK40WZx32KaIeYq1HhpuYtuMoatfv0+hX@lists.linaro.org
X-Gm-Message-State: AOJu0Yy8YXAjNRXFxfV6UL71M/f0NeaZicLdtjjPS6HmUVtO03eoh+On
	MNWN+YCFqWFLDiVFIrnybWphCnlBkgTR5axAqaqX0MrqSGPIiJ0/OgWisQiOuCJnvw6G7ia+q1A
	PJPevKKXyjfTcn1++oOLj5yyYyo1pulUR7fam588/6GOxPKS0lCcHwRxIcFhC/FdvldCF4DcwIv
	zf0g==
X-Gm-Gg: ATEYQzyK+VYPdQtNsouqt9pOZ7Lq8VzQ4+JEvaBqf2FnVd++SDONd2i59qpS82Vbi1M
	+xwXpxTYm+tjz2R90iNhnVA1PrySpQpuQP6yNCUwm2K6iK7jH8XlNQ6sszxvwsFy2EgIs6H2y0E
	lHD8a2S8mYOH9Vd72WervcAIvUdnX+GB82NaenvIbmOLOjoDabZNCb/xjFk8kOBnF1g4850cdfc
	opHs43nE9Ye88ufvtO2pwoJQ1C9Hfnoj0qo5wijlt/V64iQEHj9cIDWpEcHdgMrp76Rv0Hbrcgh
	F+qSBbOt9KxKwniVDnH3fXy2ceTgkILYmHklobRDSdG6eDsvvRVgwksUiis7FWUkZGjHbHujk48
	m87sON3n90jGV++Qj9iXUOioU8LFhyQ7axct8jRu3cTgus48MqYxk1BApiehrZoCzTqrCpPQMLc
	chZwNidNvPz8ScGZYo7vnt+7y0TaUSWUiI21I=
X-Received: by 2002:a05:620a:4587:b0:8c7:106c:cbd4 with SMTP id af79cd13be357-8cb8c9cdef9mr2566360285a.12.1772102786450;
        Thu, 26 Feb 2026 02:46:26 -0800 (PST)
X-Received: by 2002:a05:620a:4587:b0:8c7:106c:cbd4 with SMTP id af79cd13be357-8cb8c9cdef9mr2566355985a.12.1772102785838;
        Thu, 26 Feb 2026 02:46:25 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a109df8dc4sm685189e87.59.2026.02.26.02.46.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 02:46:25 -0800 (PST)
Date: Thu, 26 Feb 2026 12:46:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <3y6rn5ujkdbc6cd2ooq7gobjvokwwrey2xoj4d3h2pavi7r5k6@rrc6bbmutz73>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-5-fe46a9c1a046@oss.qualcomm.com>
 <x3s26yr7oy2dokp4plsp67yndr7o4ps6nuj7i4zjze77ifljux@ap537se6npfg>
 <57937a68-7f22-4ca1-8980-0be12cf06c66@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <57937a68-7f22-4ca1-8980-0be12cf06c66@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDA5NyBTYWx0ZWRfX9oId/oRBunjN
 XJZWR9iUo+BQ6P2JHaCoIbxDailUqyPa/gSfDkYEdIF9MwuemfZZkqAsCGMbcCtuGpOMSCmqf4+
 9+dc7eW5xfXadLVJ9ea5TiVrVUzst/4EK8kY1ZBjIPVHqxqguy+uib3eVt2864dK+X9q+18cJdz
 vTQtTy9qU5xc3UFQDTDhXq8tj4pbv3Jb+uAPUgfEIMjZakKeWJjgW91I+KMUW4SVE42CpRx6r8I
 FW2VjcrZTSiKBN7TPjtzgYwzqc+fD5AP9h3QAw8anMiQaWSehkqsxdrnw0qKzdzaILuRgZIKfdh
 erZmsQmPbaa0aDkw94M+Z+Td9pU91gz04rZU+Kj4XWHUOdHSVfAjQIryi6RMgIDVDomzxIy0xhA
 gldE8GhZKlZHaZ2mGEP2cz9uH0w9e8wRPp61/JhmkfNWegUq2RAVijnlEm3Mlocp/8R2EjoceUE
 kVlEQQRGXkmkTRjRskw==
X-Authority-Analysis: v=2.4 cv=O780fR9W c=1 sm=1 tr=0 ts=69a02483 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=kIP-TH2kwnt34PtL7doA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: tHPRAu0UtRrX4cmP2w4ARpatGoFN0EOr
X-Proofpoint-GUID: tHPRAu0UtRrX4cmP2w4ARpatGoFN0EOr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602260097
X-Spamd-Bar: -----
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZULB2VS4TI4W5H77YRP7GARBLTSUYPCZ
X-Message-ID-Hash: ZULB2VS4TI4W5H77YRP7GARBLTSUYPCZ
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:47:23 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 05/18] accel/qda: Create compute CB devices on QDA compute bus
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZULB2VS4TI4W5H77YRP7GARBLTSUYPCZ/>
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
	DATE_IN_PAST(1.00)[1182];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: DC17041229C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Feb 26, 2026 at 02:08:57PM +0530, Ekansh Gupta wrote:
> 
> 
> On 2/24/2026 4:19 AM, Dmitry Baryshkov wrote:
> > On Tue, Feb 24, 2026 at 12:38:59AM +0530, Ekansh Gupta wrote:
> >> Add support for creating compute context-bank (CB) devices under
> >> the QDA compute bus based on child nodes of the FastRPC RPMsg
> >> device tree node. Each DT child with compatible
> >> "qcom,fastrpc-compute-cb" is turned into a QDA-owned struct
> >> device on qda_cb_bus_type.
> >>
> >> A new qda_cb_dev structure and cb_devs list in qda_dev track these
> >> CB devices. qda_populate_child_devices() walks the DT children
> >> during QDA RPMsg probe, creates CB devices, configures their DMA
> >> and IOMMU settings using of_dma_configure(), and associates a SID
> >> from the "reg" property when present.
> >>
> >> On RPMsg remove, qda_unpopulate_child_devices() tears down all CB
> >> devices, removing them from their IOMMU groups if present and
> >> unregistering the devices. This prepares the ground for using CB
> >> devices as IOMMU endpoints for DSP compute workloads in later
> >> patches.
> > Are we loosing the nsessions support?
> Yes, it's not part of this series. I'll try bringing that as well.
> >
> >> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> >> ---
> >>  drivers/accel/qda/Makefile    |   1 +
> >>  drivers/accel/qda/qda_cb.c    | 150 ++++++++++++++++++++++++++++++++++++++++++
> >>  drivers/accel/qda/qda_cb.h    |  26 ++++++++
> >>  drivers/accel/qda/qda_drv.h   |   3 +
> >>  drivers/accel/qda/qda_rpmsg.c |  40 +++++++++++
> >>  5 files changed, 220 insertions(+)
> >>
> >> diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
> >> index 242684ef1af7..4aded20b6bc2 100644
> >> --- a/drivers/accel/qda/Makefile
> >> +++ b/drivers/accel/qda/Makefile
> >> @@ -8,5 +8,6 @@ obj-$(CONFIG_DRM_ACCEL_QDA)	:= qda.o
> >>  qda-y := \
> >>  	qda_drv.o \
> >>  	qda_rpmsg.o \
> >> +	qda_cb.o \
> >>  
> >>  obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda_compute_bus.o
> >> diff --git a/drivers/accel/qda/qda_cb.c b/drivers/accel/qda/qda_cb.c
> >> new file mode 100644
> >> index 000000000000..77a2d8cae076
> >> --- /dev/null
> >> +++ b/drivers/accel/qda/qda_cb.c
> >> @@ -0,0 +1,150 @@
> >> +// SPDX-License-Identifier: GPL-2.0-only
> >> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> >> +#include <linux/dma-mapping.h>
> >> +#include <linux/device.h>
> >> +#include <linux/of.h>
> >> +#include <linux/of_device.h>
> >> +#include <linux/iommu.h>
> >> +#include <linux/slab.h>
> >> +#include "qda_drv.h"
> >> +#include "qda_cb.h"
> >> +
> >> +static void qda_cb_dev_release(struct device *dev)
> >> +{
> >> +	kfree(dev);
> > Do you need to put the reference on the OF node?
> Reference put is happening as part of qda_destroy_cb_device.

This way: you have a (small) window where of_node is already put (and
might be gone), but the pointer is not NULL. The of_node should be put
only when device is no longer accessible from the rest of the system, in
release function.


-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
