Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBxlAxAU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:36 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A203C41215C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:53:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BDB9A4504A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:34 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id F34F83F827
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:50:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="T/oPrwQF";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="D7Xt/Y71";
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NH4cpA910641
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:50:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TLrQewx1LWqE8yixuzB68j48
	P2XGnr1QqREmwV+PFsM=; b=T/oPrwQFOqKER80CI6r0E2nLqTAVQ/gXyaoUHDvd
	DPxVH12jR7atAn68LTSq15qRt7dkY6jRAzq/rrxed5/Gcw1sK+TtmRO/vnj2AO1Y
	xoqaS0/yoNBwrHUjfwIrTqNFXrjhrkyFpWGWg7WYaNsb9T5fioDexRWDtIxzXTqF
	EZ+rppWzrS+K9kNb00k5qQqGnYw8f0BIaSnmaqcdx6cnjRdHQFf88BgtXJHpx9e3
	LXY678B3Ug6dvUpwDSxZ7fwyAzZJpjvHF1syPYrjQ9ObhDMF9+2eWlFBekhhgQOp
	5NwSYgb/iJW0wOQ82ywZrqWpbAC5ezx2HFMZA9+728XKTQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtyj8xc1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:50:41 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3a129cd2so5966496385a.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 14:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771887041; x=1772491841; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TLrQewx1LWqE8yixuzB68j48P2XGnr1QqREmwV+PFsM=;
        b=D7Xt/Y71OY9WvE/A6iYLIIGpLJBcePHNNT4kQ2ZgM6pYf/zOwj5SAjxMQXAMv1Gs/j
         Mqd7r3j+R4/ii4/7qnFUczM6WTNl1ushWY6W1k6Sh1Q7DF25PHkRxlCHgL9h43P4At0r
         6+9/nSWHEdFuRoZSrVX2RF/ucc75oq9qFNk1zl7T/U5Q9qVo++BIUNK56P4g8Z/B7p0C
         wnRp6efcYQiQPzmSF3FbFPw5njO1/NuwOAacShJPXjXEtD7QxlhhJjKx4fv5fIdTNNCL
         sBNZAzwAriS5S0fgxhfXkFuWrKElkiD6/6oF/xHT2dsBUJxv9KGs82wJ53d2UIJaV8S4
         GSxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771887041; x=1772491841;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TLrQewx1LWqE8yixuzB68j48P2XGnr1QqREmwV+PFsM=;
        b=FaivyVzBqqizQlG8VkFSqhsXmXqHKi+q7RdofNy1skNpNs0RKHMCYffxD3u3r5F8TO
         K73ta6rs2Qy7clbKdQHknQHg//NCbCJMw9q1CmZGx3oknuxiJBzAj7baki8riy6gDFS4
         OCBuOZb0Doyy9idyuAZtRfXpzJndB89v9K2xSvK8io2Zfb5XJ4hdRQFnG8cSs1Dfu/al
         G1bb4Iqp25f5+1OAXNN3GrTq0YJi9uUlGUhEou2qatWLwx1pkn3VW1RZjsv8wVRgYeUB
         sLFQ6bELIDRgzsOu0sCQAeRsQeqWJIe7T54cvM0zczkNZmEGV8d6p0USV3wWKfvZf+z8
         ZeIA==
X-Forwarded-Encrypted: i=1; AJvYcCUJOgeSXNVS6iu7OmQg5ulgbEPDSagQCoHKvGdyTDgLPMq0Fvs2h2icp987/aAl/i4ratTy8IG5Wjh2Y7Cb@lists.linaro.org
X-Gm-Message-State: AOJu0YzTvZArdZ4FKzEQ9mYOQJ3Au49eZKtFRRD/LZqhnBt9fOy+B57E
	gXVsrYcni2UZoT09kHZ0cm7kqv/XHU53lMphOkCAaWRW/DmDUll/La0g1GhQxfXi5BdWNsN8hKt
	8jwDWoHy5hHLdCsUY2/93BsH5g5Xo9xscwb1v40hTQ4xNo0BHz/dM8r+MSyzuuJ1tp5fERA==
X-Gm-Gg: AZuq6aJhiYfOTFC4JhN74j0Wv0ugPRhCyLvsNi5yJBdhiTWTruEQ+sFx8Mux0cw7aC7
	2P2RecHLpG3VeDKcXYTtHqjoxNYbRGCZPT5cZ7nQZ+gYtgnhZvjpoYXJrv2eFEi5dDgqzz7S5ow
	euxvXlDL3Kc52YgpemRh9MyVqXFim7cZX15m65DS0Ig8v4Mf7IrjHajDdRFk/S08EWr2tVQblln
	e9p++Vd2LDI2N8I03XU9SUPwyTrpoEl/kgTYLUbRWN44kw7YpKA2lC1E1oLRclBQYYbojLjUfo7
	QDRYX9asSLymh/IvKg/62DEq/v330nqUwBexkm2P/RMXyBL8WP0Uq2e9vrH+tqAbLo3ZwU1MYuh
	KNTG1VsXMdMTP5Cil6VosNnKpwziU4X4z4fErXrfI0gxxpFYdvmDdGfmd11uzfUUpPZfIaMUS42
	Bx3mAke4e7vEsHr/T/nxewcQ3/6MZp+6O6rqE=
