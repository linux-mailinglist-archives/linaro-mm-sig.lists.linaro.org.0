Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +H98JNsT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:52:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6AF412122
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:52:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 605B744D6E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:52:42 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 9AF9940144
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:25:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=NlNaGhn1;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=ZpCTSyAe;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NDsXtj185758
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:25:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4t4vMCyeh5FO8jHV4Nz0hUoW
	U7ZCESWTx0v5D054J3c=; b=NlNaGhn1KhBjgV9mj/VYdOuU5ehV1qao8RrvyFtR
	zExj38kIV0zWDm18pJGvUwLfN6wyNUWJ0IFpc1fxavo7aNESt99sIkVzsBUgJnCe
	DtmbrMykIPEaWOw3+hHEb5Zx0PRP76gidoainjQqZT8VENFUGVubnn+4YXe3Atva
	HAdUbM4MvYcDVGIhfHjgt5+W423EZIwsNzjzMyHVqyj39/ifQyrMju7P2HHNDdJQ
	G2i0gn4V72P8glMZ+V4M0OOeHcXKV8pa/ud9ZJOXhycGqtZxcfx/BLylq7WdFuOP
	p9x4sCFuEFRfdlmXYyI/WJaHS2iU7AjJ8a8MhG6T7TMt0Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgr69hgj3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:25:01 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c71500f274so546278185a.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 14:25:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771885500; x=1772490300; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4t4vMCyeh5FO8jHV4Nz0hUoWU7ZCESWTx0v5D054J3c=;
        b=ZpCTSyAe38TCwa0RAizkgUTHhM6cEe7GvtKoJJjzbQQOlznZvSOilvJewmQgdKgv89
         jZ4ETUdjbpmzLzpFv47fnkvICqvlBoY1eT7TDtRdR312Hpfhev9jRhqQ9hqQ0berS8o4
         aFfdZti8HCCtIbZznqtGnV1o+6b94LAR2LXCCQ9XD4NS/MoDQQysK9HqJyynlkNQv05G
         z1ZxUycM+xhyX0D0w6hv3MMjbsAafvul1Ysd+IIzheq6g3uMaSPPQcEzhvZpy0MqhUew
         f9jHOv8qpf1IzY3eLYG38c9N3o9OTuKRj1HbleXhuuOFVc2id+eUFDvBJQjIzhwsrN5/
         TUSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771885500; x=1772490300;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4t4vMCyeh5FO8jHV4Nz0hUoWU7ZCESWTx0v5D054J3c=;
        b=brbUeNuO1etzqzgpYD13WOpWaQ/5Mt7NdXSN6JZS1HFt45b8YH+m/nZJa32EY36tfo
         TrXcfOjASieu59WIhHVeEozbRAn5FGeGbCHfbS+SBrHqIc8uzqwAM5BrGwmdc1Cm1BHY
         Ofbe9Q/7yVYmjsRg5D+5WX33K7mWWYF6Ft7Ku8z8JTZOVp1xfUzvV+2Fy9crf/yQ3zYJ
         3ByUgrl13eK6p9s74U9b+YoKwI7MU9xXckDOYHfGorNLCEgwiazfxM+E1ikJD+ctv8xd
         XVJQn7sJoXoe1e31b8cCRTnc58EYzfYIhC3Sbg8pbfpKz2z7kLoQ0dRakO2b/Dnn7oJu
         gruw==
X-Forwarded-Encrypted: i=1; AJvYcCVDiNUMBRQVLA2r18/3GQOAB82dBr06DBRL6InFVKPeWaih2sSXDJ2CIwINM2AZwzs1Q4OK35cKLd5cbgTK@lists.linaro.org
X-Gm-Message-State: AOJu0YztcXq5wW0AXVWRJbhEeJwvrviqkCD+wVCj0o/d1d4NpZWJLMSW
	FM4ybWJhLqc9qmALxR0CIqStxJ0qVGdVqSEwb95V9oRoR0m2+rerxTxGgQSCgJlqVB+1mMg6O4I
	5Ekyivjcs30s8K75vub2Mu2h/xmAVOwxCVDps4uT3JQdGMInNTqvf+vappF74s8xaULR4FQ==
