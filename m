Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CnFEe0T4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF1B412130
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E980744D9C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:52:59 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 166B03F80C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:39:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=kqvDym6x;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=LkTxag99;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NI0Gh83732653
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:39:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nUK32uPvxI2Vc2NAUq76VwMY
	c+Ah6Xyt+D23oW/zCfs=; b=kqvDym6xN5iYKhCrRoJnOe6QhUMEQmbDb5Q7Jt7G
	Nvp9xvYWF6ojiRHfKtEW3cbRLt/YsX0zowxZRSJBZnv1nqbeZuspdihEvi00mnu6
	Z9QkZNNmd/hUGeNWgthr0Qeahc7w9POljWOVqi5QDdmfcKREpryPqTyMqV6ifblK
	1BAE9zpA+zD8PNCTFr/vHaYa3QDy370T0uMnoLyMASd+AO0WM5X76QYcdJ9S2BM+
	U83C5vsR7m15pFs3KYJBntr/YxlhlApsKfA3KcniUk5kU/NfeAgQVCXCfWW/cfxw
	E9GfEazeVJ6kB4F1KY+H18iAQJ6Cj7nBeVSqTj6WjTzGRA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn7ta440-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:39:50 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-894a861fd7cso576707936d6.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 14:39:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771886390; x=1772491190; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nUK32uPvxI2Vc2NAUq76VwMYc+Ah6Xyt+D23oW/zCfs=;
        b=LkTxag99wRz9YwsPQqGvrNnzLjWWubbNrS0BgGjsuKZqUn351DjOGUEJ8A2OquoiTF
         IeMC4HvATz9xC4fZjipa2vuJrUsDKE21s3LLB3Ck19e10olaJGUdNoyniiYpRSixl/uc
         tpCvDtBuFhzDVAnNCq0aeKgTM0jxdpkZBNltZSBIAa/p3gQXhgzFhGXD3AATKRQy1l1w
         3K6KWrY17yBVpZATmmwfI+LmSt+jU5iX0CVfOxY4EwMeGYbRluC90bh8t4l20lHRdY7X
         Ks2Tul7DAloYjZfYwEAytfO2XwMb/11udJDb1RTX3W/ucAlAw5XdX3MEs5+nvEHBjaSP
         /srw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771886390; x=1772491190;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nUK32uPvxI2Vc2NAUq76VwMYc+Ah6Xyt+D23oW/zCfs=;
        b=oMe8/WANqb1I33n/dcfwsgbiNnEeTcorq6XXPo4fXtsRwB1oW04/J3A4O5DHqD2TFm
         J3rDv0RQu7ZtVkwCpzjSs3+Nv7zJ1yYRvJv86A+4An7rr54LSAMa8z0jhnYbZjMymEkc
         LpyQB3H76gnDKwijcLpJKkPAChLDyZSXUOJ/p1uQ3VT/1YmW6Ha2Gavmmg49O9JTstPL
         rwKB3HfyoXPfAmpLQ/jfYQukXNyyk1wwqqJlLElSNkCSSHQAjc+w1/p+OvhFuPTERZ0k
         xFMpUgSUC1Z1UqKQ4sd2hkfeFesoo8Z3w8I9YdTHP+0l3oFMzoqB1vWiJ/sUBbQKj8rE
         KjCA==
X-Forwarded-Encrypted: i=1; AJvYcCWaaJ69YQDgKm2TMmntIFWbk1fHsOLgTSedK8rmm5E+/kDxXO7os6jBgz8jxz4FNSYMTPMzSBSSzl29yaYa@lists.linaro.org
X-Gm-Message-State: AOJu0Ywt6jn0Wt3q/6YTtRo/AV0vaaypIvZ+JserZ55jlhOu+0VUb/nf
	PTAFq6ZUp5xZmDog5H7kdMu38ve86cbl96TIFPp9HNQo8CE3gZO4iMjqiCdZ/skInX26wxG1l2e
	yf69YYv+4KEfDkeH2JN13t728G646KVwp2iWIZnN+3cMTr5LnGVMBZB8oMwkiHQkiL8EsCg==
