Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGkREgoU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DF575412155
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 04D4344EC3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:29 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id E1AEF3F827
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:49:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=jgYaXKe1;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=gO62LUoZ;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NIkRnq3698602
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:49:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IxyS7IiUwnZk4M8j2FTACcTO
	tmYuJKogn0322cRLchI=; b=jgYaXKe10ei+VDIUlMgJn/SRuxKYMLLJ1Di2YX+t
	9A6aHUl10WOftpULKAemW2iVpnmTkQ1cfUZ2PcmezxdBD3LZuGLnSHIaRYWyhiPg
	oAZmP2884fWE8AuFgScfFKLzKWYuD41FtJonDi7eYJ7Z4BJZUjLotVeI5Ng9epzt
	PuX5ZsT0W8oBtSqxKwhgnnoGH3hUicFk93ZVMsBSFwHqi+apPEXbPzSBiCP+vlKu
	PME6V/b7h2MvEKFuUCTcuf7bml1Qh3vcynTvhKVssxhVjGTKXY/fbT1MfjqfcBtI
	xSm/NCR3THrDIi83cfrr3/2qPzc+nwJEElJwRWmTAWWQEQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn81a526-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:49:15 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c71304beb4so3386539385a.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 14:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771886955; x=1772491755; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IxyS7IiUwnZk4M8j2FTACcTOtmYuJKogn0322cRLchI=;
        b=gO62LUoZjAAD70J30pwGff31cM9Mh6Y2i5UEHOcs7FsdZzrQax01jbpv/pUzJowUL9
         Q/048la+htIPNqupRoOShj01GWLLq1AqTS2xUY5ym/hWMm9SMk1mQvMO6vNfvPcp75NW
         mZCuL0UdXMx6WxjXCRqvt/vCZi/BXZ+R9d88sRB+Xkr9yNbJ1U9t5qu3j+u1HfEdU6nB
         ctVqgOPbzhebV5s+NSz+xm0p7+PB91iI5Oj/emsNw3lGJRc2ZJBc5ohHhr4Hk1gBBO7N
         l5fODPV+J5/1M8/3F6VHuLyC+TfSiQyO5Xh/MMaAfS4Z5hxTbCseVvY4m2+0c1Hsmy4M
         EVag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771886955; x=1772491755;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IxyS7IiUwnZk4M8j2FTACcTOtmYuJKogn0322cRLchI=;
        b=ReDllvu4guD+ussqtVc29Kqk1+BfdQiAJKXO5yWlCz0SFFpbj+SDQcTtcnaL+9y1kG
         0gepKlj/VIwr4AigNFFldirjw9WRw0hncP1LOoLU971DZZEjvE0xsVUewhR7Ya84+ooi
         cCpfF+N5O0srUofhH8x9HF7422covaCahNv/tAR6D1kwXIFlHdccjI+DpJTGfUYFU76m
         dKB1ruka7iUvEZU9sX+bgHKpJcp6klaA8lFa4GhCwjXF7cAKszLv121S6/rAxiscDGUk
         Pgsz88eeltp+4ygeAgBw5kTXRlKf3IgQWFXlnZz6ySc2Dtfn26vbJ9EXnAK0slKUDEd1
         4FFA==
X-Forwarded-Encrypted: i=1; AJvYcCV/ySvy0qD4T5rYw8pEl6rHveH6xKMF0LhXN0kNrPTM1K0ODzo1fkTJoJLyzWwhTEoiZNWf8zMn88etNz4d@lists.linaro.org
X-Gm-Message-State: AOJu0YxvPWFj4SwTFmXoba665VeZgGcLiyCNSYp96PR+hT8PcwdHJyr2
	7VqhjIWuQC7yyU6wLnXwf+VG24+OFOy6koO6Lb5pEzeafqJd4hO+QjM9O7qYLjTnUWB+HQagibn
	K9PVANrQqGWWQuS9xkh023sFF9ZEDNM9Kpx/XJYvnoQMc3KtMvudJcqK+Z5OnXTEArMlGZg==