X-Gm-Gg: AZuq6aJ6Y8MPOc9uveQTM9jZLx2FtMq9iLf2c4SqqcAiPQW/XC9an6MbpbVwnizXIp/
	SZg1i0wY90b9KoQ9YE4hgXEMJib3pWzMDuUUJjPXht8UCX+ske7a/f6ledm8O4zlKx9JvfTBMwg
	KYMz0FP7/HN+B2XuwWSnQvnjmCrgZkOUTKMylraVoY15W0/GTzk2alYn4WE2Ys1sxK87q5b1TsQ
	rn4UazOPTiL1+6ufLAYkzlse16S9kh8wVxteR7OK0SPHkPvqeKh32lmfmQo7flPf6a7cgH3qek0
	ldBvb+ff/2Ms16ytqwzha6/WoB1O6xV6VZRr+OgblHPdYbeapQ728jO2ZS0NRkPHYV4W8mcyZ6I
	T+0GL94z/xfA/ILaeSJ4RKz+Y0sRSjajDn3NcS03qteRo6WH6FDUKh2exmZNObIMlgn8YKEMMnX
	u+RZQWTYirj+zLpTMfS4tra0pdZRGEU7F8ciM=
X-Received: by 2002:a05:620a:bc2:b0:8cb:3fb3:7bee with SMTP id af79cd13be357-8cb8ca65f6emr1222851685a.51.1771885499897;
        Mon, 23 Feb 2026 14:24:59 -0800 (PST)
X-Received: by 2002:a05:620a:bc2:b0:8cb:3fb3:7bee with SMTP id af79cd13be357-8cb8ca65f6emr1222846085a.51.1771885499171;
        Mon, 23 Feb 2026 14:24:59 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb1541asm1818660e87.33.2026.02.23.14.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 14:24:58 -0800 (PST)
Date: Tue, 24 Feb 2026 00:24:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <fzfuaeninr7lfbn74reoare7y2zoflddcvvnvyifnriw26swjc@igixj73zawrv>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-9-fe46a9c1a046@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224-qda-firstpost-v1-9-fe46a9c1a046@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=O6A0fR9W c=1 sm=1 tr=0 ts=699cd3bd cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=AzVrm9-Iib0IivHGxGkA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: c4xgbHJOlusaMe1SdR5jyQs7eYzRgthR
X-Proofpoint-GUID: c4xgbHJOlusaMe1SdR5jyQs7eYzRgthR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE5NSBTYWx0ZWRfX46QDIsApfWIk
 pyCn2CnypLhzHMDXXis6CDlbQBqF8aCkENXH8EBe6Ci2dHY8L5nddMKUgiFa2KIe7MgQQHCkl3T
 Wo57vVVUR7LZCi4phGp07ovop6npjjZlxgqZCpFsOjrYeBG4ED526Kh5xsuH/kiP5o0n91qArA4
 /06FHrUihOTVf1pBfFz4lSYIwu0er8gcBU4MemxrOIhfc4XqrdKIkDlAoy99JeU1iyUhAj4Y+Wh
 vBNY99g7DInX5UVTliGhc9Xq9RdvOuLHKyawpRvI7D90yAal7d7EijNGe0hyX/P4CkZjqjVrxpN
 7hmjptVDGonxeOfB8RcnqpqHM0Mv/fQ7OCcMWVA2BMq23ZE+1ZjKvrXJMTb0dwjScV/EciEM2nJ
 64DHpoBFTjIh4HiWq4DS6QdP1C6DGIdWJP9ZfoxKzCNgEZygQIO3kAPxppr+rWS0tKOF2hQfCoD
 zY8+90nlx6y42EcmD2w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_05,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230195