X-Received: by 2002:a05:620a:4506:b0:8cb:df8:e86a with SMTP id af79cd13be357-8cb7bfc8d11mr1987075885a.28.1771887040687;
        Mon, 23 Feb 2026 14:50:40 -0800 (PST)
X-Received: by 2002:a05:620a:4506:b0:8cb:df8:e86a with SMTP id af79cd13be357-8cb7bfc8d11mr1987071185a.28.1771887040143;
        Mon, 23 Feb 2026 14:50:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb45a64sm1809193e87.67.2026.02.23.14.50.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 14:50:39 -0800 (PST)
Date: Tue, 24 Feb 2026 00:50:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <d7s4e7xzfqfbcf5o3grc6xqm74dzwpck6ge7hyrwewmyacpuez@lcd6nhzyjr55>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-6-fe46a9c1a046@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224-qda-firstpost-v1-6-fe46a9c1a046@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Jq/8bc4C c=1 sm=1 tr=0 ts=699cd9c1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=6noqdOoYruC88qHUYLQA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 3gDYvyd--FpmbcNh0NjH6b6s22irSGZz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE5OSBTYWx0ZWRfX6kIV/qXUHGUA
 e+r5wlfkbDiBqBEhKiSg+WTTksXeNa4xdf0z201tsXGFBZGD42YxWDI8Z5ID+sCUYnDmUtAJWFN
 SQ2mZnOhr1wiWh/r96ZDHJGbp1Ff4lq3hGJfInoYLUpDR2lCGE+o1JmxM0XYZDSq30cy08E7k2C
 T0tOGuxQWEr6VfFIEW5PopuN12WOa+uV4QVhrkSASUCL5D7YsCh+DTAgdjjk7UxF1N0q3uuDKRH
 9zkZw/VFDzw7zom5oMsZpB6uGYjY5Y348fVlQMBIXuGVPb6QfhleiSoSQ7CxJsXYavg4A/rb4YD
 jy00rdCUfM4SxG1Y5xlQh1iz4NsZRtvC3KjdbLvnjJ/MfQ/BzkAfXhQJ+/7/TbmQkjO/crRtdGi
 JYFeRvyddqsm7Gs6Z96B6Q4lW/tlrtrSt57Ksx8f+jQ81FcED4SxlDZ/0trIoMRmMSjGliEeGup
 G6zomMeH7F4dp5CB/EA==
X-Proofpoint-GUID: 3gDYvyd--FpmbcNh0NjH6b6s22irSGZz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_05,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 adultscore=0 phishscore=0 suspectscore=0 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230199
X-Spamd-Bar: -----
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ADIJKLP2LTEVYB2UIMJLWBSGNCC32PEG
X-Message-ID-Hash: ADIJKLP2LTEVYB2UIMJLWBSGNCC32PEG
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:56 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 06/18] accel/qda: Add memory manager for CB devices
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ADIJKLP2LTEVYB2UIMJLWBSGNCC32PEG/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email,linaro.org:email]
X-Rspamd-Queue-Id: A203C41215C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Feb 24, 2026 at 12:39:00AM +0530, Ekansh Gupta wrote:
> Introduce a per-device memory manager for the QDA driver that tracks
> IOMMU-capable compute context-bank (CB) devices. Each CB device is
> represented by a qda_iommu_device and registered with a central
> qda_memory_manager instance owned by qda_dev.
> 
> The memory manager maintains an xarray of devices and assigns a
> unique ID to each CB. It also provides basic lifetime management

Sounds like IDR.

> and a workqueue for deferred device removal. qda_cb_setup_device()

What is deferred device removal? Why do you need it?

> now allocates a qda_iommu_device for each CB and registers it with
> the memory manager after DMA configuration succeeds.
> 
> qda_init_device() is extended to allocate and initialize the memory
> manager, while qda_deinit_device() will tear it down in later
> patches. This prepares the QDA driver for fine-grained memory and
> IOMMU domain management tied to individual CB devices.
> 
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  drivers/accel/qda/Makefile             |   1 +
>  drivers/accel/qda/qda_cb.c             |  32 +++++++
>  drivers/accel/qda/qda_drv.c            |  46 ++++++++++
>  drivers/accel/qda/qda_drv.h            |   3 +
>  drivers/accel/qda/qda_memory_manager.c | 152 +++++++++++++++++++++++++++++++++
>  drivers/accel/qda/qda_memory_manager.h | 101 ++++++++++++++++++++++
>  6 files changed, 335 insertions(+)
> 

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
