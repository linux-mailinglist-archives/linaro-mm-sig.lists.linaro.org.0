Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIOMFOfEDWql3AUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:27:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BE22858F9CA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:27:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D334940996
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 14:27:49 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 647B140976
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:27:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=IJVdwe0E;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=ZrRQb7Ht;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64KCebPp317554
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:27:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EFchA/PJgMyqdqvbr5p+Cpu2
	tYJVf4uyCXjeVVObaow=; b=IJVdwe0E9ak1iNh8XXD9rrzKn/RUEyEFg+TihlY6
	0x0kfwSksu6HayCdXDFAChikwMgdL3e8wUM0Atzfurz76tMCVidK95iSWV6cIqnG
	6F/bwCjvcC9GKTkjGx6iT/jnpaBOnkX3OR+yjFiER1R9nnaDOOYPHV+Eo4FnKRCM
	4aks3xgT098xaEVWR9hTv8+pp3Xm1POqGlIIQ8IF58ELY+HjaVV5iwCdQpuDUxuO
	1k5mZhCdgWi22xllqgMo/UolX+X0od3iXAWDRogiJhUHqi8AKuFPBQCQOYsVH9aS
	7Bd83i0RH9+7HtQU/S3XzCkBxlHhTRRDVUUN3Nc8CUD3nQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9d5qrd61-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:27:38 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-575c3a362f4so10880041e0c.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 07:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779287258; x=1779892058; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EFchA/PJgMyqdqvbr5p+Cpu2tYJVf4uyCXjeVVObaow=;
        b=ZrRQb7Htc3b7W79fq0uD8XN40SVYwhyRz5BMSmMzj8o8hcUvhFvdhxdAqsVmjqvDkO
         NNkQKnOECSYveyK0alDta20D3HV/vn20CiVqCADEmEJome9D7n3Ai9JNI47Gv61PKGeM
         PLPvGvvCCV7FDzK5mWYDmZdFPrY3fgqaTEmg9s5WO0oLqYndFnTKEGvRmT0WRRaR8cD6
         GVJQWtqllSFXNbL3Rh+xo+78D2aQuJicMW0Vwqw7ngaAjpCFxrn9841O4N1a4ZtnFIBl
         WIW6KZxqwq/Hh8ah48yYhDOysUg6vNmLJVGIpLtdQlO3K8zxSQ2tvHHcPO+0ZWZqFbs7
         2DKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779287258; x=1779892058;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EFchA/PJgMyqdqvbr5p+Cpu2tYJVf4uyCXjeVVObaow=;
        b=DFaxgJyTVbc1ovYf25eJC8sTH+E4dx7zbMrJcQLWmBU+noz09gZpN+5qFMOE4nZtwx
         R3qsEYVCrvQmy7s8b+MA6F1wDUwIkGucgewjp3gN0nd/GS4xR31+c32ujV+FYkoXMv+V
         nG/Z2RaAiQV5L/ou6J+MngeJmRx1jCg+OaX/r5jiHv1gA8NtD1c/xr8WPbJ0ijxVbn8k
         Li0/jWmOmjUp296C90zdV4vCqFRPSoC7RncpAPqfzExR989PvHbva5DvgWffZObBn4UX
         m9LXNuunUt/In4DFqiD98zoUhvyhaUwMkKVk+XvephF1bWEGSOVUwBlvIRAIM8fY4UB/
         TdkQ==
X-Forwarded-Encrypted: i=1; AFNElJ+T3UiGKnHJaCpKTnewSQ2XgdOsdl4YZ2l0bPC6fGWPYk1D7TBYyTyLlkMzFPW/J5nxLg83Io5eRmzEVdZ+@lists.linaro.org
X-Gm-Message-State: AOJu0YzMphWw79MtNVNKMEi7gm6XGq8k5NueyCBv/wjYMo9z/3YQ/zl4
	hnbJS1L7hX8r1/8pxiMFQ2cYiuGuFQlj0Fu5JjBhbVVWwAsZVNbv/SZnaSCCsXPz5zsvEN5KUUM
	QPpDAuzYuVyz26cVCMJVSZYjB1wLFMbQv2ikELoUoPvf1kPth5+BS4dwFm3MGuwO4ch32jg==
X-Gm-Gg: Acq92OHaPPTRq7bUEuDyfszIG+n8eaiWSdIGQvatcd9yLnkhS9n7+kfTBUyOXmqY4Jr
	W9bSsAdcx+hYNHMUdhVKYt+oWrwsJ8GOAB7XQ+tsaf2u1JURJRL9m6lprpnpawP4XAAQsxNIPz6
	CY5kZsDlQsiDLLmqspXdBBuwGTGd9SobgHsIu37Md3CpLh2OY8JJlyhXu0PwaQxJtRK9pjCGwPt
	Qvbg7/trkGqLidqFQBDa2XvaRjp8Bm89rMTN01AHYyf3AfhZ9yNqQnVg88+5g3yQqkJd0dqvQiL
	LOslutVFJBHeuWGg8MCFBfz5EQrF2qVuKsxagwqCbGFaD3xcgjBeUXPhrwrw9Wrajeji4J3h5xe
	3R9bJ9PBIfRtlhph0JOoxklXrNlo54D0+gtDAX4l0Eblak7KmvrUdJCl1HdVTtS1R/O31BySBAL
	eqJXQfFgvedv6w0xo/YNjLF9oaJCRl5TZXcPEqDypy+reUPA==