X-Spamd-Bar: ---
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4MOQGJNAWGU4G2DWNBHR7C6FCQ75RY4P
X-Message-ID-Hash: 4MOQGJNAWGU4G2DWNBHR7C6FCQ75RY4P
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:52 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 09/18] accel/qda: Add QUERY IOCTL and basic QDA UAPI header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4MOQGJNAWGU4G2DWNBHR7C6FCQ75RY4P/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 4D6AF412122
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Feb 24, 2026 at 12:39:03AM +0530, Ekansh Gupta wrote:
> Introduce a basic UAPI for the QDA accelerator driver along with a
> DRM IOCTL handler to query DSP device identity. A new UAPI header
> include/uapi/drm/qda_accel.h defines DRM_QDA_QUERY, the corresponding
> DRM_IOCTL_QDA_QUERY command, and struct drm_qda_query, which contains
> a DSP name string.
> 
> On the kernel side, qda_ioctl_query() validates the per-file context,
> resolves the qda_dev instance from dev->dev_private, and copies the
> DSP name from qdev->dsp_name into the query structure. The new
> qda_ioctls[] table wires this IOCTL into the QDA DRM driver so
> userspace can call it through the standard DRM command interface.
> 
> This IOCTL provides a simple and stable way for userspace to discover
> which DSP a given QDA device node represents and serves as the first
> building block for a richer QDA UAPI in subsequent patches.
> 
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  drivers/accel/qda/Makefile    |  1 +
>  drivers/accel/qda/qda_drv.c   |  9 +++++++++
>  drivers/accel/qda/qda_ioctl.c | 45 +++++++++++++++++++++++++++++++++++++++++
>  drivers/accel/qda/qda_ioctl.h | 26 ++++++++++++++++++++++++
>  include/uapi/drm/qda_accel.h  | 47 +++++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 128 insertions(+)
> 
> diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
> index 7e96ddc40a24..f547398e1a72 100644
> --- a/drivers/accel/qda/Makefile
> +++ b/drivers/accel/qda/Makefile
> @@ -10,5 +10,6 @@ qda-y := \
>  	qda_rpmsg.o \
>  	qda_cb.o \
>  	qda_memory_manager.o \
> +	qda_ioctl.o \

Keep the list sorted, please.

