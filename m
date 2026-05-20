Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFxwMKW+DWr32wUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:01:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 902C658F3B5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:01:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8DC840971
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 14:01:03 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 168E94095C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:00:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=dUdkKURy;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=iX8WHtPx;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64K9lheP267056
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:00:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=U9/Q8mqCV0Uj7BxH3hktMpN5
	6OJlF++O6S5GYSKyTd4=; b=dUdkKURyinxOi+ej/Xdbwmv349dqt/Jp4ywZYiBS
	fhCzEEUJN48rg0Kg3oVkSg+WRh/5SWXi0BydcBltdcOAD0AKexiThB68Yvz/z9k/
	dLMLwCP5FHsDRHMndX03yMo/YECZku4Co92ZbDnclBdlsDonKmp67vPplO/iBXkS
	i0OOryknpGv2Ho4D/GeBcoeNTshuy5z+8cLzaxwXZVZapa3kWQQi/kIt84fOR6Qz
	WtnhYKf8Y2roGzfgFrfS+qMEtRAi0jnwuhX0RAxZaV4XgQ8I//ZSbHbwFOqjFQ40
	wZgjM1lh9YCl52l7HkhCqQZTywcWpbjmqJ7nDNa7Hrkv1w==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9amxrvv6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:00:41 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-63230863010so7825498137.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 07:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779285640; x=1779890440; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=U9/Q8mqCV0Uj7BxH3hktMpN56OJlF++O6S5GYSKyTd4=;
        b=iX8WHtPxbqPm4yT1mvh4sYZKOk6wkVVC1r4/uiUYBE7ZsrzHeGJHUb24X9+xOnYOGq
         CXRfYRizQtAFNBzorYH1VUGIwKAvQ2PiGcg0X0MMYDo92/MohXjVFwDEpmuZw3gIEi8r
         uIkqVSEWJLbBkMOX9XhkhWOhkilVfY5+5wf2XR2jE6o61mItDSUsHdg1UXyw4KnusijO
         RwQl+rg336OMvbT5vBvyREKVXHLsERArBPjIkp6719Dpk2KHZFdNPYFZI1/S45B1ojwy
         pDHuXFpjxxw2mgGH+Ev0olA2VWeSm5iho2I+rYjKfYQ8hPa+qjkI29o1Y9sGvjv9X1lP
         yL5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779285640; x=1779890440;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U9/Q8mqCV0Uj7BxH3hktMpN56OJlF++O6S5GYSKyTd4=;
        b=g57AC1XIDBoGGTVvbvdDoVF9hhHwIiphRbAFEeFlHKp4FeTYmTQqVK96rK5bKi4xp6
         Jg+KIWHqw+tU1ygqk1gUOf89onrz8KfH5Pzj9sCK4AtJrPt4eC7Xmge7ZF1O9hD1+maK
         nIlFcX9AKe+FPCGAiEUjxfr9O6+xLs7rWcH2gbR2rYXN0qclCdZTE05x4ZpVobqAHKAy
         TOkhdo9/V7QoBBHLnEvJbuc20lDlkmpGj/6ZF/Ho1SOBlF/PtpO9m3kn9AcBJAid9jLt
         HSm/G+nHZQyPe9bdWDY1QSM4fnnIkD0c1ZANL1gaaXkl0hCt7FeYr/KA+Kl8qtIDNjHm
         WpEg==
X-Forwarded-Encrypted: i=1; AFNElJ9FPcRkBs2/EKE/NB6wkvjR22EwcxU6Vl+i4dcV6PtW1MRkOJeJXhb+cuot9ooLNP8433hRKHTT3sRKAzzv@lists.linaro.org
X-Gm-Message-State: AOJu0YxGUhU0GsSkHM9TSY9Rq1s+NddRaqJQkU2MxUc7Bh+jURIpNLxJ
	s+Sa8VhCyvDUu0iFIEeoNcUcQJfphxVRr3JJ3IrYaO2qrxQyMuwFlH4nSZ9FlCmzbfMcN9JxO2T
	BMCvaZHXYGl1eVcxVZap3v1uaTbFVAFBo9kG8vFvNTLTgurJCv5HLaSbUJ/pRchKdvD5+bt0QCN
	FshA==