X-Received: by 2002:a05:6122:4b8c:b0:56c:ca03:b668 with SMTP id 71dfb90a1353d-5760bfb8ca9mr14235207e0c.3.1779287257984;
        Wed, 20 May 2026 07:27:37 -0700 (PDT)
X-Received: by 2002:a05:6122:4b8c:b0:56c:ca03:b668 with SMTP id 71dfb90a1353d-5760bfb8ca9mr14235127e0c.3.1779287257396;
        Wed, 20 May 2026 07:27:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a9164bc39fsm4991506e87.49.2026.05.20.07.27.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 07:27:36 -0700 (PDT)
Date: Wed, 20 May 2026 17:27:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: ekansh.gupta@oss.qualcomm.com
Message-ID: <a6n2qquynwzlquzqmnmjmkg6vkrldj42muuejwzln5wna2qmhi@ki2slzuyt5qw>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-7-b2d984c297f8@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260519-qda-series-v1-7-b2d984c297f8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIwMDE0MSBTYWx0ZWRfX0nCNnoDudiGo
 XLvWx4ZrJdkRIinkyGSJt2usCMRqbsSFufrF2QfqZfmUZ8+yfnh/I7LJ86R/H1Wk44IibqRU9xL
 dMMEACje52Jfirq9U16zF1b6NmmdkRphal8Qpsy9nCG7jt9Ox4HSKNgKBjr/aSSxHghtz4W0pdC
 9TQNodGuKnu05mvobnMDhVgrc4KpnrlgmqS06zt0V+4JJXYfE2gW2JmBsUgfAQLgC1ULL4InhEX
 V07+/7TzpZHrRatmRTFQBs0r3WQHyS4ahTaaojOfYD5bgyoqAeU95btm/z4m4lCOw2KelbW6Voa
 Ps/LP0ZSP9mfLCHFJ3I4SPTvVK0vexDed0pVqxb3ESribsPLCgKVXIQBi0eQPaecZC/fVQyk/J4
 knGUClu1+ik8rFAZFlC/fFYQntAtc3sdhhlH0+iy+daGPgkLWXHI69dcAdwIIsnhxodapdplHea
 2EhpJoxqzETfxFPeDxQ==
X-Authority-Analysis: v=2.4 cv=QshuG1yd c=1 sm=1 tr=0 ts=6a0dc4da cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=o1-M_76Tnwwude6v8VIA:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-GUID: QQTkpPkdPo3lhYYLYaKRj6R_Sauc7Rk8
X-Proofpoint-ORIG-GUID: QQTkpPkdPo3lhYYLYaKRj6R_Sauc7Rk8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 clxscore=1015 phishscore=0 spamscore=0
 suspectscore=0 bulkscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605200141
X-Spamd-Bar: ---
Message-ID-Hash: UFWQJLTF5ZQ5HWJ3ZEN2Z5ZHBHD2TORY
X-Message-ID-Hash: UFWQJLTF5ZQ5HWJ3ZEN2Z5ZHBHD2TORY
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 07/15] accel/qda: Add memory manager for CB devices
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UFWQJLTF5ZQ5HWJ3ZEN2Z5ZHBHD2TORY/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.186];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: BE22858F9CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 11:45:57AM +0530, Ekansh Gupta via B4 Relay wrote:
> From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> 
> Introduce the QDA memory manager (qda_memory_manager) to track and
> manage the IOMMU devices that back each compute context bank (CB).
> 
> Each CB device registered on the qda-compute-cb bus is assigned a
> unique ID via an XArray and wrapped in a qda_iommu_device descriptor
> that records the device pointer and its stream ID. This registry
> allows the driver to look up the correct IOMMU domain for a given
> session when mapping DSP buffers.
> 
> The memory manager is initialised in qda_init_device() before CB
> devices are populated and torn down in qda_deinit_device() after they
> are destroyed, ensuring no dangling references remain in the XArray.
> 
> qda_cb.c is extended with qda_cb_setup_device(), which is called
> immediately after a CB device is registered on the bus. It allocates
> a qda_iommu_device, registers it with the memory manager, and stores
> it as the CB device's driver data so that qda_destroy_cb_device() can
> retrieve and unregister it during teardown.
> 
> Assisted-by: Claude:claude-4-6-sonnet
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> ---
>  drivers/accel/qda/Makefile             |   1 +
>  drivers/accel/qda/qda_cb.c             |  47 ++++++++++++++
>  drivers/accel/qda/qda_drv.c            |  34 ++++++++++
>  drivers/accel/qda/qda_drv.h            |   5 ++
>  drivers/accel/qda/qda_memory_manager.c | 111 +++++++++++++++++++++++++++++++++
>  drivers/accel/qda/qda_memory_manager.h |  49 +++++++++++++++
>  drivers/accel/qda/qda_rpmsg.c          |   7 +++
>  7 files changed, 254 insertions(+)
> 
> @@ -61,14 +62,20 @@ static int qda_rpmsg_probe(struct rpmsg_device *rpdev)
>  	}
>  	qdev->dsp_name = label;
>  
> +	ret = qda_init_device(qdev);
> +	if (ret)
> +		return ret;
> +
>  	ret = qda_cb_populate(qdev, rpdev->dev.of_node);
>  	if (ret) {
>  		dev_err(qdev->dev, "Failed to populate child devices: %d\n", ret);
> +		qda_deinit_device(qdev);
>  		return ret;
>  	}
>  
>  	ret = qda_register_device(qdev);
>  	if (ret) {
> +		qda_deinit_device(qdev);
>  		qda_cb_unpopulate(qdev);

No, this is not how you unwind in the error case in the kernel. Follow
the established patterns.

>  		return ret;
>  	}
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