X-Gm-Gg: AZuq6aLL0MViBuKXSxnRloHILVzeF1EhPG8XUrihNasIgmpnyaBknMTTlzI3pOonZR2
	DKnl3KkUZgWNFiCJ9eD169PkZcjsMQ4/pIIKdirssu6sx6VfUe/qCbnNna9iq1BslzqlKLQWjf0
	1eiJMX5uk4swHfPzaZwkuva9C0Yhs2J7HBRRT7fRzA3SSjiDL1YclFRUp9F/SrvfNPOonOhJMIx
	dxV5dldUjwICQk07HCFKmt7Tc6K5yXcdA/HN0PvrNy+LrQbt1lVDCnB+owREXHgXE8cGPOisReM
	Fly9cgVNWTLOBNF9905a6VYWbz/3ZC21R0W2dfnAD+MZdMp0M2zC8l43EtkAhg9MhpJCr3Rb7TY
	ZyBG0jBoPgXdfNy/YU7wZQCBv0SjBirW94wAK5Io7vlnCRGfzWCl7fApb5ihR2dCwlzv9Bi9Doa
	QndPkPLcCY0vRVd8E6J+SoYlrMGUZX/uycWZM=
X-Received: by 2002:a05:620a:1921:b0:8c7:f62:21c7 with SMTP id af79cd13be357-8cb8c9ebdc6mr1299797385a.20.1771886954686;
        Mon, 23 Feb 2026 14:49:14 -0800 (PST)
X-Received: by 2002:a05:620a:1921:b0:8c7:f62:21c7 with SMTP id af79cd13be357-8cb8c9ebdc6mr1299793585a.20.1771886954113;
        Mon, 23 Feb 2026 14:49:14 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb45c38sm1807487e87.73.2026.02.23.14.49.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 14:49:13 -0800 (PST)
Date: Tue, 24 Feb 2026 00:49:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <x3s26yr7oy2dokp4plsp67yndr7o4ps6nuj7i4zjze77ifljux@ap537se6npfg>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-5-fe46a9c1a046@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224-qda-firstpost-v1-5-fe46a9c1a046@oss.qualcomm.com>
X-Proofpoint-GUID: SYLYQ1QqJ43lgk8Dr90UTUiYLudCf7qU
X-Proofpoint-ORIG-GUID: SYLYQ1QqJ43lgk8Dr90UTUiYLudCf7qU
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=699cd96b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=Cz5CYKkr5BOHp3dh53AA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE5OSBTYWx0ZWRfX9zIuHTpPuRYa
 ucu5BXXWNKTTW3QlXR5iSi2iuA9bcXY4tkMeup71eXKg+70mhNlswjtUI4LgIwphuCoqb0VLyQg
 o084cczmXg6FRuS/avuGv5ECJmTOW3gSccsCRChq9WOLdeUes3MTUAzxNJxNXh0t5jgV4PSf3ZK
 oSXlbzwcXLutLvWQxKWLsUDDBNqIjYmHOTFB3WgJq+/dzYTt2PpvpTVX0PCQ/YIfCdni2a/Ko5g
 X82sJj8N4Zy4WHry7eRDVnFbCfqw3xhYc3kvoC5/bxjhsjwU/RgwMjnbunIvX0RdcznqPJKrQtO
 wRu0I6S7Mbkr+blpFAV3Mr3CTGe3tktCPJ4iTmgNZOLP0Q6bse6mzKNtghlvCpDVV1kJwUOz61N
 qRL3w6nXIa8SSxjgRUz2hIj45HJFmYln3e2sOGviVsGSe3DIMbxmgB0tpmM/g5/kW3iGudL1Ics
 rHRT19JTsZq067nC5bQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_05,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230199
X-Spamd-Bar: -----
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3J5Y5OK3MTYC7WQFZEBYIRSUVXU7IQUG
X-Message-ID-Hash: 3J5Y5OK3MTYC7WQFZEBYIRSUVXU7IQUG
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:55 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 05/18] accel/qda: Create compute CB devices on QDA compute bus
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3J5Y5OK3MTYC7WQFZEBYIRSUVXU7IQUG/>
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
	DATE_IN_PAST(1.00)[1242];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: DF575412155
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Feb 24, 2026 at 12:38:59AM +0530, Ekansh Gupta wrote:
> Add support for creating compute context-bank (CB) devices under
> the QDA compute bus based on child nodes of the FastRPC RPMsg
> device tree node. Each DT child with compatible
> "qcom,fastrpc-compute-cb" is turned into a QDA-owned struct
> device on qda_cb_bus_type.
> 
> A new qda_cb_dev structure and cb_devs list in qda_dev track these
> CB devices. qda_populate_child_devices() walks the DT children
> during QDA RPMsg probe, creates CB devices, configures their DMA
> and IOMMU settings using of_dma_configure(), and associates a SID
> from the "reg" property when present.
> 
> On RPMsg remove, qda_unpopulate_child_devices() tears down all CB
> devices, removing them from their IOMMU groups if present and
> unregistering the devices. This prepares the ground for using CB
> devices as IOMMU endpoints for DSP compute workloads in later
> patches.