X-Gm-Gg: Acq92OFN2+Bs6FTcL33NjLjGAgWOscqEZ/JCVbWTDfKB0VcOV6CWfjBGEbRGgH8sN6h
	YmLD9JrX8Y/njdgZ8HN5Vx62NTgWdX50HqiaCOuRrKnXoPwoLOa5MLHR2z9F/YWJYRAgs2UKa3f
	AYI69UxmVjT6EzwRwP2A9ueAJ7OLJQrk8+G6dPuKwklimAvfxv6yvyvtTkK9W9a3nRLPL9Gmv/Q
	fGnk9iudzOC3NZJMI5lRC4HAsKhRyNRc9R8w6u19xEB6SrkNWUia/NsHBRvoVT191qUR0DZP1wn
	fE+42sTNHLdvxMtrLziEgkuMaj552XYNUomgCz7lrA6i3lq58UIxZuKwLvPylv5Od8pubWt88zY
	rv9CSb7isZt77gn5Y27V9C5Qfypcl+h8CJE1/ND5qdW4912TUGAn+pDGege8ZLrm7J5HeoFBMl+
	ZncvN7wcr8YA4Y+f0A+RucUxeqqKZ3uYYI6+I=
X-Received: by 2002:a05:6102:50a9:b0:631:8665:350c with SMTP id ada2fe7eead31-63a3f997351mr12829700137.25.1779285640193;
        Wed, 20 May 2026 07:00:40 -0700 (PDT)
X-Received: by 2002:a05:6102:50a9:b0:631:8665:350c with SMTP id ada2fe7eead31-63a3f997351mr12829570137.25.1779285639231;
        Wed, 20 May 2026 07:00:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a90f10c89bsm5042700e87.13.2026.05.20.07.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 07:00:38 -0700 (PDT)
Date: Wed, 20 May 2026 17:00:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: ekansh.gupta@oss.qualcomm.com
Message-ID: <w44qzw2ryg7bpbte3hegopmtkfjd2gby532rdjarm4i3tylpv2@2rmruincfdgc>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-13-b2d984c297f8@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260519-qda-series-v1-13-b2d984c297f8@oss.qualcomm.com>
X-Proofpoint-GUID: jeT-qFPKG8PNSTRKvGnwsHaWEjjZMp9O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIwMDEzNSBTYWx0ZWRfX4y+TOFEjDCAk
 c8ea9hL/7XRaUW4/Jz+x34JPs0Nrgfy+MT9gOAO0Cm+cLoKbGUjmzI7tc9tU9NbQoCh9wATcrNN
 F0glx00vOcTn6H0t0bpOcvhJUpwFVWNh8fEzt9k/eUsWY6NLby9sq+yaLVA/4GYJA7wqpnvGEfW
 4KWzUV23bAKwMWBi3B+FK6HydqGvycpgQLkwdRCgq7ZbaIO5Y9zAO66R5KExpXEVnzXi01I6WAe
 JMi/nc1KolF1Ny+i78n99p7bNsqf4flODhfYvJsWvsqIfMtdkpt35FNwCCTMA/+Hh1zmFech2Sq
 IV8WQ6w+oKrt7iZN3JCLxd2UQaChwWGeCSTatUVV6jqI58kM82YqsQXw6dAxsiXhDCVGp84r6zF
 vewK9JZSyQzOADbA2dbd55HvugGW12HW580OrfLTqmjLR0jUepw9SUH55uKZ61WySVrSwCmydBo
 c0hBmiQDerU2BKkUr7Q==
X-Authority-Analysis: v=2.4 cv=TO11jVla c=1 sm=1 tr=0 ts=6a0dbe89 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=3YhzUX1BjJiw-A8RHnsA:9 a=CjuIK1q_8ugA:10 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-ORIG-GUID: jeT-qFPKG8PNSTRKvGnwsHaWEjjZMp9O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 clxscore=1015 lowpriorityscore=0
 impostorscore=0 suspectscore=0 spamscore=0 adultscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605200135