X-Gm-Gg: AZuq6aKO/+uIdwlO897lASI5ON/qx6+vyJEIgW/itvrBt1UPTG7PFjw3Jga9KN2FEKx
	023cUVuKtAE4oH1niRsezmnNWkBMAXwhelEWg+XEGsNfgZfkA0InWrZyThcSApryRI9lmQaEMdq
	XBtmTFkXisFjR5nvRDTboLq7/VPyaEkogYW2xR4ChtjCVkSy8RxyJDBd4dPRwHFHtwDMW981PdI
	wZR7RfVUnIo5OuXSA6K1g+eRE0CPsGR4ctdaLwjgQoW026bu+7D8W3SbAddM25r8Arq6PVpdcfy
	nzaIWa2qqqEXKidItmyD8gwqVvLLXx0/VXyIVNUVPyUCjqa0nScc7bTwAEh68Qp8fC6NG+b2CzI
	2qNcyE4qB7tV9DyGH2j0rhGv75IwqPAayMQ2uBU06YTQxOesDzmIC5NMsdNPte8LUik71EdPjwG
	djGwEfAIV+WzFlZaC1I/37BMPQFDQLaqhQ4dY=
X-Received: by 2002:a05:620a:319a:b0:8cb:4c79:b44f with SMTP id af79cd13be357-8cb8ca72048mr1249894185a.51.1771886389557;
        Mon, 23 Feb 2026 14:39:49 -0800 (PST)
X-Received: by 2002:a05:620a:319a:b0:8cb:4c79:b44f with SMTP id af79cd13be357-8cb8ca72048mr1249890085a.51.1771886389013;
        Mon, 23 Feb 2026 14:39:49 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb13873sm1823833e87.22.2026.02.23.14.39.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 14:39:47 -0800 (PST)
Date: Tue, 24 Feb 2026 00:39:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <mkrwav44qxt66ojxvs2mh5jsjqirrm4sk653uglha3cjefevk6@fobon6vj7fhr>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-11-fe46a9c1a046@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224-qda-firstpost-v1-11-fe46a9c1a046@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=c5OmgB9l c=1 sm=1 tr=0 ts=699cd736 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=03G4QXms81HB9-bpn8QA:9 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: v18NLnbOViIbBJ1aL35SvobnSY8BeaWU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE5NyBTYWx0ZWRfXy5LArk0474bN
 fJbxX/Gif6f2q0JNVY98dnNXUHkVF5C5TeNhtKAA2hOOsJOUY9A5696cxuc1mRseOqP+azT8i84
 5xa9dz6Q1qW5vmB6Vuz5brCb7zcHnlAX7Q9whPFhUPj2V94TeIHBMNjAV6a5dLk3/h9LeeBwPgn
 fXgpBHiUqWw8yIL1z7CHOcpLYaLSLXSkqlYFZl/GWE0ZAoSgP0i4UH8vmDRJ9J0LrzqDe+PHr7h
 AnzDZBit51ixJvSzxV7+ZWF0eEn28Z9ix2OBAx9yufVRCD32FnsMpDHaVLLsH+Ggla7CrwfiG6N
 pg/VOoYmDxJUmY8G/9E9ts2xN6yIpN6zm98MfkQ+0Dawc77/7Ky3dbUlTTPSWzMvg359LMB/Tba
 Wq3NFlN6fh9AM73MLZwS0Hf6c+hXdhhYCMbco+vLWXomGb8+RJfTpqHqU9Qs6G4YAt6h4r/vK7b
 sGLxoO/1HMDx4OnR2Fw==