Are we loosing the nsessions support?

> 
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  drivers/accel/qda/Makefile    |   1 +
>  drivers/accel/qda/qda_cb.c    | 150 ++++++++++++++++++++++++++++++++++++++++++
>  drivers/accel/qda/qda_cb.h    |  26 ++++++++
>  drivers/accel/qda/qda_drv.h   |   3 +
>  drivers/accel/qda/qda_rpmsg.c |  40 +++++++++++
>  5 files changed, 220 insertions(+)
> 
> diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
> index 242684ef1af7..4aded20b6bc2 100644
> --- a/drivers/accel/qda/Makefile
> +++ b/drivers/accel/qda/Makefile
> @@ -8,5 +8,6 @@ obj-$(CONFIG_DRM_ACCEL_QDA)	:= qda.o
>  qda-y := \
>  	qda_drv.o \
>  	qda_rpmsg.o \
> +	qda_cb.o \
>  
>  obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda_compute_bus.o
> diff --git a/drivers/accel/qda/qda_cb.c b/drivers/accel/qda/qda_cb.c
> new file mode 100644
> index 000000000000..77a2d8cae076
> --- /dev/null
> +++ b/drivers/accel/qda/qda_cb.c
> @@ -0,0 +1,150 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> +#include <linux/dma-mapping.h>
> +#include <linux/device.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/iommu.h>
> +#include <linux/slab.h>
> +#include "qda_drv.h"
> +#include "qda_cb.h"
> +
> +static void qda_cb_dev_release(struct device *dev)
> +{
> +	kfree(dev);

Do you need to put the reference on the OF node?

> +}
> +
> +static int qda_configure_cb_iommu(struct device *cb_dev, struct device_node *cb_node)
> +{
> +	int ret;
> +
> +	qda_dbg(NULL, "Configuring DMA/IOMMU for CB device %s\n", dev_name(cb_dev));
> +
> +	/* Use of_dma_configure which handles both DMA and IOMMU configuration */
> +	ret = of_dma_configure(cb_dev, cb_node, true);
> +	if (ret) {
> +		qda_err(NULL, "of_dma_configure failed for %s: %d\n", dev_name(cb_dev), ret);
> +		return ret;
> +	}
> +
> +	qda_dbg(NULL, "DMA/IOMMU configured successfully for CB device %s\n", dev_name(cb_dev));
> +	return 0;
> +}
> +
> +static int qda_cb_setup_device(struct qda_dev *qdev, struct device *cb_dev)
> +{
> +	int rc;
> +	u32 sid, pa_bits = 32;
> +
> +	qda_dbg(qdev, "Setting up CB device %s\n", dev_name(cb_dev));
> +
> +	if (of_property_read_u32(cb_dev->of_node, "reg", &sid)) {
> +		qda_dbg(qdev, "No 'reg' property found, defaulting SID to 0\n");
> +		sid = 0;

Don't do the job of the schema validator. Are there nodes without reg?
No.

> +	}
> +
> +	rc = dma_set_mask(cb_dev, DMA_BIT_MASK(pa_bits));
> +	if (rc) {
> +		qda_err(qdev, "%d bit DMA enable failed: %d\n", pa_bits, rc);
> +		return rc;
> +	}
> +
> +	qda_dbg(qdev, "CB device setup complete - SID: %u, PA bits: %u\n", sid, pa_bits);
> +
> +	return 0;
> +}
> +
> +int qda_create_cb_device(struct qda_dev *qdev, struct device_node *cb_node)
> +{
> +	struct device *cb_dev;
> +	int ret;
> +	u32 sid = 0;
> +	struct qda_cb_dev *entry;
> +
> +	qda_dbg(qdev, "Creating CB device for node: %s\n", cb_node->name);
> +
> +	of_property_read_u32(cb_node, "reg", &sid);
> +
> +	cb_dev = kzalloc_obj(*cb_dev, GFP_KERNEL);
> +	if (!cb_dev)
> +		return -ENOMEM;
> +
> +	device_initialize(cb_dev);
> +	cb_dev->parent = qdev->dev;
> +	cb_dev->bus = &qda_cb_bus_type; /* Use our custom bus type for IOMMU handling */
> +	cb_dev->release = qda_cb_dev_release;
> +	dev_set_name(cb_dev, "qda-cb-%s-%u", qdev->dsp_name, sid);
> +
> +	qda_dbg(qdev, "Initialized CB device: %s\n", dev_name(cb_dev));
> +
> +	cb_dev->of_node = of_node_get(cb_node);
> +
> +	cb_dev->dma_mask = &cb_dev->coherent_dma_mask;
> +	cb_dev->coherent_dma_mask = DMA_BIT_MASK(32);
> +
> +	dev_set_drvdata(cb_dev->parent, qdev);
> +
> +	ret = device_add(cb_dev);
> +	if (ret) {
> +		qda_err(qdev, "Failed to add CB device for SID %u: %d\n", sid, ret);
> +		goto cleanup_device_init;
> +	}
> +
> +	qda_dbg(qdev, "CB device added to system\n");
> +
> +	ret = qda_configure_cb_iommu(cb_dev, cb_node);
> +	if (ret) {
> +		qda_err(qdev, "IOMMU configuration failed: %d\n", ret);
> +		goto cleanup_device_add;
> +	}
> +
> +	ret = qda_cb_setup_device(qdev, cb_dev);
> +	if (ret) {
> +		qda_err(qdev, "CB device setup failed: %d\n", ret);
> +		goto cleanup_device_add;
> +	}
> +
> +	entry = kzalloc(sizeof(*entry), GFP_KERNEL);
> +	if (!entry) {
> +		ret = -ENOMEM;
> +		goto cleanup_device_add;
> +	}
> +
> +	entry->dev = cb_dev;
> +	list_add_tail(&entry->node, &qdev->cb_devs);
> +
> +	qda_dbg(qdev, "Successfully created CB device for SID %u\n", sid);
> +	return 0;
> +
> +cleanup_device_add:
> +	device_del(cb_dev);
> +cleanup_device_init:
> +	of_node_put(cb_dev->of_node);
> +	put_device(cb_dev);
> +	return ret;
> +}
> +
> +void qda_destroy_cb_device(struct device *cb_dev)
> +{
> +	struct iommu_group *group;
> +
> +	if (!cb_dev) {
> +		qda_dbg(NULL, "NULL CB device passed to destroy\n");
> +		return;
> +	}
> +
> +	qda_dbg(NULL, "Destroying CB device %s\n", dev_name(cb_dev));
> +
> +	group = iommu_group_get(cb_dev);
> +	if (group) {
> +		qda_dbg(NULL, "Removing %s from IOMMU group\n", dev_name(cb_dev));
> +		iommu_group_remove_device(cb_dev);
> +		iommu_group_put(group);
> +	}
> +
> +	of_node_put(cb_dev->of_node);
> +	cb_dev->of_node = NULL;
> +	device_unregister(cb_dev);
> +
> +	qda_dbg(NULL, "CB device %s destroyed\n", dev_name(cb_dev));
> +}
> diff --git a/drivers/accel/qda/qda_cb.h b/drivers/accel/qda/qda_cb.h
> new file mode 100644
> index 000000000000..a4ae9fef142e
> --- /dev/null
> +++ b/drivers/accel/qda/qda_cb.h
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef __QDA_CB_H__
> +#define __QDA_CB_H__
> +
> +#include <linux/device.h>
> +#include <linux/of.h>
> +#include <linux/list.h>
> +#include <linux/qda_compute_bus.h>
> +#include "qda_drv.h"
> +
> +struct qda_cb_dev {
> +	struct list_head node;
> +	struct device *dev;
> +};
> +
> +/*
> + * Compute bus (CB) device management
> + */
> +int qda_create_cb_device(struct qda_dev *qdev, struct device_node *cb_node);
> +void qda_destroy_cb_device(struct device *cb_dev);
> +
> +#endif /* __QDA_CB_H__ */
> diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
> index bec2d31ca1bb..eb732b7d8091 100644
> --- a/drivers/accel/qda/qda_drv.h
> +++ b/drivers/accel/qda/qda_drv.h
> @@ -7,6 +7,7 @@
>  #define __QDA_DRV_H__
>  
>  #include <linux/device.h>
> +#include <linux/list.h>
>  #include <linux/mutex.h>
>  #include <linux/rpmsg.h>
>  #include <linux/xarray.h>
> @@ -26,6 +27,8 @@ struct qda_dev {
>  	atomic_t removing;
>  	/* Name of the DSP (e.g., "cdsp", "adsp") */
>  	char dsp_name[16];
> +	/* Compute context-bank (CB) child devices */
> +	struct list_head cb_devs;
>  };
>  
>  /**
> diff --git a/drivers/accel/qda/qda_rpmsg.c b/drivers/accel/qda/qda_rpmsg.c
> index a8b24a99ca13..5a57384de6a2 100644
> --- a/drivers/accel/qda/qda_rpmsg.c
> +++ b/drivers/accel/qda/qda_rpmsg.c
> @@ -7,6 +7,7 @@
>  #include <linux/of_device.h>
>  #include "qda_drv.h"
>  #include "qda_rpmsg.h"
> +#include "qda_cb.h"
>  
>  static int qda_rpmsg_init(struct qda_dev *qdev)
>  {
> @@ -25,11 +26,42 @@ static struct qda_dev *alloc_and_init_qdev(struct rpmsg_device *rpdev)
>  
>  	qdev->dev = &rpdev->dev;
>  	qdev->rpdev = rpdev;
> +	INIT_LIST_HEAD(&qdev->cb_devs);
>  
>  	qda_dbg(qdev, "Allocated and initialized qda_dev\n");
>  	return qdev;
>  }
>  
> +static void qda_unpopulate_child_devices(struct qda_dev *qdev)
> +{
> +	struct qda_cb_dev *entry, *tmp;
> +
> +	list_for_each_entry_safe(entry, tmp, &qdev->cb_devs, node) {
> +		list_del(&entry->node);
> +		qda_destroy_cb_device(entry->dev);
> +		kfree(entry);

Why can't you embed struct device into a structure together with the
list_node (and possibly some other data?)?

> +	}
> +}
> +
> +static int qda_populate_child_devices(struct qda_dev *qdev, struct device_node *parent_node)
> +{
> +	struct device_node *child;
> +	int count = 0, success = 0;
> +
> +	for_each_child_of_node(parent_node, child) {
> +		if (of_device_is_compatible(child, "qcom,fastrpc-compute-cb")) {
> +			count++;
> +			if (qda_create_cb_device(qdev, child) == 0) {
> +				success++;
> +				qda_dbg(qdev, "Created CB device for node: %s\n", child->name);
> +			} else {
> +				qda_err(qdev, "Failed to create CB device for: %s\n", child->name);

Don't loose the error code. Instead please return it to the caller.

> +			}
> +		}
> +	}
> +	return success > 0 ? 0 : (count > 0 ? -ENODEV : 0);
> +}
> +
>  static int qda_rpmsg_cb(struct rpmsg_device *rpdev, void *data, int len, void *priv, u32 src)
>  {
>  	/* Dummy function for rpmsg driver */
> @@ -48,6 +80,7 @@ static void qda_rpmsg_remove(struct rpmsg_device *rpdev)
>  	qdev->rpdev = NULL;
>  	mutex_unlock(&qdev->lock);
>  
> +	qda_unpopulate_child_devices(qdev);
>  	qda_deinit_device(qdev);
>  
>  	qda_info(qdev, "RPMsg device removed\n");
> @@ -83,6 +116,13 @@ static int qda_rpmsg_probe(struct rpmsg_device *rpdev)
>  	if (ret)
>  		return ret;
>  
> +	ret = qda_populate_child_devices(qdev, rpdev->dev.of_node);
> +	if (ret) {
> +		qda_err(qdev, "Failed to populate child devices: %d\n", ret);
> +		qda_deinit_device(qdev);
> +		return ret;
> +	}
> +
>  	qda_info(qdev, "QDA RPMsg probe completed successfully for %s\n", qdev->dsp_name);
>  	return 0;
>  }
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