X-Spamd-Bar: ---
Message-ID-Hash: P6U5I4RHGQ3FMXGBWVBIXPFNK3G7AO6B
X-Message-ID-Hash: P6U5I4RHGQ3FMXGBWVBIXPFNK3G7AO6B
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 13/15] accel/qda: Add DSP process creation and release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P6U5I4RHGQ3FMXGBWVBIXPFNK3G7AO6B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[linaro-mm-sig-leave.lists.linaro.org:query timed out];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.135];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 902C658F3B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 11:46:03AM +0530, Ekansh Gupta via B4 Relay wrote:
> From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> 
> Implement the REMOTE_SESSION_CREATE and INIT_RELEASE FastRPC
> operations, which establish and tear down a user process on the
> DSP.
> 
> DRM_IOCTL_QDA_REMOTE_SESSION_CREATE (drm_qda_init_create)
>   Creates a new process on the DSP by sending an INIT_CREATE message
>   via the FastRPC INIT_HANDLE. The caller provides an ELF file (via
>   DMA-BUF fd or direct pointer) and optional process attributes. A
>   4 MB GEM buffer is allocated per session to hold the DSP process
>   image; this buffer is stored in qda_file_priv and reused for the
>   lifetime of the session.
> 
>   If attrs is non-zero, INIT_CREATE_ATTR is used instead of
>   INIT_CREATE to pass the extended attribute and signature fields.

What is the difference?