X-Proofpoint-ORIG-GUID: v18NLnbOViIbBJ1aL35SvobnSY8BeaWU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_05,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 bulkscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230197
X-Spamd-Bar: -----
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4C5DWRV3MVKIPVFOV652YBLP5YVHY777
X-Message-ID-Hash: 4C5DWRV3MVKIPVFOV652YBLP5YVHY777
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:53 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 11/18] accel/qda: Add GEM_CREATE and GEM_MMAP_OFFSET IOCTLs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4C5DWRV3MVKIPVFOV652YBLP5YVHY777/>
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
X-Rspamd-Queue-Id: CAF1B412130
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Feb 24, 2026 at 12:39:05AM +0530, Ekansh Gupta wrote:
> Add two GEM-related IOCTLs for the QDA accelerator driver and hook
> them into the DRM accel driver. DRM_IOCTL_QDA_GEM_CREATE allocates
> a DMA-backed GEM buffer object via qda_gem_create_object() and
> returns a GEM handle to userspace, while
> DRM_IOCTL_QDA_GEM_MMAP_OFFSET returns a valid mmap offset for a
> given GEM handle using drm_gem_create_mmap_offset() and the
> vma_node in the GEM object.
> 
> The QDA driver is updated to advertise DRIVER_GEM in its
> driver_features, and the new IOCTLs are wired through the QDA
> GEM and memory-manager backend. These IOCTLs allow userspace to
> allocate buffers and map them into its address space as a first
> step toward full compute buffer management and integration with
> DSP workloads.
> 
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  drivers/accel/qda/qda_drv.c   |  5 ++++-
>  drivers/accel/qda/qda_gem.h   | 30 ++++++++++++++++++++++++++++++
>  drivers/accel/qda/qda_ioctl.c | 35 +++++++++++++++++++++++++++++++++++
>  include/uapi/drm/qda_accel.h  | 36 ++++++++++++++++++++++++++++++++++++
>  4 files changed, 105 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
> index 19798359b14e..0dd0e2bb2c0f 100644
> --- a/drivers/accel/qda/qda_drv.c
> +++ b/drivers/accel/qda/qda_drv.c
> @@ -12,6 +12,7 @@
>  #include <drm/qda_accel.h>
>  
>  #include "qda_drv.h"
> +#include "qda_gem.h"
>  #include "qda_ioctl.h"
>  #include "qda_rpmsg.h"
>  
> @@ -154,10 +155,12 @@ DEFINE_DRM_ACCEL_FOPS(qda_accel_fops);
>  
>  static const struct drm_ioctl_desc qda_ioctls[] = {
>  	DRM_IOCTL_DEF_DRV(QDA_QUERY, qda_ioctl_query, 0),
> +	DRM_IOCTL_DEF_DRV(QDA_GEM_CREATE, qda_ioctl_gem_create, 0),
> +	DRM_IOCTL_DEF_DRV(QDA_GEM_MMAP_OFFSET, qda_ioctl_gem_mmap_offset, 0),
>  };
>  
>  static struct drm_driver qda_drm_driver = {
> -	.driver_features = DRIVER_COMPUTE_ACCEL,
> +	.driver_features = DRIVER_GEM | DRIVER_COMPUTE_ACCEL,
>  	.fops			= &qda_accel_fops,
>  	.open			= qda_open,
>  	.postclose		= qda_postclose,
> diff --git a/drivers/accel/qda/qda_gem.h b/drivers/accel/qda/qda_gem.h
> index caae9cda5363..cbd5d0a58fa4 100644
> --- a/drivers/accel/qda/qda_gem.h
> +++ b/drivers/accel/qda/qda_gem.h
> @@ -47,6 +47,36 @@ struct drm_gem_object *qda_gem_create_object(struct drm_device *drm_dev,
>  void qda_gem_free_object(struct drm_gem_object *gem_obj);
>  int qda_gem_mmap_obj(struct drm_gem_object *gem_obj, struct vm_area_struct *vma);
>  
> +/*
> + * GEM IOCTL handlers
> + */
> +
> +/**
> + * qda_ioctl_gem_create - Create a GEM buffer object
> + * @dev: DRM device structure
> + * @data: User-space data containing buffer creation parameters
> + * @file_priv: DRM file private data
> + *
> + * This IOCTL handler creates a new GEM buffer object with the specified
> + * size and returns a handle to the created buffer.
> + *
> + * Return: 0 on success, negative error code on failure
> + */
> +int qda_ioctl_gem_create(struct drm_device *dev, void *data, struct drm_file *file_priv);
> +
> +/**
> + * qda_ioctl_gem_mmap_offset - Get mmap offset for a GEM buffer object
> + * @dev: DRM device structure
> + * @data: User-space data containing buffer handle and offset result
> + * @file_priv: DRM file private data
> + *
> + * This IOCTL handler retrieves the mmap offset for a GEM buffer object,
> + * which can be used to map the buffer into user-space memory.
> + *
> + * Return: 0 on success, negative error code on failure
> + */
> +int qda_ioctl_gem_mmap_offset(struct drm_device *dev, void *data, struct drm_file *file_priv);
> +
>  /*
>   * Helper functions for GEM object allocation and cleanup
>   * These are used internally and by the PRIME import code
> diff --git a/drivers/accel/qda/qda_ioctl.c b/drivers/accel/qda/qda_ioctl.c
> index 9fa73ec2dfce..ef3c9c691cb7 100644
> --- a/drivers/accel/qda/qda_ioctl.c
> +++ b/drivers/accel/qda/qda_ioctl.c
> @@ -43,3 +43,38 @@ int qda_ioctl_query(struct drm_device *dev, void *data, struct drm_file *file_pr
>  
>  	return 0;
>  }
> +
> +int qda_ioctl_gem_create(struct drm_device *dev, void *data, struct drm_file *file_priv)
> +{
> +	struct drm_qda_gem_create *args = data;
> +	struct drm_gem_object *gem_obj;
> +	struct qda_drm_priv *drm_priv;
> +
> +	drm_priv = get_drm_priv_from_device(dev);
> +	if (!drm_priv || !drm_priv->iommu_mgr)
> +		return -EINVAL;
> +
> +	gem_obj = qda_gem_create_object(dev, drm_priv->iommu_mgr, args->size, file_priv);
> +	if (IS_ERR(gem_obj))
> +		return PTR_ERR(gem_obj);
> +
> +	return qda_gem_create_handle(file_priv, gem_obj, &args->handle);
> +}
> +
> +int qda_ioctl_gem_mmap_offset(struct drm_device *dev, void *data, struct drm_file *file_priv)
> +{
> +	struct drm_qda_gem_mmap_offset *args = data;
> +	struct drm_gem_object *gem_obj;
> +	int ret;
> +
> +	gem_obj = qda_gem_lookup_object(file_priv, args->handle);
> +	if (IS_ERR(gem_obj))
> +		return PTR_ERR(gem_obj);
> +
> +	ret = drm_gem_create_mmap_offset(gem_obj);
> +	if (ret == 0)
> +		args->offset = drm_vma_node_offset_addr(&gem_obj->vma_node);
> +
> +	drm_gem_object_put(gem_obj);
> +	return ret;
> +}
> diff --git a/include/uapi/drm/qda_accel.h b/include/uapi/drm/qda_accel.h
> index 0aad791c4832..ed24a7f5637e 100644
> --- a/include/uapi/drm/qda_accel.h
> +++ b/include/uapi/drm/qda_accel.h
> @@ -19,6 +19,8 @@ extern "C" {
>   * They are used with DRM_COMMAND_BASE to create the full IOCTL numbers.
>   */
>  #define DRM_QDA_QUERY	0x00
> +#define DRM_QDA_GEM_CREATE		0x01
> +#define DRM_QDA_GEM_MMAP_OFFSET	0x02
>  /*
>   * QDA IOCTL definitions
>   *
> @@ -27,6 +29,10 @@ extern "C" {
>   * data structure and direction (read/write) for each IOCTL.
>   */
>  #define DRM_IOCTL_QDA_QUERY	DRM_IOR(DRM_COMMAND_BASE + DRM_QDA_QUERY, struct drm_qda_query)
> +#define DRM_IOCTL_QDA_GEM_CREATE	DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_GEM_CREATE, \
> +						 struct drm_qda_gem_create)
> +#define DRM_IOCTL_QDA_GEM_MMAP_OFFSET	DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_GEM_MMAP_OFFSET, \
> +						 struct drm_qda_gem_mmap_offset)
>  
>  /**
>   * struct drm_qda_query - Device information query structure
> @@ -40,6 +46,36 @@ struct drm_qda_query {
>  	__u8 dsp_name[16];
>  };
>  
> +/**
> + * struct drm_qda_gem_create - GEM buffer object creation parameters
> + * @size: Size of the GEM object to create in bytes (input)
> + * @handle: Allocated GEM handle (output)
> + *
> + * This structure is used with DRM_IOCTL_QDA_GEM_CREATE to allocate
> + * a new GEM buffer object.
> + */
> +struct drm_qda_gem_create {
> +	__u32 handle;
> +	__u32 pad;
> +	__u64 size;

If you put size before handle, you would not need padding.

> +};
> +
> +/**
> + * struct drm_qda_gem_mmap_offset - GEM object mmap offset query
> + * @handle: GEM handle (input)
> + * @pad: Padding for 64-bit alignment
> + * @offset: mmap offset for the GEM object (output)
> + *
> + * This structure is used with DRM_IOCTL_QDA_GEM_MMAP_OFFSET to retrieve
> + * the mmap offset that can be used with mmap() to map the GEM object into
> + * user space.
> + */
> +struct drm_qda_gem_mmap_offset {
> +	__u32 handle;
> +	__u32 pad;
> +	__u64 offset;

I'm really not a fan of the pad field in the middle of the structure.

> +};
> +
>  #if defined(__cplusplus)
>  }
>  #endif
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