>  
>  obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda_compute_bus.o
> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
> index bf95fc782cf8..86758a9cd982 100644
> --- a/drivers/accel/qda/qda_drv.c
> +++ b/drivers/accel/qda/qda_drv.c
> @@ -9,7 +9,10 @@
>  #include <drm/drm_file.h>
>  #include <drm/drm_gem.h>
>  #include <drm/drm_ioctl.h>
> +#include <drm/qda_accel.h>
> +
>  #include "qda_drv.h"
> +#include "qda_ioctl.h"
>  #include "qda_rpmsg.h"
>  
>  static struct qda_drm_priv *get_drm_priv_from_device(struct drm_device *dev)
> @@ -128,11 +131,17 @@ static void qda_postclose(struct drm_device *dev, struct drm_file *file)
>  
>  DEFINE_DRM_ACCEL_FOPS(qda_accel_fops);
>  
> +static const struct drm_ioctl_desc qda_ioctls[] = {
> +	DRM_IOCTL_DEF_DRV(QDA_QUERY, qda_ioctl_query, 0),
> +};
> +
>  static struct drm_driver qda_drm_driver = {
>  	.driver_features = DRIVER_COMPUTE_ACCEL,
>  	.fops			= &qda_accel_fops,
>  	.open			= qda_open,
>  	.postclose		= qda_postclose,
> +	.ioctls = qda_ioctls,

Please select one style. Either you indent all assignments or you don't.

> +	.num_ioctls = ARRAY_SIZE(qda_ioctls),
>  	.name = DRIVER_NAME,
>  	.desc = "Qualcomm DSP Accelerator Driver",
>  };
> diff --git a/drivers/accel/qda/qda_ioctl.c b/drivers/accel/qda/qda_ioctl.c
> new file mode 100644
> index 000000000000..9fa73ec2dfce
> --- /dev/null
> +++ b/drivers/accel/qda/qda_ioctl.c
> @@ -0,0 +1,45 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> +#include <drm/drm_ioctl.h>
> +#include <drm/drm_gem.h>
> +#include <drm/qda_accel.h>
> +#include "qda_drv.h"
> +#include "qda_ioctl.h"
> +
> +static int qda_validate_and_get_context(struct drm_device *dev, struct drm_file *file_priv,
> +					struct qda_dev **qdev, struct qda_user **qda_user)
> +{
> +	struct qda_drm_priv *drm_priv = dev->dev_private;
> +	struct qda_file_priv *qda_file_priv;
> +
> +	if (!drm_priv)
> +		return -EINVAL;
> +
> +	*qdev = drm_priv->qdev;
> +	if (!*qdev)
> +		return -EINVAL;

Can this actually happen or is it (un)wishful thinking?

> +
> +	qda_file_priv = (struct qda_file_priv *)file_priv->driver_priv;
> +	if (!qda_file_priv || !qda_file_priv->qda_user)
> +		return -EINVAL;

What are you protecting against?

> +
> +	*qda_user = qda_file_priv->qda_user;
> +
> +	return 0;
> +}
> +
> +int qda_ioctl_query(struct drm_device *dev, void *data, struct drm_file *file_priv)
> +{
> +	struct qda_dev *qdev;
> +	struct qda_user *qda_user;
> +	struct drm_qda_query *args = data;
> +	int ret;
> +
> +	ret = qda_validate_and_get_context(dev, file_priv, &qdev, &qda_user);
> +	if (ret)
> +		return ret;
> +
> +	strscpy(args->dsp_name, qdev->dsp_name, sizeof(args->dsp_name));
> +
> +	return 0;
> +}
> diff --git a/drivers/accel/qda/qda_ioctl.h b/drivers/accel/qda/qda_ioctl.h
> new file mode 100644
> index 000000000000..6bf3bcd28c0e
> --- /dev/null
> +++ b/drivers/accel/qda/qda_ioctl.h
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef _QDA_IOCTL_H
> +#define _QDA_IOCTL_H
> +
> +#include <linux/types.h>
> +#include <linux/kernel.h>
> +#include <drm/drm_ioctl.h>
> +#include "qda_drv.h"
> +
> +/**
> + * qda_ioctl_query - Query DSP device information and capabilities
> + * @dev: DRM device structure
> + * @data: User-space data containing query parameters and results
> + * @file_priv: DRM file private data
> + *
> + * This IOCTL handler queries information about the DSP device.
> + *
> + * Return: 0 on success, negative error code on failure
> + */
> +int qda_ioctl_query(struct drm_device *dev, void *data, struct drm_file *file_priv);
> +
> +#endif /* _QDA_IOCTL_H */
> diff --git a/include/uapi/drm/qda_accel.h b/include/uapi/drm/qda_accel.h
> new file mode 100644
> index 000000000000..0aad791c4832
> --- /dev/null
> +++ b/include/uapi/drm/qda_accel.h
> @@ -0,0 +1,47 @@
> +/* SPDX-License-Identifier: GPL-2.0-only WITH Linux-syscall-note */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef __QDA_ACCEL_H__
> +#define __QDA_ACCEL_H__
> +
> +#include "drm.h"
> +
> +#if defined(__cplusplus)
> +extern "C" {
> +#endif
> +
> +/*
> + * QDA IOCTL command numbers
> + *
> + * These define the command numbers for QDA-specific IOCTLs.
> + * They are used with DRM_COMMAND_BASE to create the full IOCTL numbers.
> + */
> +#define DRM_QDA_QUERY	0x00
> +/*
> + * QDA IOCTL definitions
> + *
> + * These macros define the actual IOCTL numbers used by userspace applications.
> + * They combine the command numbers with DRM_COMMAND_BASE and specify the
> + * data structure and direction (read/write) for each IOCTL.
> + */
> +#define DRM_IOCTL_QDA_QUERY	DRM_IOR(DRM_COMMAND_BASE + DRM_QDA_QUERY, struct drm_qda_query)
> +
> +/**
> + * struct drm_qda_query - Device information query structure
> + * @dsp_name: Name of DSP (e.g., "adsp", "cdsp", "cdsp1", "gdsp0", "gdsp1")
> + *
> + * This structure is used with DRM_IOCTL_QDA_QUERY to query device type,
> + * allowing userspace to identify which DSP a device node represents. The
> + * kernel provides the DSP name directly as a null-terminated string.
> + */
> +struct drm_qda_query {
> +	__u8 dsp_name[16];
> +};
> +
> +#if defined(__cplusplus)
> +}
> +#endif
> +
> +#endif /* __QDA_ACCEL_H__ */
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