> 
> INIT_RELEASE
>   Sends a release message to the DSP when the DRM file is closed
>   (qda_postclose via qda_release_dsp_process), freeing the remote
>   process and its resources. The release is skipped if the device
>   has already been unplugged.
> 
> qda_fastrpc.c
>   fastrpc_prepare_args_init_create() marshals the six-argument
>   create-process payload: the inbuf descriptor, process name,
>   ELF file, physical pages, attrs, and siglen.
>   fastrpc_prepare_args_release_process() marshals the single-
>   argument release payload (remote_session_id).
> 
> qda_drv.c
>   qda_postclose() is extended to call qda_release_dsp_process()
>   under drm_dev_enter() so the release message is only sent while
>   the device is still accessible.
> 
> Assisted-by: Claude:claude-4-6-sonnet
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  drivers/accel/qda/qda_drv.c     |   8 +++
>  drivers/accel/qda/qda_drv.h     |   5 ++
>  drivers/accel/qda/qda_fastrpc.c | 140 ++++++++++++++++++++++++++++++++++++++++
>  drivers/accel/qda/qda_fastrpc.h |  39 +++++++++--
>  drivers/accel/qda/qda_ioctl.c   |  52 +++++++++++++++
>  drivers/accel/qda/qda_ioctl.h   |   1 +
>  include/uapi/drm/qda_accel.h    |  32 ++++++++-
>  7 files changed, 270 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
> index 704c7d3127d2..4eaba9b050c0 100644
> --- a/drivers/accel/qda/qda_drv.c
> +++ b/drivers/accel/qda/qda_drv.c
> @@ -36,6 +36,13 @@ static int qda_open(struct drm_device *dev, struct drm_file *file)
>  static void qda_postclose(struct drm_device *dev, struct drm_file *file)
>  {
>  	struct qda_file_priv *qda_file_priv = file->driver_priv;
> +	int idx;
> +
> +	/* Only send the DSP release message while the device is accessible */
> +	if (drm_dev_enter(dev, &idx)) {
> +		qda_release_dsp_process(qda_file_priv->qda_dev, file);
> +		drm_dev_exit(idx);
> +	}
>  
>  	if (qda_file_priv->assigned_iommu_dev) {
>  		struct qda_iommu_device *iommu_dev = qda_file_priv->assigned_iommu_dev;
> @@ -59,6 +66,7 @@ static const struct drm_ioctl_desc qda_ioctls[] = {
>  	DRM_IOCTL_DEF_DRV(QDA_QUERY, qda_ioctl_query, 0),
>  	DRM_IOCTL_DEF_DRV(QDA_GEM_CREATE, qda_ioctl_gem_create, 0),
>  	DRM_IOCTL_DEF_DRV(QDA_GEM_MMAP_OFFSET, qda_ioctl_gem_mmap_offset, 0),
> +	DRM_IOCTL_DEF_DRV(QDA_REMOTE_SESSION_CREATE, qda_ioctl_init_create, 0),

Why is it being added in the middle?

>  	DRM_IOCTL_DEF_DRV(QDA_REMOTE_INVOKE, qda_ioctl_invoke, 0),
>  };
>  
> diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
> index 420cccff42bf..4b4639961d95 100644
> --- a/drivers/accel/qda/qda_drv.h
> +++ b/drivers/accel/qda/qda_drv.h
> @@ -28,6 +28,8 @@ struct qda_file_priv {
>  	struct qda_dev *qda_dev;
>  	/** @assigned_iommu_dev: IOMMU device assigned to this process */
>  	struct qda_iommu_device *assigned_iommu_dev;
> +	/** @init_mem_gem_obj: GEM object for PD initialization memory */
> +	struct qda_gem_obj *init_mem_gem_obj;
>  	/** @pid: Process ID for tracking */
>  	pid_t pid;
>  	/** @remote_session_id: Unique session identifier */
> @@ -83,4 +85,7 @@ void qda_deinit_device(struct qda_dev *qdev);
>  int qda_register_device(struct qda_dev *qdev);
>  void qda_unregister_device(struct qda_dev *qdev);
>  
> +/* DSP process / protection domain management */
> +int qda_release_dsp_process(struct qda_dev *qdev, struct drm_file *file_priv);
> +
>  #endif /* __QDA_DRV_H__ */
> diff --git a/drivers/accel/qda/qda_fastrpc.c b/drivers/accel/qda/qda_fastrpc.c
> index 0ec37175a098..305915022b91 100644
> --- a/drivers/accel/qda/qda_fastrpc.c
> +++ b/drivers/accel/qda/qda_fastrpc.c
> @@ -524,6 +524,138 @@ int qda_fastrpc_invoke_unpack(struct fastrpc_invoke_context *ctx,
>  	return err;
>  }
>  
> +static void setup_create_process_args(struct drm_qda_fastrpc_invoke_args *args,
> +				      struct fastrpc_create_process_inbuf *inbuf,
> +				      struct drm_qda_init_create *init,
> +				      struct fastrpc_phy_page *pages)
> +{
> +	args[0].ptr = (u64)(uintptr_t)inbuf;
> +	args[0].length = sizeof(*inbuf);
> +	args[0].fd = -1;
> +
> +	args[1].ptr = (u64)(uintptr_t)current->comm;
> +	args[1].length = inbuf->namelen;
> +	args[1].fd = -1;
> +
> +	args[2].ptr = (u64)init->file;
> +	args[2].length = inbuf->filelen;
> +	args[2].fd = init->filefd;	/* DMA-BUF fd forwarded to DSP */
> +
> +	args[3].ptr = (u64)(uintptr_t)pages;
> +	args[3].length = 1 * sizeof(*pages);
> +	args[3].fd = -1;
> +
> +	args[4].ptr = (u64)(uintptr_t)&inbuf->attrs;
> +	args[4].length = sizeof(inbuf->attrs);
> +	args[4].fd = -1;
> +
> +	args[5].ptr = (u64)(uintptr_t)&inbuf->siglen;
> +	args[5].length = sizeof(inbuf->siglen);
> +	args[5].fd = -1;
> +}
> +
> +static void setup_single_arg(struct drm_qda_fastrpc_invoke_args *args, const void *ptr, size_t size)
> +{
> +	args[0].ptr = (u64)(uintptr_t)ptr;
> +	args[0].length = size;
> +	args[0].fd = -1;
> +}
> +
> +static int fastrpc_prepare_args_release_process(struct fastrpc_invoke_context *ctx)
> +{
> +	struct drm_qda_fastrpc_invoke_args *args;
> +
> +	args = kzalloc_obj(*args);
> +	if (!args)
> +		return -ENOMEM;
> +
> +	setup_single_arg(args, &ctx->remote_session_id, sizeof(ctx->remote_session_id));
> +	ctx->sc = FASTRPC_SCALARS(FASTRPC_RMID_INIT_RELEASE, 1, 0);
> +	ctx->args = args;
> +	ctx->handle = FASTRPC_INIT_HANDLE;
> +
> +	return 0;
> +}
> +
> +static int fastrpc_prepare_args_init_create(struct fastrpc_invoke_context *ctx,
> +					    char __user *argp)
> +{
> +	struct drm_qda_init_create init;
> +	struct drm_qda_fastrpc_invoke_args *args;
> +	struct fastrpc_create_process_inbuf *inbuf;
> +	int err;
> +	u32 sc;
> +
> +	args = kcalloc(FASTRPC_CREATE_PROCESS_NARGS, sizeof(*args), GFP_KERNEL);
> +	if (!args)
> +		return -ENOMEM;
> +
> +	ctx->input_pages = kcalloc(1, sizeof(*ctx->input_pages), GFP_KERNEL);
> +	if (!ctx->input_pages) {
> +		err = -ENOMEM;
> +		goto err_free_args;
> +	}
> +
> +	ctx->inbuf = kcalloc(1, sizeof(*inbuf), GFP_KERNEL);
> +	if (!ctx->inbuf) {
> +		err = -ENOMEM;
> +		goto err_free_input_pages;
> +	}
> +	inbuf = ctx->inbuf;
> +
> +	memcpy(&init, argp, sizeof(init));
> +
> +	if (init.filelen > FASTRPC_INIT_FILELEN_MAX) {
> +		err = -EINVAL;
> +		goto err_free_inbuf;
> +	}
> +
> +	/*
> +	 * Validate that the DMA-BUF fd is importable.  The fd itself is kept
> +	 * in init.filefd and forwarded to the DSP via setup_create_process_args().
> +	 */
> +	if (init.filelen && init.filefd > 0) {
> +		struct drm_gem_object *file_gem_obj;
> +
> +		err = get_gem_obj_from_dmabuf_fd(ctx, init.filefd, &file_gem_obj);
> +		if (err) {
> +			err = -EINVAL;
> +			goto err_free_inbuf;
> +		}
> +		drm_gem_object_put(file_gem_obj);
> +	}
> +
> +	inbuf->remote_session_id = ctx->remote_session_id;
> +	inbuf->namelen = strlen(current->comm) + 1;
> +	inbuf->filelen = init.filelen;
> +	inbuf->pageslen = 1;
> +	inbuf->attrs = init.attrs;
> +	inbuf->siglen = init.siglen;
> +
> +	setup_pages_from_gem_obj(ctx->init_mem_gem_obj, &ctx->input_pages[0]);
> +
> +	setup_create_process_args(args, inbuf, &init, ctx->input_pages);
> +
> +	sc = FASTRPC_SCALARS(FASTRPC_RMID_INIT_CREATE, 4, 0);
> +	if (init.attrs)
> +		sc = FASTRPC_SCALARS(FASTRPC_RMID_INIT_CREATE_ATTR, 4, 0);
> +	ctx->sc = sc;
> +	ctx->args = args;
> +	ctx->handle = FASTRPC_INIT_HANDLE;
> +
> +	return 0;
> +
> +err_free_inbuf:
> +	kfree(ctx->inbuf);
> +	ctx->inbuf = NULL;
> +err_free_input_pages:
> +	kfree(ctx->input_pages);
> +	ctx->input_pages = NULL;
> +err_free_args:
> +	kfree(args);
> +	return err;
> +}
> +
>  static int fastrpc_prepare_args_invoke(struct fastrpc_invoke_context *ctx, char __user *argp)
>  {
>  	struct drm_qda_invoke_args invoke_args;
> @@ -568,6 +700,14 @@ int qda_fastrpc_prepare_args(struct fastrpc_invoke_context *ctx, char __user *ar
>  	int err;
>  
>  	switch (ctx->type) {
> +	case FASTRPC_RMID_INIT_RELEASE:
> +		err = fastrpc_prepare_args_release_process(ctx);
> +		break;
> +	case FASTRPC_RMID_INIT_CREATE:
> +	case FASTRPC_RMID_INIT_CREATE_ATTR:
> +		ctx->pd = QDA_USER_PD;
> +		err = fastrpc_prepare_args_init_create(ctx, argp);
> +		break;
>  	case FASTRPC_RMID_INVOKE_DYNAMIC:
>  		err = fastrpc_prepare_args_invoke(ctx, argp);
>  		break;
> diff --git a/drivers/accel/qda/qda_fastrpc.h b/drivers/accel/qda/qda_fastrpc.h
> index ce77baeccfba..1c1236f9525e 100644
> --- a/drivers/accel/qda/qda_fastrpc.h
> +++ b/drivers/accel/qda/qda_fastrpc.h
> @@ -127,6 +127,27 @@ struct fastrpc_invoke_buf {
>  	u32 pgidx;
>  };
>  
> +/**
> + * struct fastrpc_create_process_inbuf - Input buffer for process creation
> + *
> + * This structure defines the input buffer format for creating a new
> + * process on the remote DSP.
> + */
> +struct fastrpc_create_process_inbuf {
> +	/** @remote_session_id: Client identifier for the session */
> +	int remote_session_id;
> +	/** @namelen: Length of the process name string including NUL terminator */
> +	u32 namelen;
> +	/** @filelen: Length of the ELF shell file in bytes */
> +	u32 filelen;
> +	/** @pageslen: Number of physical page descriptors */
> +	u32 pageslen;
> +	/** @attrs: Process attribute flags */
> +	u32 attrs;
> +	/** @siglen: Length of the signature data in bytes */
> +	u32 siglen;
> +};
> +
>  /**
>   * struct fastrpc_msg - FastRPC wire message for remote invocations
>   *
> @@ -153,10 +174,6 @@ struct fastrpc_msg {
>  
>  /**
>   * struct qda_msg - FastRPC message with kernel-internal bookkeeping
> - *
> - * The wire-format portion is kept in the embedded @fastrpc member (must
> - * be first) so that &qda_msg->fastrpc can be passed directly to
> - * rpmsg_send() without a copy.
>   */
>  struct qda_msg {
>  	/**
> @@ -245,7 +262,7 @@ struct fastrpc_invoke_context {
>  	struct qda_gem_obj *msg_gem_obj;
>  	/** @file_priv: DRM file private data */
>  	struct drm_file *file_priv;
> -	/** @init_mem_gem_obj: GEM object for protection domain init memory */
> +	/** @init_mem_gem_obj: GEM object for PD initialization memory */
>  	struct qda_gem_obj *init_mem_gem_obj;
>  	/** @req: Pointer to kernel-internal request buffer */
>  	void *req;
> @@ -256,11 +273,23 @@ struct fastrpc_invoke_context {
>  };
>  
>  /* Remote Method ID table - identifies initialization and control operations */
> +#define FASTRPC_RMID_INIT_RELEASE	1	/* Release DSP process */
> +#define FASTRPC_RMID_INIT_CREATE	6	/* Create DSP process */
> +#define FASTRPC_RMID_INIT_CREATE_ATTR	7	/* Create DSP process with attributes */
>  #define FASTRPC_RMID_INVOKE_DYNAMIC	0xFFFFFFFF	/* Dynamic method invocation */
>  
>  /* Common handle for initialization operations */
>  #define FASTRPC_INIT_HANDLE		0x1
>  
> +/* Protection Domain (PD) identifiers */
> +#define QDA_ROOT_PD		(0)
> +#define QDA_USER_PD		(1)
> +
> +/* Number of arguments for process creation */
> +#define FASTRPC_CREATE_PROCESS_NARGS	6
> +/* Maximum initialization file size (4 MB) */
> +#define FASTRPC_INIT_FILELEN_MAX	(4 * 1024 * 1024)
> +
>  void qda_fastrpc_context_free(struct kref *ref);
>  struct fastrpc_invoke_context *qda_fastrpc_context_alloc(void);
>  int qda_fastrpc_prepare_args(struct fastrpc_invoke_context *ctx, char __user *argp);
> diff --git a/drivers/accel/qda/qda_ioctl.c b/drivers/accel/qda/qda_ioctl.c
> index c81268c20b04..33f0a798ad13 100644
> --- a/drivers/accel/qda/qda_ioctl.c
> +++ b/drivers/accel/qda/qda_ioctl.c
> @@ -109,6 +109,7 @@ static int fastrpc_invoke(int type, struct drm_device *dev, void *data,
>  	struct drm_gem_object *gem_obj;
>  	int err;
>  	size_t hdr_size;
> +	size_t initmem_size = FASTRPC_INIT_FILELEN_MAX;
>  
>  	ctx = qda_fastrpc_context_alloc();
>  	if (IS_ERR(ctx))
> @@ -124,6 +125,27 @@ static int fastrpc_invoke(int type, struct drm_device *dev, void *data,
>  	ctx->file_priv = file_priv;
>  	ctx->remote_session_id = qda_file_priv->remote_session_id;
>  
> +	if (type == FASTRPC_RMID_INIT_CREATE) {
> +		struct drm_gem_object *initmem_gem_obj;
> +
> +		if (qda_file_priv->init_mem_gem_obj) {

Why is it non-NULL here?

> +			drm_gem_object_put(&qda_file_priv->init_mem_gem_obj->base);
> +			qda_file_priv->init_mem_gem_obj = NULL;
> +		}
> +
> +		initmem_gem_obj = qda_gem_create_object(dev, qdev->iommu_mgr,
> +							initmem_size, file_priv);
> +		if (IS_ERR(initmem_gem_obj)) {
> +			err = PTR_ERR(initmem_gem_obj);
> +			goto err_context_free;
> +		}
> +
> +		ctx->init_mem_gem_obj = to_qda_gem_obj(initmem_gem_obj);
> +		qda_file_priv->init_mem_gem_obj = ctx->init_mem_gem_obj;
> +	} else if (type == FASTRPC_RMID_INIT_RELEASE) {
> +		ctx->init_mem_gem_obj = qda_file_priv->init_mem_gem_obj;
> +	}
> +
>  	err = qda_fastrpc_prepare_args(ctx, (char __user *)data);
>  	if (err)
>  		goto err_context_free;
> @@ -161,11 +183,41 @@ static int fastrpc_invoke(int type, struct drm_device *dev, void *data,
>  	return 0;
>  
>  err_context_free:
> +	if (type == FASTRPC_RMID_INIT_RELEASE && !err && qda_file_priv->init_mem_gem_obj) {
> +		drm_gem_object_put(&qda_file_priv->init_mem_gem_obj->base);
> +		qda_file_priv->init_mem_gem_obj = NULL;
> +	}
> +
>  	fastrpc_context_put_id(ctx, qdev);
>  	kref_put(&ctx->refcount, qda_fastrpc_context_free);
>  	return err;
>  }
>  
> +/**
> + * qda_ioctl_init_create() - Create a DSP process
> + * @dev: DRM device structure
> + * @data: User-space data (struct drm_qda_init_create)
> + * @file_priv: DRM file private data
> + *
> + * Return: 0 on success, negative error code on failure
> + */
> +int qda_ioctl_init_create(struct drm_device *dev, void *data, struct drm_file *file_priv)
> +{
> +	return fastrpc_invoke(FASTRPC_RMID_INIT_CREATE, dev, data, file_priv);

Where is INIT_CREATE_ATTR, which you described earlier?

> +}
> +
> +/**
> + * qda_release_dsp_process() - Release DSP process resources for a file
> + * @qdev: QDA device structure
> + * @file_priv: DRM file private data
> + *
> + * Return: 0 on success, negative error code on failure
> + */
> +int qda_release_dsp_process(struct qda_dev *qdev, struct drm_file *file_priv)
> +{
> +	return fastrpc_invoke(FASTRPC_RMID_INIT_RELEASE, &qdev->drm_dev, NULL, file_priv);
> +}
> +
>  /**
>   * qda_ioctl_invoke() - Perform a dynamic FastRPC method invocation
>   * @dev: DRM device structure
> diff --git a/drivers/accel/qda/qda_ioctl.h b/drivers/accel/qda/qda_ioctl.h
> index 3bb9cfd98370..192565434363 100644
> --- a/drivers/accel/qda/qda_ioctl.h
> +++ b/drivers/accel/qda/qda_ioctl.h
> @@ -9,6 +9,7 @@
>  #include "qda_drv.h"
>  
>  int qda_ioctl_query(struct drm_device *dev, void *data, struct drm_file *file_priv);
> +int qda_ioctl_init_create(struct drm_device *dev, void *data, struct drm_file *file_priv);
>  int qda_ioctl_gem_create(struct drm_device *dev, void *data, struct drm_file *file_priv);
>  int qda_ioctl_gem_mmap_offset(struct drm_device *dev, void *data, struct drm_file *file_priv);
>  int qda_ioctl_invoke(struct drm_device *dev, void *data, struct drm_file *file_priv);
> diff --git a/include/uapi/drm/qda_accel.h b/include/uapi/drm/qda_accel.h
> index 72512213741f..711e2523a570 100644
> --- a/include/uapi/drm/qda_accel.h
> +++ b/include/uapi/drm/qda_accel.h
> @@ -21,8 +21,9 @@ extern "C" {
>  #define DRM_QDA_QUERY		0x00
>  #define DRM_QDA_GEM_CREATE		0x01
>  #define DRM_QDA_GEM_MMAP_OFFSET	0x02
> -/* Command numbers 0x03-0x06 reserved for INIT_ATTACH, INIT_CREATE, MAP, MUNMAP */
> -#define DRM_QDA_REMOTE_INVOKE		0x07
> +/* Command number 0x03 reserved for INIT_ATTACH; 0x05-0x06 reserved for MAP, MUNMAP */
> +#define DRM_QDA_REMOTE_SESSION_CREATE		0x04
> +#define DRM_QDA_REMOTE_INVOKE			0x07
>  
>  /*
>   * QDA IOCTL definitions
> @@ -37,6 +38,9 @@ extern "C" {
>  					  struct drm_qda_gem_create)
>  #define DRM_IOCTL_QDA_GEM_MMAP_OFFSET	DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_GEM_MMAP_OFFSET, \
>  					  struct drm_qda_gem_mmap_offset)
> +#define DRM_IOCTL_QDA_REMOTE_SESSION_CREATE					\
> +	DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_REMOTE_SESSION_CREATE,		\
> +		 struct drm_qda_init_create)
>  #define DRM_IOCTL_QDA_REMOTE_INVOKE	DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_REMOTE_INVOKE, \
>  					  struct drm_qda_invoke_args)
>  
> @@ -99,6 +103,30 @@ struct drm_qda_fastrpc_invoke_args {
>  	__u32 attr;
>  };
>  
> +/**
> + * struct drm_qda_init_create - Accelerator process initialization parameters
> + * @filelen: Length of the ELF file in bytes
> + * @filefd: DMA-BUF file descriptor containing the ELF file
> + * @attrs: Process attributes flags
> + * @siglen: Length of signature data in bytes
> + * @file: Pointer to ELF file data if not using filefd
> + *
> + * This structure is used with DRM_IOCTL_QDA_INIT_CREATE to initialize
> + * a new process on the accelerator. The process code is provided either
> + * via a file descriptor (filefd, typically a GEM object) or a direct
> + * pointer (file). Set file to 0 if using filefd.
> + *
> + * The attrs field contains bit flags for debug mode, privileged execution,
> + * and other process attributes.
> + */
> +struct drm_qda_init_create {
> +	__u32 filelen;
> +	__s32 filefd;
> +	__u32 attrs;
> +	__u32 siglen;
> +	__u64 file;
> +};
> +
>  /**
>   * struct drm_qda_invoke_args - Dynamic FastRPC invocation parameters
>   * @handle: Remote handle to invoke on the DSP
> 
> -- 
> 2.34.1
> 
> 

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
